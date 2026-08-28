// 四档打分定义（产品文案与颜色），与 ts-fsrs 的 Rating 对应：
// UI 值 0..3 → ts-fsrs Rating.Again(1)..Easy(4)
// 青春活力风格：更丰富的视觉反馈

import { Colors } from "./theme";

export const RATINGS = [
  {
    value: 0,
    label: "忘记了",
    hint: "完全没想起来",
    emoji: "😢",
    color: Colors.ratingForgot,
    bgColor: Colors.accentBg,
    gradient: [Colors.ratingForgot, Colors.accentDark] as const,
  },
  {
    value: 1,
    label: "有点模糊",
    hint: "勉强想起",
    emoji: "🤔",
    color: Colors.ratingVague,
    bgColor: Colors.goldBg,
    gradient: [Colors.ratingVague, Colors.goldDark] as const,
  },
  {
    value: 2,
    label: "记得",
    hint: "正常回忆",
    emoji: "😊",
    color: Colors.ratingRemembered,
    bgColor: Colors.successBg,
    gradient: [Colors.ratingRemembered, Colors.successDark] as const,
  },
  {
    value: 3,
    label: "太简单",
    hint: "秒答",
    emoji: "⭐",
    color: Colors.ratingEasy,
    bgColor: Colors.primaryBg,
    gradient: [Colors.ratingEasy, Colors.primaryDark] as const,
  },
] as const;

export type RatingValue = (typeof RATINGS)[number]["value"];
