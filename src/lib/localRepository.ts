// 本地演示模式仓库：AsyncStorage 持久化 + 内置演示数据 + FSRS 全流程。
// 未配置 Supabase 时由 repositoryFactory 选用本实现，开箱即用。

import AsyncStorage from "@react-native-async-storage/async-storage";
import { ACHIEVEMENTS } from "@/constants/achievements";
import { DEMO_BOOKS, DEMO_BOOK_WORDS } from "@/constants/demoBooks";
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
import type { AchievementStatus, WordRepository } from "./repository";
import { calcStreak, dailyCountsFromLogs, firstLogDates, dateStr } from "./statsUtil";

const KEY_CURRENT_BOOK = "@wordnest/currentBook";
const KEY_ASSESSMENT = "@wordnest/assessment";
const KEY_EXPERIENCE = "@wordnest/experience";
const KEY_WRONG_WORDS = "@wordnest/wrongWords";
const KEY_DEVICES = "@wordnest/devices";
const KEY_LEARNING_LOGS = "@wordnest/learningLogs";
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

// ============================================
// 演示测评题目数据
// ============================================
const DEMO_QUESTIONS: AssessmentQuestion[] = [
  { id: "q1", type: "real_word", word: "ability", options: ["能力；才能", "可能性", "稳定性", "多样性"], correctIndex: 0, difficulty: 0.3 },
  { id: "q2", type: "real_word", word: "absorb", options: ["拒绝", "吸收；使专心", "观察", "抚养"], correctIndex: 1, difficulty: 0.35 },
  { id: "q3", type: "real_word", word: "adequate", options: ["积极的", "适当的；足够的", "准确的", "额外的"], correctIndex: 1, difficulty: 0.4 },
  { id: "q4", type: "pseudo_word", word: "flurmish", options: ["装饰", "繁荣；兴旺", "流动", "惩罚"], correctIndex: 1, difficulty: 0.5 },
  { id: "q5", type: "real_word", word: "ambiguous", options: ["友好的", "模糊的；有歧义的", "野心勃勃的", "急促的"], correctIndex: 1, difficulty: 0.55 },
  { id: "q6", type: "real_word", word: "benevolent", options: ["恶意的", "仁慈的；慈善的", "有利可图的", "有耐心的"], correctIndex: 1, difficulty: 0.6 },
  { id: "q7", type: "pseudo_word", word: "splendid", options: ["华丽的；辉煌的", "分裂的", "弯曲的", "短暂的"], correctIndex: 0, difficulty: 0.45 },
  { id: "q8", type: "real_word", word: "circumstance", options: ["环境；情况", "圆周", "服务", "勇气"], correctIndex: 0, difficulty: 0.4 },
  { id: "q9", type: "real_word", word: "elaborate", options: ["简单的", "精心制作的；详细阐述", "删除", "逃离"], correctIndex: 1, difficulty: 0.65 },
  { id: "q10", type: "real_word", word: "inevitable", options: ["不可避免的", "不合理的", "不可逆的", "不可见的"], correctIndex: 0, difficulty: 0.6 },
  { id: "q11", type: "pseudo_word", word: "quorlidge", options: ["安静", "混乱", "力量", "桥梁"], correctIndex: 1, difficulty: 0.7 },
  { id: "q12", type: "real_word", word: "paradigm", options: ["天堂", "范例；典范", "平行", "悖论"], correctIndex: 1, difficulty: 0.7 },
  { id: "q13", type: "real_word", word: "ubiquitous", options: ["独特的", "无处不在的", "模糊的", "重要的"], correctIndex: 1, difficulty: 0.75 },
  { id: "q14", type: "real_word", word: "pragmatic", options: ["实用主义的", "悲观的", "慷慨的", "精确的"], correctIndex: 0, difficulty: 0.72 },
  { id: "q15", type: "real_word", word: "ephemeral", options: ["永恒的", "短暂的；瞬息的", "模糊的", "必要的"], correctIndex: 1, difficulty: 0.78 },
];

// ============================================
// 演示体验课数据
// ============================================
const DEMO_EXPERIENCE_WORDS: Record<number, Word[]> = {
  1: [
    { id: "exp-w1", spelling: "abandon", phonetic: "/əˈbændən/", level: "CET4", definitions: [{ pos: "v.", meaning: "放弃；抛弃" }] },
    { id: "exp-w2", spelling: "benefit", phonetic: "/ˈbenɪfɪt/", level: "CET4", definitions: [{ pos: "n./v.", meaning: "利益；好处" }] },
    { id: "exp-w3", spelling: "challenge", phonetic: "/ˈtʃælɪndʒ/", level: "CET4", definitions: [{ pos: "n./v.", meaning: "挑战" }] },
    { id: "exp-w4", spelling: "determine", phonetic: "/dɪˈtɜːrmɪn/", level: "CET4", definitions: [{ pos: "v.", meaning: "决定；决心" }] },
    { id: "exp-w5", spelling: "enthusiasm", phonetic: "/ɪnˈθjuːziæzəm/", level: "CET4", definitions: [{ pos: "n.", meaning: "热情；热忱" }] },
  ],
  2: [
    { id: "exp-w6", spelling: "frequent", phonetic: "/ˈfriːkwənt/", level: "CET4", definitions: [{ pos: "adj.", meaning: "频繁的；常见的" }] },
    { id: "exp-w7", spelling: "generate", phonetic: "/ˈdʒenəreɪt/", level: "CET4", definitions: [{ pos: "v.", meaning: "产生；生成" }] },
    { id: "exp-w8", spelling: "hesitate", phonetic: "/ˈhezɪteɪt/", level: "CET4", definitions: [{ pos: "v.", meaning: "犹豫；踌躇" }] },
    { id: "exp-w9", spelling: "illustrate", phonetic: "/ˈɪləstreɪt/", level: "CET4", definitions: [{ pos: "v.", meaning: "说明；举例说明" }] },
    { id: "exp-w10", spelling: "justify", phonetic: "/ˈdʒʌstɪfaɪ/", level: "CET4", definitions: [{ pos: "v.", meaning: "证明...正当" }] },
  ],
  3: [
    { id: "exp-w11", spelling: "negotiate", phonetic: "/nɪˈɡoʊʃieɪt/", level: "CET4", definitions: [{ pos: "v.", meaning: "谈判；协商" }] },
    { id: "exp-w12", spelling: "obvious", phonetic: "/ˈɑːbviəs/", level: "CET4", definitions: [{ pos: "adj.", meaning: "明显的" }] },
    { id: "exp-w13", spelling: "perspective", phonetic: "/pərˈspektɪv/", level: "CET4", definitions: [{ pos: "n.", meaning: "观点；透视" }] },
    { id: "exp-w14", spelling: "remarkable", phonetic: "/rɪˈmɑːrkəbl/", level: "CET4", definitions: [{ pos: "adj.", meaning: "显著的；非凡的" }] },
    { id: "exp-w15", spelling: "sufficient", phonetic: "/səˈfɪʃnt/", level: "CET4", definitions: [{ pos: "adj.", meaning: "足够的；充分的" }] },
  ],
};

// ============================================
// 演示课程数据
// ============================================
const DEMO_COURSES: Course[] = [
  { id: "course-cet4", title: "CET-4 核心词汇", description: "大学英语四级核心词汇，约2400词", level: "CET4", totalUnits: 12, totalWords: 2400, status: "active" },
  { id: "course-cet6", title: "CET-6 进阶词汇", description: "大学英语六级进阶词汇，约2200词", level: "CET6", totalUnits: 11, totalWords: 2200, status: "locked" },
  { id: "course-kaoyan", title: "考研英语词汇", description: "考研英语大纲词汇，约3500词", level: "KAOYAN", totalUnits: 18, totalWords: 3500, status: "locked" },
];

const DEMO_LEVELS: CourseLevel[] = [
  { id: "level-cet4-1", courseId: "course-cet4", levelNumber: 1, title: "基础词汇篇", description: "日常生活高频词", unitCount: 4, wordCount: 800, status: "active", prerequisiteLevelId: null },
  { id: "level-cet4-2", courseId: "course-cet4", levelNumber: 2, title: "进阶词汇篇", description: "学术与工作常用词", unitCount: 4, wordCount: 800, status: "locked", prerequisiteLevelId: "level-cet4-1" },
  { id: "level-cet4-3", courseId: "course-cet4", levelNumber: 3, title: "高阶词汇篇", description: "阅读理解高频词", unitCount: 4, wordCount: 800, status: "locked", prerequisiteLevelId: "level-cet4-2" },
];

const DEMO_UNITS: CourseUnit[] = [
  { id: "unit-cet4-1-1", levelId: "level-cet4-1", unitNumber: 1, title: "Unit 1: 日常交流", newWordCount: 200, reviewWordCount: 50, totalWordCount: 200, status: "active" },
  { id: "unit-cet4-1-2", levelId: "level-cet4-1", unitNumber: 2, title: "Unit 2: 校园生活", newWordCount: 200, reviewWordCount: 50, totalWordCount: 200, status: "locked" },
  { id: "unit-cet4-1-3", levelId: "level-cet4-1", unitNumber: 3, title: "Unit 3: 社会文化", newWordCount: 200, reviewWordCount: 50, totalWordCount: 200, status: "locked" },
  { id: "unit-cet4-1-4", levelId: "level-cet4-1", unitNumber: 4, title: "Unit 4: 科技发展", newWordCount: 200, reviewWordCount: 50, totalWordCount: 200, status: "locked" },
];

class LocalRepository implements WordRepository {
  readonly mode = "local" as const;

  // ============================================
  // 原有接口
  // ============================================
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

    // 如果答错（rating 0 或 1），加入错词池
    if (input.rating <= 1) {
      await this.addToWrongPool(input.word.id);
    }

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

  // ============================================
  // CAT 词汇量测评
  // ============================================
  private assessmentIndex = 0;

  async startAssessment(): Promise<string> {
    const assessmentId = `assessment-${Date.now()}`;
    this.assessmentIndex = 0;
    const state = {
      id: assessmentId,
      currentIndex: 0,
      correctCount: 0,
      totalAnswered: 0,
      startedAt: new Date().toISOString(),
    };
    await AsyncStorage.setItem(KEY_ASSESSMENT, JSON.stringify(state));
    return assessmentId;
  }

  async getAssessmentQuestion(assessmentId: string): Promise<AssessmentQuestion | null> {
    const state = await readJson<{ currentIndex: number }>(KEY_ASSESSMENT, { currentIndex: 0 });
    if (state.currentIndex >= DEMO_QUESTIONS.length) return null;
    return DEMO_QUESTIONS[state.currentIndex];
  }

  async submitAssessmentAnswer(
    assessmentId: string,
    questionId: string,
    selectedIndex: number,
  ): Promise<{ correct: boolean; isComplete: boolean }> {
    const state = await readJson<{
      currentIndex: number;
      correctCount: number;
      totalAnswered: number;
    }>(KEY_ASSESSMENT, { currentIndex: 0, correctCount: 0, totalAnswered: 0 });

    const question = DEMO_QUESTIONS.find((q) => q.id === questionId);
    const correct = question ? selectedIndex === question.correctIndex : false;

    state.totalAnswered++;
    if (correct) state.correctCount++;
    state.currentIndex++;

    await AsyncStorage.setItem(KEY_ASSESSMENT, JSON.stringify(state));

    const isComplete = state.currentIndex >= DEMO_QUESTIONS.length;
    return { correct, isComplete };
  }

  async getAssessmentResult(assessmentId: string): Promise<AssessmentResult | null> {
    const state = await readJson<{
      currentIndex: number;
      correctCount: number;
      totalAnswered: number;
      startedAt: string;
    }>(KEY_ASSESSMENT, { currentIndex: 0, correctCount: 0, totalAnswered: 0, startedAt: "" });

    if (state.totalAnswered === 0) return null;

    const accuracy = state.correctCount / state.totalAnswered;
    // 简化的 Band 计算
    const vocabularyEstimate = Math.round(accuracy * 6000);
    const sem = Math.round((1 - accuracy) * 500);
    let band: BandLevel = 0;
    if (vocabularyEstimate >= 5500) band = 6;
    else if (vocabularyEstimate >= 4500) band = 5;
    else if (vocabularyEstimate >= 3500) band = 4;
    else if (vocabularyEstimate >= 2000) band = 3;
    else if (vocabularyEstimate >= 1000) band = 2;
    else if (vocabularyEstimate >= 500) band = 1;

    let recommendedLevel: WordLevel = "CET4";
    if (band >= 5) recommendedLevel = "KAOYAN";
    else if (band >= 4) recommendedLevel = "CET6";
    else recommendedLevel = "CET4";

    return {
      id: assessmentId,
      userId: "local-user",
      band,
      vocabularyEstimate,
      ciLower: Math.max(0, vocabularyEstimate - sem * 2),
      ciUpper: vocabularyEstimate + sem * 2,
      sem,
      totalQuestions: state.totalAnswered,
      correctCount: state.correctCount,
      accuracy,
      completedAt: new Date().toISOString(),
      recommendedLevel,
    };
  }

  async getLatestAssessmentResult(): Promise<AssessmentResult | null> {
    return this.getAssessmentResult("latest");
  }

  // ============================================
  // 体验课
  // ============================================
  async getExperienceCourse(): Promise<ExperienceCourse | null> {
    const stored = await readJson<ExperienceCourse | null>(KEY_EXPERIENCE, null);
    return stored;
  }

  async startExperienceCourse(): Promise<ExperienceCourse> {
    const existing = await this.getExperienceCourse();
    if (existing && existing.status !== "expired") return existing;

    const now = new Date();
    const expiresAt = new Date(now);
    expiresAt.setDate(expiresAt.getDate() + 3);

    const course: ExperienceCourse = {
      id: `exp-${Date.now()}`,
      title: "3天英语入门体验课",
      description: "3天免费体验，约100个核心词汇",
      totalDays: 3,
      totalWords: 100,
      status: "in_progress",
      startedAt: now.toISOString(),
      expiresAt: expiresAt.toISOString(),
      currentDay: 1,
      dailyProgress: [
        { day: 1, wordsLearned: 0, wordsTotal: 35, completed: false },
        { day: 2, wordsLearned: 0, wordsTotal: 35, completed: false },
        { day: 3, wordsLearned: 0, wordsTotal: 30, completed: false },
      ],
    };
    await writeJson(KEY_EXPERIENCE, course);
    return course;
  }

  async getExperienceDayWords(day: number): Promise<Word[]> {
    return DEMO_EXPERIENCE_WORDS[day] ?? [];
  }

  async completeExperienceDay(day: number): Promise<void> {
    const course = await this.getExperienceCourse();
    if (!course) return;
    const progress = course.dailyProgress.find((p) => p.day === day);
    if (progress) {
      progress.completed = true;
      progress.wordsLearned = progress.wordsTotal;
    }
    if (day < course.totalDays) {
      course.currentDay = day + 1;
    } else {
      course.status = "completed";
    }
    await writeJson(KEY_EXPERIENCE, course);
  }

  // ============================================
  // 正式课程
  // ============================================
  async getCourses(): Promise<Course[]> {
    return DEMO_COURSES;
  }

  async getCourseLevels(courseId: string): Promise<CourseLevel[]> {
    return DEMO_LEVELS.filter((l) => l.courseId === courseId);
  }

  async getLevelUnits(levelId: string): Promise<CourseUnit[]> {
    return DEMO_UNITS.filter((u) => u.levelId === levelId);
  }

  async getUnitWords(unitId: string): Promise<{ newWords: Word[]; reviewWords: DueCard[] }> {
    const allWords = this.wordsOf("demo-cet4");
    const cards = await loadCards("demo-cet4");
    const newWords = allWords.filter((w) => !cards[w.id]).slice(0, 20);
    const dueCards = await this.getDueCards(10);
    return { newWords, reviewWords: dueCards.slice(0, 10) };
  }

  async getDailyLearningTask(): Promise<{
    newWords: Word[];
    reviewWords: DueCard[];
    targetNewCount: number;
    targetReviewCount: number;
  }> {
    const newWords = await this.getNewWords(20);
    const reviewWords = await this.getDueCards(30);
    return {
      newWords,
      reviewWords,
      targetNewCount: 20,
      targetReviewCount: 30,
    };
  }

  // ============================================
  // 错词池
  // ============================================
  async getWrongWords(status?: string): Promise<WrongWord[]> {
    const allWrong = await readJson<WrongWord[]>(KEY_WRONG_WORDS, []);
    if (status) return allWrong.filter((w) => w.status === status);
    return allWrong;
  }

  async addToWrongPool(wordId: string): Promise<void> {
    const allWrong = await readJson<WrongWord[]>(KEY_WRONG_WORDS, []);
    const existing = allWrong.find((w) => w.wordId === wordId);
    const now = new Date().toISOString();

    // 查找单词信息
    const book = (await this.getCurrentBook())!;
    const allWords = this.wordsOf(book.id);
    const word = allWords.find((w) => w.id === wordId);
    if (!word) return;

    if (existing) {
      existing.wrongCount++;
      existing.lastWrongAt = now;
      existing.status = "learning";
    } else {
      allWrong.push({
        id: `wrong-${Date.now()}-${wordId}`,
        wordId,
        word,
        firstWrongAt: now,
        lastWrongAt: now,
        wrongCount: 1,
        status: "new",
        aiAnalysis: null,
      });
    }
    await writeJson(KEY_WRONG_WORDS, allWrong);
  }

  async updateWrongWordStatus(wrongWordId: string, status: string): Promise<void> {
    const allWrong = await readJson<WrongWord[]>(KEY_WRONG_WORDS, []);
    const item = allWrong.find((w) => w.id === wrongWordId);
    if (item) {
      item.status = status as WrongWord["status"];
      await writeJson(KEY_WRONG_WORDS, allWrong);
    }
  }

  async getWrongWordStats(): Promise<{
    total: number;
    newCount: number;
    learningCount: number;
    masteredCount: number;
  }> {
    const all = await this.getWrongWords();
    return {
      total: all.length,
      newCount: all.filter((w) => w.status === "new").length,
      learningCount: all.filter((w) => w.status === "learning").length,
      masteredCount: all.filter((w) => w.status === "mastered").length,
    };
  }

  // ============================================
  // AI 功能
  // ============================================
  async getAiAnalysis(wrongWordId: string): Promise<string | null> {
    const allWrong = await readJson<WrongWord[]>(KEY_WRONG_WORDS, []);
    const item = allWrong.find((w) => w.id === wrongWordId);
    if (!item) return null;

    // 演示模式：返回预设的分析内容
    if (!item.aiAnalysis) {
      const analysis = `## ${item.word.spelling} 解析

**音标**: ${item.word.phonetic}

### 记忆技巧
1. **词根词缀法**: 拆分词根进行联想记忆
2. **语境记忆法**: 通过例句加深理解
3. **对比记忆法**: 与形近词对比区分

### 易错点
- 注意词性变化和搭配用法
- 区分同义词的细微差别

### 练习建议
每天复习 3 次，间隔 2 小时以上，连续 3 天后转入间隔复习`;
      item.aiAnalysis = analysis;
      await writeJson(KEY_WRONG_WORDS, allWrong);
    }
    return item.aiAnalysis;
  }

  async generateAiArticle(wordIds: string[]): Promise<string> {
    // 演示模式：返回预设的短文
    return `# A Day at the University Library

Every day, thousands of students walk through the doors of the university library seeking knowledge and quiet study space. The library provides various resources that help students achieve their academic goals.

Students can access **computers**, borrow **books**, and use the **database** for research. The librarian is always ready to help anyone who feels confused about finding the right materials.

The library also organizes **workshops** on study skills and time management. These events help students develop effective learning strategies and improve their academic performance.

Remember, the key to success is **consistency** and **determination**. Keep studying every day, and you will gradually master new vocabulary and concepts.`;
  }

  // ============================================
  // 设备管理
  // ============================================
  async getDevices(): Promise<Device[]> {
    const stored = await readJson<Device[]>(KEY_DEVICES, []);
    if (stored.length === 0) {
      // 初始化：当前设备
      const currentDevice: Device = {
        id: `device-${Date.now()}`,
        name: "当前设备",
        model: "iPhone",
        os: "iOS",
        lastActiveAt: new Date().toISOString(),
        isCurrent: true,
      };
      await writeJson(KEY_DEVICES, [currentDevice]);
      return [currentDevice];
    }
    return stored;
  }

  async removeDevice(deviceId: string): Promise<void> {
    const devices = await this.getDevices();
    const filtered = devices.filter((d) => d.id !== deviceId);
    await writeJson(KEY_DEVICES, filtered);
  }

  // ============================================
  // 学习数据
  // ============================================
  async getLearningOverview(): Promise<LearningOverview> {
    const stats = await this.getStats();
    const logs = await loadLogs();
    const first = firstLogDates(logs);
    const learningDays = first.size;
    return {
      totalLearned: stats.totalLearned,
      mastered: stats.mastered,
      vocabularyEstimate: stats.totalLearned * 25,
      learningDays,
      avgDailyWords: learningDays > 0 ? Math.round(stats.totalLearned / learningDays) : 0,
      totalReviews: logs.length,
      accuracy: logs.length > 0 ? 0.75 : 0,
    };
  }

  async getVocabularyTrend(days: number): Promise<VocabularyTrend[]> {
    const result: VocabularyTrend[] = [];
    const now = new Date();
    let base = 0;
    for (let i = days - 1; i >= 0; i--) {
      const d = new Date(now);
      d.setDate(d.getDate() - i);
      base += Math.round(Math.random() * 50 + 20);
      result.push({
        date: dateStr(d),
        estimate: base,
        ciLower: base - 100,
        ciUpper: base + 100,
      });
    }
    return result;
  }

  // ============================================
  // 学习报告导出
  // ============================================
  async generateLearningReport(): Promise<LearningReport> {
    const overview = await this.getLearningOverview();
    const trend = await this.getVocabularyTrend(7);
    const wrongWords = await this.getWrongWords();
    return {
      userId: "local-user",
      generatedAt: new Date().toISOString(),
      overview,
      band: 2,
      vocabularyEstimate: overview.vocabularyEstimate,
      trend,
      weakWords: wrongWords.slice(0, 10).map((w) => ({
        word: w.word.spelling,
        wrongCount: w.wrongCount,
      })),
      suggestions: [
        "每天坚持学习 20 个新词",
        "及时复习错词，避免遗忘",
        "通过阅读文章巩固记忆",
        "定期测评了解词汇量变化",
      ],
    };
  }
}

export const localRepository = new LocalRepository();
