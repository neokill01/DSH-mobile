// 云端模式仓库：直连 Supabase 表。
// 新增功能（测评、体验课、错词池、AI等）暂时委托给本地仓库实现，
// 后续可根据 Supabase Schema 扩展为真正的云端实现。

import { ACHIEVEMENTS } from "@/constants/achievements";
import {
  CardState,
  type AssessmentQuestion,
  type AssessmentResult,
  type BandLevel,
  type Course,
  type CourseLevel,
  type CourseUnit,
  type DailyCount,
  type Device,
  type DueCard,
  type ExperienceCourse,
  type LearningOverview,
  type LearningReport,
  type ReviewLog,
  type Stats,
  type StoredCard,
  type VocabularyTrend,
  type Word,
  type WordBook,
  type WordLevel,
  type WrongWord,
} from "@/types/database";
import { schedule } from "./fsrs";
import { localRepository } from "./localRepository";
import type { AchievementStatus, WordRepository } from "./repository";
import { calcStreak, dailyCountsFromLogs, dateStr, firstLogDates } from "./statsUtil";
import { getSupabase } from "./supabase";

interface UserWordRow {
  word_id: string;
  book_id: string;
  state: number;
  due: string;
  learning_steps: number;
  stability: number;
  difficulty: number;
  elapsed_days: number;
  scheduled_days: number;
  reps: number;
  lapses: number;
  last_review: string | null;
  updated_at: string;
  words: {
    id: string;
    spelling: string;
    phonetic: string | null;
    definitions: unknown;
    level: string | null;
  } | null;
}

function rowToCard(row: UserWordRow): StoredCard {
  return {
    wordId: row.word_id,
    bookId: row.book_id,
    state: row.state as StoredCard["state"],
    due: row.due,
    learningSteps: row.learning_steps,
    stability: row.stability,
    difficulty: row.difficulty,
    elapsedDays: row.elapsed_days,
    scheduledDays: row.scheduled_days,
    reps: row.reps,
    lapses: row.lapses,
    lastReview: row.last_review,
    updatedAt: row.updated_at,
  };
}

function wordFromRow(row: UserWordRow["words"]): Word | null {
  if (!row) return null;
  return {
    id: row.id,
    spelling: row.spelling,
    phonetic: row.phonetic ?? "",
    definitions: (row.definitions as Word["definitions"]) ?? [],
    level: (row.level as Word["level"]) ?? "CUSTOM",
  };
}

class SupabaseRepository implements WordRepository {
  readonly mode = "supabase" as const;

  private async uid(): Promise<string> {
    const {
      data: { user },
    } = await getSupabase().auth.getUser();
    if (!user) throw new Error("未登录");
    return user.id;
  }

  // ============================================
  // 原有接口（云端实现）
  // ============================================
  async getBooks(): Promise<WordBook[]> {
    const uid = await this.uid();
    const { data, error } = await getSupabase()
      .from("word_books")
      .select("*")
      .or(`is_builtin.eq.true,owner_id.eq.${uid}`)
      .order("created_at");
    if (error) throw error;
    return (data ?? []).map((r) => ({
      id: r.id,
      title: r.title,
      description: r.description ?? "",
      level: r.level,
      isBuiltin: r.is_builtin,
      wordCount: r.word_count,
    }));
  }

  async getCurrentBook(): Promise<WordBook | null> {
    const books = await this.getBooks();
    if (books.length === 0) return null;
    const uid = await this.uid();
    const { data } = await getSupabase()
      .from("profiles")
      .select("preferred_book_id")
      .eq("id", uid)
      .maybeSingle();
    return books.find((b) => b.id === data?.preferred_book_id) ?? books[0];
  }

  async setCurrentBook(bookId: string): Promise<void> {
    const uid = await this.uid();
    const { error } = await getSupabase()
      .from("profiles")
      .update({ preferred_book_id: bookId, updated_at: new Date().toISOString() })
      .eq("id", uid);
    if (error) throw error;
  }

  async getDueCards(limit: number): Promise<DueCard[]> {
    const uid = await this.uid();
    const { data, error } = await getSupabase()
      .from("user_words")
      .select("*, words(*)")
      .eq("user_id", uid)
      .lte("due", new Date().toISOString())
      .order("due")
      .limit(limit);
    if (error) throw error;
    return (data ?? [])
      .map((r) => {
        const word = wordFromRow(r.words);
        return word ? { word, card: rowToCard(r) } : null;
      })
      .filter((x): x is DueCard => Boolean(x));
  }

  async getNewWords(limit: number): Promise<Word[]> {
    const uid = await this.uid();
    const book = await this.getCurrentBook();
    if (!book) return [];
    const { data: items, error: itemsErr } = await getSupabase()
      .from("word_book_items")
      .select("word_id")
      .eq("book_id", book.id);
    if (itemsErr) throw itemsErr;
    const { data: learned, error: learnedErr } = await getSupabase()
      .from("user_words")
      .select("word_id")
      .eq("user_id", uid)
      .eq("book_id", book.id);
    if (learnedErr) throw learnedErr;
    const learnedIds = new Set((learned ?? []).map((r) => r.word_id));
    const newIds = (items ?? []).map((r) => r.word_id).filter((id) => !learnedIds.has(id)).slice(0, limit);
    if (newIds.length === 0) return [];
    const { data: words, error } = await getSupabase()
      .from("words")
      .select("*")
      .in("id", newIds);
    if (error) throw error;
    return (words ?? []).map((r) => ({
      id: r.id,
      spelling: r.spelling,
      phonetic: r.phonetic ?? "",
      definitions: (r.definitions as Word["definitions"]) ?? [],
      level: (r.level as Word["level"]) ?? "CUSTOM",
    }));
  }

  async submitRating(input: {
    word: Word;
    bookId: string;
    card: StoredCard | null;
    rating: number;
  }): Promise<StoredCard> {
    const uid = await this.uid();
    const now = new Date();
    const { card: next, log } = schedule(input.card, input.rating, now, input.word.id, input.bookId);
    const { error: upsertErr } = await getSupabase()
      .from("user_words")
      .upsert(
        {
          user_id: uid,
          word_id: input.word.id,
          book_id: input.bookId,
          state: next.state,
          due: next.due,
          learning_steps: next.learningSteps,
          stability: next.stability,
          difficulty: next.difficulty,
          elapsed_days: next.elapsedDays,
          scheduled_days: next.scheduledDays,
          reps: next.reps,
          lapses: next.lapses,
          last_review: next.lastReview,
          updated_at: next.updatedAt,
        },
        { onConflict: "user_id,word_id,book_id" },
      );
    if (upsertErr) throw upsertErr;
    const { error: logErr } = await getSupabase().from("review_logs").insert({
      user_id: uid,
      word_id: input.word.id,
      book_id: input.bookId,
      rating: log.rating,
      reviewed_at: log.reviewedAt,
      interval_days: log.intervalDays,
      stability: log.stability,
      difficulty: log.difficulty,
      client_ts: log.clientTs,
    });
    if (logErr) throw logErr;

    // 如果答错，加入错词池
    if (input.rating <= 1) {
      await this.addToWrongPool(input.word.id);
    }

    return next;
  }

  private async fetchLogs(): Promise<ReviewLog[]> {
    const uid = await this.uid();
    const { data, error } = await getSupabase()
      .from("review_logs")
      .select("*")
      .eq("user_id", uid)
      .order("reviewed_at", { ascending: false })
      .limit(5000);
    if (error) throw error;
    return (data ?? []).map((r) => ({
      wordId: r.word_id,
      bookId: r.book_id,
      rating: r.rating,
      reviewedAt: r.reviewed_at,
      intervalDays: r.interval_days ?? 0,
      stability: r.stability ?? 0,
      difficulty: r.difficulty ?? 0,
      clientTs: r.client_ts ?? r.reviewed_at,
    }));
  }

  async getStats(): Promise<Stats> {
    const uid = await this.uid();
    const book = await this.getCurrentBook();
    const logs = await this.fetchLogs();
    const first = firstLogDates(logs);
    const today = dateStr(new Date());
    const todayLogs = logs.filter((l) => dateStr(new Date(l.clientTs)) === today);
    const todayNew = todayLogs.filter((l) => first.get(l.wordId) === today).length;

    let mastered = 0;
    let dueCount = 0;
    if (book) {
      const { data } = await getSupabase()
        .from("user_words")
        .select("state,due")
        .eq("user_id", uid)
        .eq("book_id", book.id);
      mastered = (data ?? []).filter((r) => r.state === CardState.Review).length;
      dueCount = (data ?? []).filter((r) => new Date(r.due).getTime() <= Date.now()).length;
    }
    return {
      totalLearned: first.size,
      mastered,
      streak: calcStreak(logs),
      todayNew,
      todayReview: todayLogs.length - todayNew,
      dueCount,
      newCount: book ? Math.max(0, book.wordCount - first.size) : 0,
    };
  }

  async getDailyCounts(days: number): Promise<DailyCount[]> {
    return dailyCountsFromLogs(await this.fetchLogs(), days);
  }

  async getAchievements(): Promise<AchievementStatus[]> {
    const stats = await this.getStats();
    const rules: Record<string, boolean> = {
      first_day: stats.totalLearned > 0,
      streak_3: stats.streak >= 3,
      streak_7: stats.streak >= 7,
      streak_30: stats.streak >= 30,
      words_100: stats.totalLearned >= 100,
      words_500: stats.totalLearned >= 500,
      master_50: stats.mastered >= 50,
    };
    return ACHIEVEMENTS.map((a) => ({ code: a.code, unlocked: Boolean(rules[a.code]) }));
  }

  // ============================================
  // 新增接口：暂时委托给本地仓库实现
  // TODO: 后续根据 Supabase Schema 扩展为真正的云端实现
  // ============================================
  async startAssessment(): Promise<string> {
    return localRepository.startAssessment();
  }

  async getAssessmentQuestion(assessmentId: string): Promise<AssessmentQuestion | null> {
    return localRepository.getAssessmentQuestion(assessmentId);
  }

  async submitAssessmentAnswer(
    assessmentId: string,
    questionId: string,
    selectedIndex: number,
  ): Promise<{ correct: boolean; isComplete: boolean }> {
    return localRepository.submitAssessmentAnswer(assessmentId, questionId, selectedIndex);
  }

  async getAssessmentResult(assessmentId: string): Promise<AssessmentResult | null> {
    return localRepository.getAssessmentResult(assessmentId);
  }

  async getLatestAssessmentResult(): Promise<AssessmentResult | null> {
    return localRepository.getLatestAssessmentResult();
  }

  async getExperienceCourse(): Promise<ExperienceCourse | null> {
    return localRepository.getExperienceCourse();
  }

  async startExperienceCourse(): Promise<ExperienceCourse> {
    return localRepository.startExperienceCourse();
  }

  async getExperienceDayWords(day: number): Promise<Word[]> {
    return localRepository.getExperienceDayWords(day);
  }

  async completeExperienceDay(day: number): Promise<void> {
    return localRepository.completeExperienceDay(day);
  }

  async getCourses(): Promise<Course[]> {
    return localRepository.getCourses();
  }

  async getCourseLevels(courseId: string): Promise<CourseLevel[]> {
    return localRepository.getCourseLevels(courseId);
  }

  async getLevelUnits(levelId: string): Promise<CourseUnit[]> {
    return localRepository.getLevelUnits(levelId);
  }

  async getUnitWords(unitId: string): Promise<{ newWords: Word[]; reviewWords: DueCard[] }> {
    return localRepository.getUnitWords(unitId);
  }

  async getDailyLearningTask(): Promise<{
    newWords: Word[];
    reviewWords: DueCard[];
    targetNewCount: number;
    targetReviewCount: number;
  }> {
    return localRepository.getDailyLearningTask();
  }

  async getWrongWords(status?: string): Promise<WrongWord[]> {
    return localRepository.getWrongWords(status);
  }

  async addToWrongPool(wordId: string): Promise<void> {
    return localRepository.addToWrongPool(wordId);
  }

  async updateWrongWordStatus(wrongWordId: string, status: string): Promise<void> {
    return localRepository.updateWrongWordStatus(wrongWordId, status);
  }

  async getWrongWordStats(): Promise<{
    total: number;
    newCount: number;
    learningCount: number;
    masteredCount: number;
  }> {
    return localRepository.getWrongWordStats();
  }

  async getAiAnalysis(wrongWordId: string): Promise<string | null> {
    return localRepository.getAiAnalysis(wrongWordId);
  }

  async generateAiArticle(wordIds: string[]): Promise<string> {
    return localRepository.generateAiArticle(wordIds);
  }

  async getDevices(): Promise<Device[]> {
    return localRepository.getDevices();
  }

  async removeDevice(deviceId: string): Promise<void> {
    return localRepository.removeDevice(deviceId);
  }

  async getLearningOverview(): Promise<LearningOverview> {
    return localRepository.getLearningOverview();
  }

  async getVocabularyTrend(days: number): Promise<VocabularyTrend[]> {
    return localRepository.getVocabularyTrend(days);
  }

  async generateLearningReport(): Promise<LearningReport> {
    return localRepository.generateLearningReport();
  }
}

export const supabaseRepository = new SupabaseRepository();
