// FSRS（Free Spaced Repetition Scheduler）封装。
// 使用 ts-fsrs（Anki 同源官方 TS 实现，FSRS-4.5）。
// 设计要点见 docs/PRD.md 第 5 节：SRS 计算放客户端，离线可用、打分是纯函数。

import {
  createEmptyCard,
  fsrs,
  generatorParameters,
  State,
  type Card,
  type Grade,
} from "ts-fsrs";
import type { CardState, ReviewLog, StoredCard } from "@/types/database";

// 开启短期记忆：Learning 阶段按分钟排期（忘记后很快再出现）
const scheduler = fsrs(generatorParameters({ enable_short_term: true }));

// ts-fsrs 验证要求的最小值
const DIFFICULTY_MIN = 1;
const STABILITY_MIN = 0.4;

/** 本地卡片 -> ts-fsrs 卡片 */
export function storedToCard(c: StoredCard): Card {
  return {
    due: new Date(c.due),
    stability: c.stability ?? 0,
    difficulty: c.difficulty ?? 0,
    elapsed_days: c.elapsedDays ?? 0,
    scheduled_days: c.scheduledDays ?? 0,
    learning_steps: c.learningSteps ?? 0,
    reps: c.reps ?? 0,
    lapses: c.lapses ?? 0,
    state: (c.state as State) ?? State.New,
    last_review: c.lastReview ? new Date(c.lastReview) : undefined,
  };
}

/** ts-fsrs 卡片 -> 本地存储卡片 */
export function cardToStored(card: Card, wordId: string, bookId: string, now: Date): StoredCard {
  return {
    wordId,
    bookId,
    state: card.state as CardState,
    due: card.due.toISOString(),
    learningSteps: card.learning_steps,
    stability: card.stability,
    difficulty: card.difficulty,
    elapsedDays: card.elapsed_days,
    scheduledDays: card.scheduled_days,
    reps: card.reps,
    lapses: card.lapses,
    lastReview: card.last_review ? card.last_review.toISOString() : null,
    updatedAt: now.toISOString(),
  };
}

/**
 * 修复无效的卡片状态，确保符合 ts-fsrs 的要求。
 * ts-fsrs 要求：
 * - State.New (0): difficulty = 0, stability = 0
 * - State.Learning/Review/Relearning: difficulty >= 1, stability >= STABILITY_MIN
 */
function fixInvalidCardState(card: Card): Card {
  let state = card.state;
  let stability = card.stability;
  let difficulty = card.difficulty;

  // 确保状态值在有效范围内
  if (state < 0 || state > 3) {
    state = State.New;
    stability = 0;
    difficulty = 0;
  }

  // 如果 state 是 New 但已经有 difficulty/stability 值，说明状态不一致
  if (state === State.New && (stability > 0 || difficulty > 0)) {
    // 根据 reps 数量推断正确状态，并设置有效的 difficulty/stability
    if (card.reps > 0) {
      state = card.lapses > 0 ? State.Relearning : State.Review;
    } else {
      state = State.Learning;
    }
    // 确保 difficulty >= 1 且 stability >= STABILITY_MIN
    difficulty = Math.max(difficulty, DIFFICULTY_MIN);
    stability = Math.max(stability, STABILITY_MIN);
  }

  // 如果状态不是 New 但值无效，也修复
  if (state !== State.New) {
    if (difficulty < DIFFICULTY_MIN) {
      difficulty = DIFFICULTY_MIN;
    }
    if (stability < STABILITY_MIN) {
      stability = STABILITY_MIN;
    }
  }

  return {
    ...card,
    state,
    stability,
    difficulty,
  };
}

/**
 * 对一张卡打分并推进 FSRS 排期。
 * @param card 已有卡片；新词传 null（自动创建空卡）
 * @param rating 0=忘记 1=模糊 2=记得 3=轻松
 * @returns 更新后的卡片 + 需持久化的复习记录
 */
export function schedule(
  card: StoredCard | null,
  rating: number,
  now: Date,
  wordId: string,
  bookId: string,
): { card: StoredCard; log: ReviewLog } {
  const input: Card = card ? storedToCard(card) : createEmptyCard(now);
  // 修复可能的无效状态
  const fixedInput = fixInvalidCardState(input);
  // UI 值 0..3 → Rating.Again(1)..Easy(4)
  const grade = (rating + 1) as Grade;
  const item = scheduler.next(fixedInput, now, grade);
  const stored = cardToStored(item.card, wordId, bookId, now);
  const log: ReviewLog = {
    wordId,
    bookId,
    rating,
    reviewedAt: now.toISOString(),
    intervalDays: item.card.scheduled_days,
    stability: item.card.stability,
    difficulty: item.card.difficulty,
    clientTs: now.toISOString(),
  };
  return { card: stored, log };
}
