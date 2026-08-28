// 词记 (Word Nest) 设计系统 v3 — Claymorphism 风格
// 柔软、圆润、活泼的粘土风格，专为中小学生打造
// 基于 MASTER.md 设计规范

import { Platform, StatusBar } from "react-native";

// ============================================
// 色彩系统 — 基于 MASTER.md 推荐
// ============================================
export const Colors = {
  // 主色调 — 靛蓝 (Indigo)
  primary: "#4F46E5",
  primaryLight: "#818CF8",
  primaryDark: "#4338CA",
  primaryBg: "#EEF2FF",

  // 辅助色 — 珊瑚粉 (Coral Pink)
  accent: "#FF7088",
  accentLight: "#FF94A8",
  accentDark: "#E55570",
  accentBg: "#FFF0F3",

  // 点缀色 — 星光金 (Star Gold)
  gold: "#FFBE42",
  goldLight: "#FFD580",
  goldDark: "#E5A030",
  goldBg: "#FFF6E0",

  // 成功色 — 活力绿 (Lively Green)
  success: "#36D9A0",
  successLight: "#6AEDC8",
  successDark: "#1EB88A",
  successBg: "#E8FBF4",

  // 新增色彩
  purple: "#9B72F2",
  purpleLight: "#B89AF7",
  purpleDark: "#7C5CE0",
  purpleBg: "#F3EEFF",

  orange: "#EA580C",
  orangeLight: "#F97316",
  orangeDark: "#C2410C",
  orangeBg: "#FFF7ED",

  sky: "#43C6F5",
  skyLight: "#7AD8F9",
  skyDark: "#2AADE0",
  skyBg: "#E6F8FF",

  pink: "#FF6B9D",
  pinkLight: "#FF94B8",
  pinkDark: "#E55580",
  pinkBg: "#FFF0F6",

  // 警告色
  warning: "#FFBE42",
  warningBg: "#FFF6E0",

  // 危险色
  danger: "#DC2626",
  dangerBg: "#FEF2F2",

  // 背景色 — 微靛蓝清爽 (MASTER.md: #EEF2FF)
  background: "#EEF2FF",
  surface: "#FFFFFF",
  surfaceAlt: "#EBEEF8",

  // 文字色 (MASTER.md: #1E1B4B)
  text: "#1E1B4B",
  textSecondary: "#475569",
  textTertiary: "#64748B",
  textMuted: "#94A3B8",
  textHint: "#CBD5E1",

  // 边框色 (MASTER.md: #C7D2FE)
  border: "#C7D2FE",
  borderLight: "#E0E7FF",
  divider: "#C7D2FE",

  // 评分按钮色
  ratingForgot: "#DC2626",
  ratingVague: "#FFBE42",
  ratingRemembered: "#36D9A0",
  ratingEasy: "#4F46E5",

  // 纯白色（用于彩色背景上的文字）
  white: "#FFFFFF",
} as const;

// ============================================
// 渐变色系
// ============================================
export const Gradients = {
  primary: ["#4F46E5", "#4338CA"] as const,
  sunset: ["#F97316", "#FF7088"] as const,
  ocean: ["#43C6F5", "#4F46E5"] as const,
  forest: ["#36D9A0", "#2DD4A8"] as const,
  purple: ["#9B72F2", "#7C5CE0"] as const,
  warm: ["#FFBE42", "#F97316"] as const,
  pink: ["#FF6B9D", "#FF7088"] as const,
  cool: ["#818CF8", "#4F46E5"] as const,
} as const;

// ============================================
// 字体系统
// ============================================
export const Typography = {
  display: {
    fontSize: 44,
    fontWeight: "800" as const,
    lineHeight: 54,
    letterSpacing: -0.5,
    color: Colors.text,
  },
  h1: {
    fontSize: 28,
    fontWeight: "700" as const,
    lineHeight: 38,
    color: Colors.text,
  },
  h2: {
    fontSize: 22,
    fontWeight: "600" as const,
    lineHeight: 30,
    color: Colors.text,
  },
  h3: {
    fontSize: 18,
    fontWeight: "600" as const,
    lineHeight: 26,
    color: Colors.text,
  },
  body: {
    fontSize: 16,
    fontWeight: "400" as const,
    lineHeight: 26,
    color: Colors.text,
  },
  caption: {
    fontSize: 14,
    fontWeight: "400" as const,
    lineHeight: 22,
    color: Colors.textTertiary,
  },
  label: {
    fontSize: 13,
    fontWeight: "600" as const,
    lineHeight: 18,
    color: Colors.textSecondary,
  },
  word: {
    fontSize: 40,
    fontWeight: "800" as const,
    lineHeight: 50,
    letterSpacing: -1,
    color: Colors.text,
  },
  phonetic: {
    fontSize: 16,
    fontWeight: "400" as const,
    lineHeight: 24,
    color: Colors.textTertiary,
  },
  stat: {
    fontSize: 28,
    fontWeight: "800" as const,
    lineHeight: 36,
    color: Colors.primary,
  },
  greeting: {
    fontSize: 20,
    fontWeight: "500" as const,
    lineHeight: 28,
    color: Colors.textSecondary,
  },
  badge: {
    fontSize: 11,
    fontWeight: "700" as const,
    lineHeight: 16,
    letterSpacing: 0.5,
  },
} as const;

// ============================================
// 间距系统 (4pt base)
// ============================================
export const Spacing = {
  xs: 4,
  sm: 8,
  md: 16,
  lg: 24,
  xl: 32,
  xxl: 40,
  xxxl: 56,
  section: 64,
} as const;

// ============================================
// 圆角系统
// ============================================
export const Radius = {
  xs: 8,
  sm: 12,
  md: 16,
  lg: 20,
  xl: 28,
  xxl: 32,
  pill: 999,
} as const;

// ============================================
// 阴影系统 — Claymorphism 双重阴影
// ============================================
export const Shadow = {
  // 卡片阴影 (soft outer + subtle inner)
  card: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.08,
    shadowRadius: 12,
    elevation: 3,
  },
  // 软阴影
  soft: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.04,
    shadowRadius: 8,
    elevation: 1,
  },
  // 悬浮阴影 (prominent cards)
  lifted: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 6 },
    shadowOpacity: 0.12,
    shadowRadius: 24,
    elevation: 6,
  },
  // 按钮阴影
  button: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 3 },
    shadowOpacity: 0.15,
    shadowRadius: 10,
    elevation: 4,
  },
  // Claymorphism 厚阴影 (用于特别突出的元素)
  clay: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 8 },
    shadowOpacity: 0.18,
    shadowRadius: 24,
    elevation: 8,
  },
} as const;

// ============================================
// Claymorphism 边框风格
// ============================================
export const ClayBorder = {
  // 细边框 (1px)
  thin: {
    borderWidth: 1,
    borderColor: Colors.border,
  },
  // 中边框 (1px)
  medium: {
    borderWidth: 1,
    borderColor: Colors.border,
  },
  // 粗边框 (1px)
  thick: {
    borderWidth: 1,
    borderColor: Colors.border,
  },
  // 主色边框
  primary: {
    borderWidth: 1,
    borderColor: Colors.primary,
  },
} as const;

// ============================================
// 布局常量
// ============================================
export const Layout = {
  paddingTop: Platform.OS === "ios" ? 44 : StatusBar.currentHeight ?? 24,
  paddingBottom: Platform.OS === "ios" ? 34 : 0,
  horizontalPadding: 20,
  cardGap: 24,
  sectionGap: 32,
  tabBarHeight: Platform.OS === "ios" ? 84 : 64,
} as const;

// ============================================
// 动画常量
// ============================================
export const Animation = {
  pageTransition: 300,
  flipDuration: 600,
  pressDuration: 200, // Claymorphism: slower, softer press
  fillDuration: 800,
  springDamping: 0.7,
  springVelocity: 0.8,
} as const;

// ============================================
// 导出默认主题对象
// ============================================
const theme = {
  Colors,
  Gradients,
  Typography,
  Spacing,
  Radius,
  Shadow,
  ClayBorder,
  Layout,
  Animation,
};

export default theme;
