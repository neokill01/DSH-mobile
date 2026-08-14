// 本地演示模式仓库：AsyncStorage 持久化 + 内置演示词书 + FSRS 全流程。
// 未配置 Supabase 时由 repositoryFactory 选用本实现，开箱即用。

import AsyncStorage from "@react-native-async-storage/async-storage";
import { ACHIEVEMENTS } from "@/constants/achievements";
import { DEMO_BOOKS, DEMO_BOOK_WORDS } from "@/constants/demoBooks";
import {
  CardState,
  type DailyCount,
  type DueCard,
  type ReviewLog,
  type Stats,
  type StoredCard,
  type Word,
  type WordBook,
} from "@/types/database";
import { schedule } from "./fsrs";
import type { AchievementStatus, WordRepository } from "./repository";
import { calcStreak, dailyCountsFromLogs, firstLogDates, dateStr } from "./statsUtil";

const KEY_CURRENT_BOOK = "@wordnest/currentBook";
const cardsKey = (bookId: string) => `@wordnest/cards:${bookId}`;
const KEY_LOGS = "@wordnest/logs";

async function readJson<T>(key: string, fallback: T): Promise<T> {
  try {
    const raw = await AsyncStorage.getItem(key);
    return raw ? (JSON.parse(raw) as T) : fallback;
  } catch {
    return fallback;
  }
}

async function writeJson(key: string, value: unknown): Promise<void> {
  await AsyncStorage.setItem(key, JSON.stringify(value));
}

async function loadCards(bookId: string): Promise<Record<string, StoredCard>> {
  return readJson(cardsKey(bookId), {});
}

async function loadLogs(): Promise<ReviewLog[]> {
  return readJson(KEY_LOGS, []);
}

class LocalRepository implements WordRepository {
  readonly mode = "local" as const;

  async getBooks(): Promise<WordBook[]> {
    return DEMO_BOOKS;
  }

  async getCurrentBook(): Promise<WordBook | null> {
    const id = await AsyncStorage.getItem(KEY_CURRENT_BOOK);
    return DEMO_BOOKS.find((b) => b.id === id) ?? DEMO_BOOKS[0];
  }

  async setCurrentBook(bookId: string): Promise<void> {
    await AsyncStorage.setItem(KEY_CURRENT_BOOK, bookId);
  }

  private wordsOf(bookId: string): Word[] {
    return DEMO_BOOK_WORDS[bookId] ?? [];
  }

  async getDueCards(limit: number): Promise<DueCard[]> {
    const book = (await this.getCurrentBook())!;
    const cards = await loadCards(book.id);
    const byId = new Map(this.wordsOf(book.id).map((w) => [w.id, w]));
    const now = Date.now();
    return Object.values(cards)
      .filter((c) => new Date(c.due).getTime() <= now)
      .sort((a, b) => a.due.localeCompare(b.due))
      .map((c) => ({ word: byId.get(c.wordId), card: c }))
      .filter((x): x is DueCard => Boolean(x.word))
      .slice(0, limit);
  }

  async getNewWords(limit: number): Promise<Word[]> {
    const book = (await this.getCurrentBook())!;
    const cards = await loadCards(book.id);
    return this.wordsOf(book.id)
      .filter((w) => !cards[w.id])
      .slice(0, limit);
  }

  async submitRating(input: {
    word: Word;
    bookId: string;
    card: StoredCard | null;
    rating: number;
  }): Promise<StoredCard> {
    const now = new Date();
    const { card: next, log } = schedule(input.card, input.rating, now, input.word.id, input.bookId);
    const cards = await loadCards(input.bookId);
    cards[input.word.id] = next;
    await writeJson(cardsKey(input.bookId), cards);
    const logs = await loadLogs();
    logs.push(log);
    await writeJson(KEY_LOGS, logs);
    return next;
  }

  async getStats(): Promise<Stats> {
    const book = (await this.getCurrentBook())!;
    const cards = Object.values(await loadCards(book.id));
    const logs = await loadLogs();
    const today = dateStr(new Date());
    const first = firstLogDates(logs);
    const todayLogs = logs.filter((l) => dateStr(new Date(l.clientTs)) === today);
    const todayNew = todayLogs.filter((l) => first.get(l.wordId) === today).length;
    return {
      totalLearned: first.size,
      mastered: cards.filter((c) => c.state === CardState.Review).length,
      streak: calcStreak(logs),
      todayNew,
      todayReview: todayLogs.length - todayNew,
      dueCount: cards.filter((c) => new Date(c.due).getTime() <= Date.now()).length,
      newCount: this.wordsOf(book.id).length - first.size,
    };
  }

  async getDailyCounts(days: number): Promise<DailyCount[]> {
    return dailyCountsFromLogs(await loadLogs(), days);
  }

  async getAchievements(): Promise<AchievementStatus[]> {
    const stats = await this.getStats();
    const logs = await loadLogs();
    const rules: Record<string, boolean> = {
      first_day: logs.length > 0,
      streak_3: stats.streak >= 3,
      streak_7: stats.streak >= 7,
      streak_30: stats.streak >= 30,
      words_100: stats.totalLearned >= 100,
      words_500: stats.totalLearned >= 500,
      master_50: stats.mastered >= 50,
    };
    return ACHIEVEMENTS.map((a) => ({ code: a.code, unlocked: Boolean(rules[a.code]) }));
  }
}

export const localRepository = new LocalRepository();
