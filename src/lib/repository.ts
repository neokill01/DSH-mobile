// 数据仓库抽象：业务代码只依赖此接口，
// 通过 getRepository() 按环境自动选择 本地演示模式 / 云端 Supabase 模式。

import type {
  AssessmentQuestion,
  AssessmentResult,
  BandLevel,
  Course,
  CourseLevel,
  CourseUnit,
  DailyCount,
  Device,
  DueCard,
  ExperienceCourse,
  LearningOverview,
  LearningReport,
  Stats,
  StoredCard,
  VocabularyTrend,
  Word,
  WordBook,
  WordLevel,
  WrongWord,
} from "@/types/database";

export interface AchievementStatus {
  code: string;
  unlocked: boolean;
}

export interface WordRepository {
  readonly mode: "local" | "supabase";

  // ============================================
  // 原有接口
  // ============================================
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

  // ============================================
  // CAT 词汇量测评（PRD 第六节）
  // ============================================
  /** 开始测评，返回测评ID */
  startAssessment(): Promise<string>;
  /** 获取下一题 */
  getAssessmentQuestion(assessmentId: string): Promise<AssessmentQuestion | null>;
  /** 提交答案 */
  submitAssessmentAnswer(
    assessmentId: string,
    questionId: string,
    selectedIndex: number,
  ): Promise<{ correct: boolean; isComplete: boolean }>;
  /** 获取测评结果 */
  getAssessmentResult(assessmentId: string): Promise<AssessmentResult | null>;
  /** 获取最新的测评结果 */
  getLatestAssessmentResult(): Promise<AssessmentResult | null>;

  // ============================================
  // 体验课（PRD 第七节）
  // ============================================
  /** 获取体验课信息 */
  getExperienceCourse(): Promise<ExperienceCourse | null>;
  /** 开始/恢复体验课 */
  startExperienceCourse(): Promise<ExperienceCourse>;
  /** 获取体验课每日单词 */
  getExperienceDayWords(day: number): Promise<Word[]>;
  /** 完成体验课某天的学习 */
  completeExperienceDay(day: number): Promise<void>;

  // ============================================
  // 正式课程（PRD 第八、九节）
  // ============================================
  /** 获取所有课程 */
  getCourses(): Promise<Course[]>;
  /** 获取课程等级列表 */
  getCourseLevels(courseId: string): Promise<CourseLevel[]>;
  /** 获取等级下的单元列表 */
  getLevelUnits(levelId: string): Promise<CourseUnit[]>;
  /** 获取单元学习单词 */
  getUnitWords(unitId: string): Promise<{ newWords: Word[]; reviewWords: DueCard[] }>;
  /** 获取每日学习任务（20~40新词 + 穿插复习） */
  getDailyLearningTask(): Promise<{
    newWords: Word[];
    reviewWords: DueCard[];
    targetNewCount: number;
    targetReviewCount: number;
  }>;

  // ============================================
  // 错词池（PRD 第十一节）
  // ============================================
  /** 获取错词列表 */
  getWrongWords(status?: string): Promise<WrongWord[]>;
  /** 将单词加入错词池 */
  addToWrongPool(wordId: string): Promise<void>;
  /** 更新错词状态 */
  updateWrongWordStatus(wrongWordId: string, status: string): Promise<void>;
  /** 获取错词统计 */
  getWrongWordStats(): Promise<{
    total: number;
    newCount: number;
    learningCount: number;
    masteredCount: number;
  }>;

  // ============================================
  // AI 功能（PRD 第十三节）
  // ============================================
  /** 获取错词AI解析 */
  getAiAnalysis(wrongWordId: string): Promise<string | null>;
  /** 生成AI短文 */
  generateAiArticle(wordIds: string[]): Promise<string>;

  // ============================================
  // 设备管理（PRD 第十二节）
  // ============================================
  /** 获取设备列表 */
  getDevices(): Promise<Device[]>;
  /** 移除设备 */
  removeDevice(deviceId: string): Promise<void>;

  // ============================================
  // 学习数据（PRD 第十四节）
  // ============================================
  /** 获取学习概览 */
  getLearningOverview(): Promise<LearningOverview>;
  /** 获取词汇量趋势 */
  getVocabularyTrend(days: number): Promise<VocabularyTrend[]>;

  // ============================================
  // 导出（PRD 第十五节）
  // ============================================
  /** 生成学习报告 */
  generateLearningReport(): Promise<LearningReport>;
}

export { getRepository } from "./repositoryFactory";
