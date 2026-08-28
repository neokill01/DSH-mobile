// 图标映射 - 将表情符号替换为 Ionicons
// 青春活力风格：扩展语义化图标映射

import { Ionicons } from "@expo/vector-icons";
import { Colors } from "./theme";

// 图标颜色配置
export const IconColors = {
  primary: Colors.primary,
  accent: Colors.accent,
  gold: Colors.gold,
  success: Colors.success,
  warning: Colors.warning,
  danger: Colors.danger,
  purple: Colors.purple,
  orange: Colors.orange,
  sky: Colors.sky,
  pink: Colors.pink,
  muted: Colors.textMuted,
  tertiary: Colors.textTertiary,
} as const;

// 图标名称映射（替代表情符号）
export const IconNames = {
  // 时间/问候
  morning: "sunny" as const,
  afternoon: "partly-sunny" as const,
  evening: "moon" as const,

  // 学习相关
  book: "book" as const,
  bookOpen: "book-outline" as const,
  sparkles: "sparkles" as const,
  flame: "flame" as const,
  bulb: "bulb" as const,
  school: "school" as const,
  reads: "book" as const,
  pencil: "pencil" as const,

  // 统计相关
  chart: "bar-chart" as const,
  chartOutline: "bar-chart-outline" as const,
  document: "document-text" as const,
  documentOutline: "document-text-outline" as const,
  library: "library" as const,
  libraryOutline: "library-outline" as const,
  trending: "trending-up" as const,
  pieChart: "pie-chart" as const,

  // 成就相关
  trophy: "trophy" as const,
  trophyOutline: "trophy-outline" as const,
  checkmarkCircle: "checkmark-circle" as const,
  checkmarkCircleOutline: "checkmark-circle-outline" as const,
  medal: "ribbon" as const,
  star: "star" as const,
  starOutline: "star-outline" as const,

  // 操作相关
  refresh: "refresh" as const,
  close: "close" as const,
  add: "add" as const,
  remove: "remove" as const,
  handLeft: "hand-left-outline" as const,
  volumeHigh: "volume-high" as const,
  play: "play" as const,
  pause: "pause" as const,
  bookmark: "bookmark" as const,
  bookmarkOutline: "bookmark-outline" as const,
  share: "share-social" as const,

  // 状态相关
  alertCircle: "alert-circle-outline" as const,
  person: "person" as const,
  personAdd: "person-add" as const,
  logOut: "log-out-outline" as const,
  shield: "shield-checkmark" as const,
  lock: "lock-closed" as const,
  lockOpen: "lock-open" as const,

  // 完成
  checkmarkDone: "checkmark-done" as const,
  ribbon: "ribbon" as const,
  checkmark: "checkmark" as const,
  rocket: "rocket" as const,
  heart: "heart" as const,
  heartOutline: "heart-outline" as const,

  // AI 相关
  brain: "fitness" as const,
  sparklesOutline: "sparkles-outline" as const,
  wand: "flash" as const,

  // 设置相关
  settings: "settings" as const,
  phonePortrait: "phone-portrait" as const,
  documentExport: "document" as const,
  swap: "swap-horizontal" as const,
  chevronForward: "chevron-forward" as const,
  arrowBack: "arrow-back" as const,
} as const;

export type IconName = keyof typeof IconNames;
export type IconColor = keyof typeof IconColors;
