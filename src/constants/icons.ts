// 图标映射 - 将表情符号替换为 Ionicons
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

  // 统计相关
  chart: "bar-chart" as const,
  chartOutline: "bar-chart-outline" as const,
  document: "document-text" as const,
  documentOutline: "document-text-outline" as const,
  library: "library" as const,
  libraryOutline: "library-outline" as const,

  // 成就相关
  trophy: "trophy" as const,
  trophyOutline: "trophy-outline" as const,
  checkmarkCircle: "checkmark-circle" as const,
  checkmarkCircleOutline: "checkmark-circle-outline" as const,

  // 操作相关
  refresh: "refresh" as const,
  close: "close" as const,
  handLeft: "hand-left-outline" as const,
  volumeHigh: "volume-high" as const,

  // 状态相关
  alertCircle: "alert-circle-outline" as const,
  person: "person" as const,
  logOut: "log-out-outline" as const,

  // 完成
  checkmarkDone: "checkmark-done" as const,
  ribbon: "ribbon" as const,
} as const;
