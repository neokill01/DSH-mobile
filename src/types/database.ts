// 与 PRD v2.0 对应的客户端类型。
// 本地演示模式与云端模式复用同一套类型，保证两层实现可互换。

// ============================================
// 词汇等级（PRD 附录 A Band 对应）
// ============================================
export type WordLevel =
  | "CET4"
  | "CET6"
  | "KAOYAN"
  | "IELTS"
  | "TOEFL"
  | "GRE"
  | "CUSTOM";

// Band 等级（PRD 附录 A）
export type BandLevel = 0 | 1 | 2 | 3 | 4 | 5 | 6;

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

// ============================================
// FSRS 卡片状态（与 user_words.state 对齐）
// ============================================
export const CardState = {
  New: 0,
  Learning: 1,
  Review: 2,
  Relearning: 3,
} as const;
export type CardState = (typeof CardState)[keyof typeof CardState];

/** 持久化存储的 FSRS 卡片 */
export interface StoredCard {
  wordId: string;
  bookId: string;
  state: CardState;
  /** 下次到期时间（ISO 字符串） */
  due: string;
  /** Learning 阶段当前步骤索引 */
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

/** 一次复习打分记录 */
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

// ============================================
// CAT 词汇量测评（PRD 第六节）
// ============================================
export type AssessmentStatus = "not_started" | "in_progress" | "completed";

export interface AssessmentResult {
  id: string;
  userId: string;
  band: BandLevel;
  /** 词汇量估计值 */
  vocabularyEstimate: number;
  /** 置信区间下限 */
  ciLower: number;
  /** 置信区间上限 */
  ciUpper: number;
  /** 测量标准误差 */
  sem: number;
  /** 总答题数 */
  totalQuestions: number;
  /** 正确数 */
  correctCount: number;
  /** 正确率 */
  accuracy: number;
  /** 完成时间 */
  completedAt: string;
  /** 推荐课程等级 */
  recommendedLevel: WordLevel;
}

export interface AssessmentQuestion {
  id: string;
  /** 题目类型：real_word（真实词选择）或 pseudo_word（伪词辨析） */
  type: "real_word" | "pseudo_word";
  /** 题干：单词 */
  word: string;
  /** 选项列表（4个） */
  options: string[];
  /** 正确答案索引 */
  correctIndex: number;
  /** 题目难度值 */
  difficulty: number;
}

// ============================================
// 课程体系（PRD 第七、八节）
// ============================================
export type CourseStatus = "locked" | "active" | "completed";

export interface Course {
  id: string;
  title: string;
  description: string;
  level: WordLevel;
  totalUnits: number;
  totalWords: number;
  /** 课程状态 */
  status: CourseStatus;
}

export interface CourseLevel {
  id: string;
  courseId: string;
  levelNumber: number;
  title: string;
  description: string;
  unitCount: number;
  wordCount: number;
  status: CourseStatus;
  /** 解锁所需前置条件（如：完成上一级） */
  prerequisiteLevelId: string | null;
}

export interface CourseUnit {
  id: string;
  levelId: string;
  unitNumber: number;
  title: string;
  /** 本单元新词数 */
  newWordCount: number;
  /** 本单元穿插复习数 */
  reviewWordCount: number;
  totalWordCount: number;
  status: CourseStatus;
}

// ============================================
// 体验课（PRD 第七节）
// ============================================
export type ExperienceStatus = "not_started" | "in_progress" | "completed" | "expired";

export interface ExperienceCourse {
  id: string;
  title: string;
  description: string;
  /** 总天数（3天） */
  totalDays: number;
  /** 总词数（约100词） */
  totalWords: number;
  /** 当前状态 */
  status: ExperienceStatus;
  /** 开始时间（首次进入） */
  startedAt: string | null;
  /** 过期时间 */
  expiresAt: string | null;
  /** 当前天数（1~3） */
  currentDay: number;
  /** 每日进度 */
  dailyProgress: {
    day: number;
    wordsLearned: number;
    wordsTotal: number;
    completed: boolean;
  }[];
}

// ============================================
// 错词池（PRD 第十一节）
// ============================================
export type WrongWordStatus = "new" | "learning" | "mastered" | "removed";

export interface WrongWord {
  id: string;
  wordId: string;
  word: Word;
  /** 首次答错时间 */
  firstWrongAt: string;
  /** 最近答错时间 */
  lastWrongAt: string;
  /** 累计答错次数 */
  wrongCount: number;
  /** 当前状态 */
  status: WrongWordStatus;
  /** AI 解析缓存（可选） */
  aiAnalysis: string | null;
}

// ============================================
// AI 功能（PRD 第十三节）
// ============================================
export interface AiAnalysis {
  id: string;
  wrongWordId: string;
  /** 解析内容（Markdown格式） */
  content: string;
  /** 生成时间 */
  generatedAt: string;
  /** 缓存有效期（小时） */
  expiresInHours: number;
}

export interface AiArticle {
  id: string;
  /** 基于哪些错词生成 */
  wordIds: string[];
  /** 文章标题 */
  title: string;
  /** 文章内容（Markdown格式） */
  content: string;
  /** 生成时间 */
  generatedAt: string;
  /** 阅读难度等级 */
  difficulty: WordLevel;
}

// ============================================
// 设备管理（PRD 第十二节）
// ============================================
export interface Device {
  id: string;
  /** 设备名称 */
  name: string;
  /** 设备型号 */
  model: string;
  /** 操作系统 */
  os: string;
  /** 最后活跃时间 */
  lastActiveAt: string;
  /** 是否为当前设备 */
  isCurrent: boolean;
}

// ============================================
// 学习数据（PRD 第十四节）
// ============================================
export interface LearningOverview {
  /** 总学习词数 */
  totalLearned: number;
  /** 已掌握词数 */
  mastered: number;
  /** 当前词汇量估计 */
  vocabularyEstimate: number;
  /** 学习天数 */
  learningDays: number;
  /** 平均每日学习词数 */
  avgDailyWords: number;
  /** 总复习次数 */
  totalReviews: number;
  /** 正确率 */
  accuracy: number;
}

export interface VocabularyTrend {
  date: string;
  estimate: number;
  ciLower: number;
  ciUpper: number;
}

// ============================================
// 学习报告导出（PRD 第十五节）
// ============================================
export interface LearningReport {
  userId: string;
  generatedAt: string;
  overview: LearningOverview;
  band: BandLevel;
  vocabularyEstimate: number;
  /** 最近7天趋势 */
  trend: VocabularyTrend[];
  /** 弱项词汇列表 */
  weakWords: { word: string; wrongCount: number }[];
  /** 学习建议 */
  suggestions: string[];
}
