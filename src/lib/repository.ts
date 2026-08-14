// 数据仓库抽象：业务代码只依赖此接口，
// 通过 getRepository() 按环境自动选择 本地演示模式 / 云端 Supabase 模式。

import type {
  DailyCount,
  DueCard,
  Stats,
  StoredCard,
  Word,
  WordBook,
} from "@/types/database";

export interface AchievementStatus {
  code: string;
  unlocked: boolean;
}

export interface WordRepository {
  readonly mode: "local" | "supabase";

  getBooks(): Promise<WordBook[]>;
  getCurrentBook(): Promise<WordBook | null>;
  setCurrentBook(bookId: string): Promise<void>;

  /** 到期待复习的卡片 */
  getDueCards(limit: number): Promise<DueCard[]>;
  /** 尚未开始学习的词（无卡片记录） */
  getNewWords(limit: number): Promise<Word[]>;
  /** 打分并推进 FSRS；card 为 null 表示新词 */
  submitRating(input: {
    word: Word;
    bookId: string;
    card: StoredCard | null;
    rating: number;
  }): Promise<StoredCard>;

  getStats(): Promise<Stats>;
  getDailyCounts(days: number): Promise<DailyCount[]>;
  getAchievements(): Promise<AchievementStatus[]>;
}

export { getRepository } from "./repositoryFactory";
