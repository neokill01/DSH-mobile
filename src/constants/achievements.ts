// 成就定义（对应 achievements 表）。解锁判定规则在本地/云端仓库中实现。
// 注意：这里与 PRD 中 achievements.code 一一对应，新增成就在此登记。

export interface Achievement {
  code: string;
  title: string;
  description: string;
  icon: string;
}

export const ACHIEVEMENTS: Achievement[] = [
  {
    code: "first_day",
    title: "第一天",
    description: "完成首次打卡",
    icon: "🌱",
  },
  {
    code: "streak_3",
    title: "小试牛刀",
    description: "连续打卡 3 天",
    icon: "🔥",
  },
  {
    code: "streak_7",
    title: "一周之约",
    description: "连续打卡 7 天",
    icon: "⚡",
  },
  {
    code: "streak_30",
    title: "坚持月余",
    description: "连续打卡 30 天",
    icon: "🏆",
  },
  {
    code: "words_100",
    title: "百词斩棘",
    description: "累计学习 100 个单词",
    icon: "📚",
  },
  {
    code: "words_500",
    title: "五百大将",
    description: "累计学习 500 个单词",
    icon: "🎖️",
  },
  {
    code: "master_50",
    title: "初窥门径",
    description: "掌握 50 个单词（进入 Review 状态）",
    icon: "💪",
  },
];
