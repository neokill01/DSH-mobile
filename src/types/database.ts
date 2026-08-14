// 与 docs/PRD.md 第 4 节数据库 schema 对应的客户端类型。
// 本地演示模式与云端模式复用同一套类型，保证两层实现可互换。

export type WordLevel =
  | "CET4"
  | "CET6"
  | "KAOYAN"
  | "IELTS"
  | "TOEFL"
  | "GRE"
  | "CUSTOM";

export interface Definition {
  /** 词性缩写：n. / v. / adj. / adv. ... */
  pos: string;
  /** 中文释义 */
  meaning: string;
  /** 英文例句（可选） */
  example?: string;
  /** 例句翻译（可选） */
  translation?: string;
}

export interface Word {
  id: string;
  spelling: string;
  /** 音标，如 /əˈbɪləti/ */
  phonetic: string;
  definitions: Definition[];
  level: WordLevel;
}

export interface WordBook {
  id: string;
  title: string;
  description: string;
  level: WordLevel;
  isBuiltin: boolean;
  wordCount: number;
}

/** FSRS 卡片状态（与 user_words.state 对齐） */
export const CardState = {
  New: 0,
  Learning: 1,
  Review: 2,
  Relearning: 3,
} as const;
export type CardState = (typeof CardState)[keyof typeof CardState];

/** 持久化存储的 FSRS 卡片（字段与 user_words 表一一对应） */
export interface StoredCard {
  wordId: string;
  bookId: string;
  state: CardState;
  /** 下次到期时间（ISO 字符串） */
  due: string;
  /** Learning 阶段当前步骤索引（ts-fsrs learning_steps） */
  learningSteps: number;
  stability: number;
  difficulty: number;
  elapsedDays: number;
  scheduledDays: number;
  reps: number;
  lapses: number;
  lastReview: string | null;
  updatedAt: string;
}

/** 待复习条目：词条 + 卡片 */
export interface DueCard {
  word: Word;
  card: StoredCard;
}

/** 一次复习打分记录（对应 review_logs 表） */
export interface ReviewLog {
  id?: string;
  wordId: string;
  bookId: string;
  /** 0=忘记(Again) 1=模糊(Hard) 2=记得(Good) 3=轻松(Easy) */
  rating: number;
  reviewedAt: string;
  /** 本次排到的间隔（天） */
  intervalDays: number;
  stability: number;
  difficulty: number;
  /** 客户端时间（离线补传用） */
  clientTs: string;
}

export interface DailyCount {
  /** YYYY-MM-DD */
  date: string;
  newWords: number;
  reviews: number;
}

export interface Stats {
  /** 学过（至少复习过一次）的词数 */
  totalLearned: number;
  /** 已掌握（进入 Review 状态） */
  mastered: number;
  /** 连续打卡天数 */
  streak: number;
  todayNew: number;
  todayReview: number;
  /** 当前到期待复习 */
  dueCount: number;
  /** 未学词数 */
  newCount: number;
}
