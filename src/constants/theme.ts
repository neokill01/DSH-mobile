// 词记 (Word Nest) 设计系统 - 墨韵书卷风格
// 融合东方书法美学与现代极简设计

import { Platform, StatusBar } from "react-native";

// ============================================
// 色彩系统
// ============================================
export const Colors = {
  // 主色调 - 墨韵蓝
  primary: "#1E3A5F",
  primaryLight: "#2D5A8F",
  primaryDark: "#132845",
  primaryBg: "#E8EDF5",

  // 辅助色 - 朱砂红
  accent: "#C85A4A",
  accentLight: "#D4705F",
  accentDark: "#A84838",
  accentBg: "#F5E8E6",

  // 点缀色 - 琥珀金
  gold: "#D4A853",
  goldLight: "#E0BD75",
  goldDark: "#B8923D",
  goldBg: "#F5F0E0",

  // 成功色 - 青玉绿
  success: "#2D8B6F",
  successLight: "#3DAB8F",
  successDark: "#1D6B4F",
  successBg: "#E5F2ED",

  // 警告色
  warning: "#D4A853",
  warningBg: "#F5F0E0",

  // 危险色
  danger: "#C85A4A",
  dangerBg: "#F5E8E6",

  // 背景色 - 宣纸白
  background: "#F8F6F1",
  surface: "#FFFFFF",
  surfaceAlt: "#FAF8F5",

  // 文字色 - 墨色系
  text: "#1A1A2E",
  textSecondary: "#4A5568",
  textTertiary: "#6B7B8D",
  textMuted: "#9CA3AF",
  textHint: "#C0C7D6",

  // 边框色
  border: "#E2DED5",
  borderLight: "#F0EDE8",
  divider: "#E8E4DC",

  // 评分按钮色
  ratingForgot: "#C85A4A",
  ratingVague: "#D4A853",
  ratingRemembered: "#2D8B6F",
  ratingEasy: "#2F7FE0",
} as const;

// ============================================
// 字体系统
// ============================================
export const Typography = {
  // 大标题
  h1: {
    fontSize: 28,
    fontWeight: "700" as const,
    lineHeight: 36,
    color: Colors.text,
  },
  // 标题
  h2: {
    fontSize: 22,
    fontWeight: "600" as const,
    lineHeight: 30,
    color: Colors.text,
  },
  // 副标题
  h3: {
    fontSize: 18,
    fontWeight: "500" as const,
    lineHeight: 26,
    color: Colors.text,
  },
  // 正文
  body: {
    fontSize: 16,
    fontWeight: "400" as const,
    lineHeight: 24,
    color: Colors.text,
  },
  // 辅助文字
  caption: {
    fontSize: 14,
    fontWeight: "400" as const,
    lineHeight: 20,
    color: Colors.textTertiary,
  },
  // 标签
  label: {
    fontSize: 12,
    fontWeight: "500" as const,
    lineHeight: 16,
    color: Colors.textSecondary,
  },
  // 单词（大号）
  word: {
    fontSize: 32,
    fontWeight: "600" as const,
    lineHeight: 40,
    color: Colors.text,
  },
  // 音标
  phonetic: {
    fontSize: 16,
    fontWeight: "400" as const,
    lineHeight: 24,
    color: Colors.textTertiary,
  },
  // 数字（统计用）
  stat: {
    fontSize: 24,
    fontWeight: "700" as const,
    lineHeight: 32,
    color: Colors.primary,
  },
} as const;

// ============================================
// 间距系统
// ============================================
export const Spacing = {
  xs: 4,
  sm: 8,
  md: 12,
  lg: 16,
  xl: 20,
  xxl: 24,
  xxxl: 32,
  section: 40,
} as const;

// ============================================
// 圆角系统
// ============================================
export const Radius = {
  sm: 8,
  md: 12,
  lg: 16,
  xl: 20,
  pill: 999,
} as const;

// ============================================
// 阴影系统
// ============================================
export const Shadow = {
  // 卡片阴影
  card: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.08,
    shadowRadius: 12,
    elevation: 3,
  },
  // 软阴影
  soft: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.04,
    shadowRadius: 6,
    elevation: 1,
  },
  // 悬浮阴影（按钮、弹窗）
  lifted: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.12,
    shadowRadius: 16,
    elevation: 6,
  },
  // 按钮阴影
  button: {
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.15,
    shadowRadius: 8,
    elevation: 4,
  },
} as const;

// ============================================
// 布局常量
// ============================================
export const Layout = {
  // 安全区域
  paddingTop: Platform.OS === "ios" ? 44 : StatusBar.currentHeight ?? 24,
  paddingBottom: Platform.OS === "ios" ? 34 : 0,

  // 页面边距
  horizontalPadding: 20,

  // 卡片间距
  cardGap: 16,

  // 区块间距
  sectionGap: 24,

  // 底部导航高度
  tabBarHeight: Platform.OS === "ios" ? 84 : 64,
} as const;

// ============================================
// 动画常量
// ============================================
export const Animation = {
  // 页面转场
  pageTransition: 300,

  // 卡片翻转
  flipDuration: 600,

  // 按钮交互
  pressDuration: 100,

  // 进度条填充
  fillDuration: 800,
} as const;

// ============================================
// 导出默认主题对象（兼容旧代码）
// ============================================
const theme = {
  Colors,
  Typography,
  Spacing,
  Radius,
  Shadow,
  Layout,
  Animation,
};

export default theme;
