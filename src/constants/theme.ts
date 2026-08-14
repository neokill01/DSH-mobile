// 共享主题常量 —— 统一颜色、间距、阴影、圆角

export const Colors = {
  primary: "#2F7FE0",
  primaryLight: "#5A9FEF",
  primaryDark: "#1D6BC4",
  primaryBg: "#EFF4FF",

  background: "#F2F6FC",
  surface: "#FFFFFF",
  surfaceAlt: "#F7FAFF",

  text: "#1A1A2E",
  textSecondary: "#374151",
  textTertiary: "#6B7280",
  textMuted: "#9CA3AF",
  textHint: "#C0C7D6",

  border: "#E5E7EB",
  borderLight: "#F1F4F9",
  divider: "#EEF1F6",

  success: "#30A46C",
  successBg: "#EDFCF2",
  warning: "#F5A623",
  warningBg: "#FFF7E6",
  danger: "#E5484D",
  dangerBg: "#FDECEC",

  amber: "#F5A623",
  green: "#30A46C",
} as const;

export const Spacing = {
  xs: 4,
  sm: 8,
  md: 12,
  lg: 16,
  xl: 20,
  xxl: 24,
} as const;

export const Radius = {
  sm: 8,
  md: 12,
  lg: 16,
  xl: 20,
  pill: 999,
} as const;

export const Shadow = {
  card: {
    shadowColor: "#1A1A2E",
    shadowOpacity: 0.06,
    shadowRadius: 10,
    shadowOffset: { width: 0, height: 2 },
    elevation: 3,
  },
  soft: {
    shadowColor: "#1A1A2E",
    shadowOpacity: 0.04,
    shadowRadius: 6,
    shadowOffset: { width: 0, height: 1 },
    elevation: 1,
  },
  lifted: {
    shadowColor: "#1A1A2E",
    shadowOpacity: 0.1,
    shadowRadius: 16,
    shadowOffset: { width: 0, height: 4 },
    elevation: 5,
  },
} as const;
