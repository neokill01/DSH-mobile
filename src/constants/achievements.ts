// 成就定义（对应 achievements 表）。解锁判定规则在本地/云端仓库中实现。
// 青春活力风格：增加稀有度等级和更丰富的视觉表现

import { Ionicons } from "@expo/vector-icons";
import { Colors } from "./theme";

export type AchievementRarity = "common" | "rare" | "epic" | "legendary";

export interface Achievement {
  code: string;
  title: string;
  description: string;
  iconName: keyof typeof Ionicons.glyphMap;
  rarity: AchievementRarity;
  xp: number; // 解锁奖励经验值
}

// 稀有度颜色映射
export const RARITY_COLORS: Record<AchievementRarity, { bg: string; border: string; label: string }> = {
  common: { bg: Colors.primaryBg, border: Colors.primary, label: "普通" },
  rare: { bg: Colors.skyBg, border: Colors.sky, label: "稀有" },
  epic: { bg: Colors.purpleBg, border: Colors.purple, label: "史诗" },
  legendary: { bg: Colors.goldBg, border: Colors.gold, label: "传说" },
};

export const ACHIEVEMENTS: Achievement[] = [
  {
    code: "first_day",
    title: "初出茅庐",
    description: "完成首次打卡",
    iconName: "leaf",
    rarity: "common",
    xp: 10,
  },
  {
    code: "streak_3",
    title: "小试牛刀",
    description: "连续打卡 3 天",
    iconName: "flame",
    rarity: "common",
    xp: 30,
  },
  {
    code: "streak_7",
    title: "一周之约",
    description: "连续打卡 7 天",
    iconName: "flash",
    rarity: "rare",
    xp: 70,
  },
  {
    code: "streak_30",
    title: "月度之星",
    description: "连续打卡 30 天",
    iconName: "trophy",
    rarity: "epic",
    xp: 300,
  },
  {
    code: "words_100",
    title: "百词斩棘",
    description: "累计学习 100 个单词",
    iconName: "book",
    rarity: "rare",
    xp: 100,
  },
  {
    code: "words_500",
    title: "词汇大师",
    description: "累计学习 500 个单词",
    iconName: "ribbon",
    rarity: "epic",
    xp: 500,
  },
  {
    code: "master_50",
    title: "初窥门径",
    description: "掌握 50 个单词",
    iconName: "checkmark-done",
    rarity: "rare",
    xp: 150,
  },
];
