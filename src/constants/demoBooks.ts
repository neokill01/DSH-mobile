// 内置演示词书（本地演示模式开箱即用）。
// 云端模式下，这些数据会改为由 word_books / words / word_book_items 表下发。

import type { Word, WordBook } from "@/types/database";

export const DEMO_BOOKS: WordBook[] = [
  {
    id: "demo-cet4",
    title: "CET-4 高频词 · 演示",
    description: "内置演示词书：24 个四六级高频词，用于本地模式体验完整流程",
    level: "CET4",
    isBuiltin: true,
    wordCount: 24,
  },
  {
    id: "demo-custom",
    title: "我的自定义词书 · 演示",
    description: "示例：通过 CSV 导入自定义词书后的效果",
    level: "CUSTOM",
    isBuiltin: false,
    wordCount: 8,
  },
];

export const DEMO_BOOK_WORDS: Record<string, Word[]> = {
  "demo-cet4": [
    { id: "w-ability", spelling: "ability", phonetic: "/əˈbɪləti/", level: "CET4", definitions: [{ pos: "n.", meaning: "能力；才能", example: "She has the ability to solve complex problems.", translation: "她有解决复杂问题的能力。" }] },
    { id: "w-absorb", spelling: "absorb", phonetic: "/əbˈzɔːrb/", level: "CET4", definitions: [{ pos: "v.", meaning: "吸收；使专心", example: "Plants absorb water through their roots.", translation: "植物通过根部吸收水分。" }] },
    { id: "w-access", spelling: "access", phonetic: "/ˈækses/", level: "CET4", definitions: [{ pos: "n.", meaning: "通道；使用权", example: "Students have free access to the library.", translation: "学生可以免费使用图书馆。" }] },
    { id: "w-achieve", spelling: "achieve", phonetic: "/əˈtʃiːv/", level: "CET4", definitions: [{ pos: "v.", meaning: "实现；达到", example: "You can achieve your goals with hard work.", translation: "通过努力你可以实现目标。" }] },
    { id: "w-acquire", spelling: "acquire", phonetic: "/əˈkwaɪər/", level: "CET4", definitions: [{ pos: "v.", meaning: "获得；习得", example: "It takes time to acquire a new language.", translation: "习得一门新语言需要时间。" }] },
    { id: "w-adapt", spelling: "adapt", phonetic: "/əˈdæpt/", level: "CET4", definitions: [{ pos: "v.", meaning: "适应；改编", example: "It takes time to adapt to a new environment.", translation: "适应新环境需要时间。" }] },
    { id: "w-adequate", spelling: "adequate", phonetic: "/ˈædɪkwət/", level: "CET4", definitions: [{ pos: "adj.", meaning: "足够的；适当的", example: "Make sure you get adequate sleep before the exam.", translation: "考试前确保有充足的睡眠。" }] },
    { id: "w-adjust", spelling: "adjust", phonetic: "/əˈdʒʌst/", level: "CET4", definitions: [{ pos: "v.", meaning: "调整；适应", example: "You can adjust the volume on the screen.", translation: "你可以在屏幕上调节音量。" }] },
    { id: "w-admire", spelling: "admire", phonetic: "/ədˈmaɪər/", level: "CET4", definitions: [{ pos: "v.", meaning: "钦佩；欣赏", example: "I admire her courage and honesty.", translation: "我钦佩她的勇气和诚实。" }] },
    { id: "w-admit", spelling: "admit", phonetic: "/ədˈmɪt/", level: "CET4", definitions: [{ pos: "v.", meaning: "承认；准许进入", example: "He admitted making a mistake.", translation: "他承认犯了错。" }] },
    { id: "w-adopt", spelling: "adopt", phonetic: "/əˈdɑːpt/", level: "CET4", definitions: [{ pos: "v.", meaning: "采用；收养", example: "The company decided to adopt a new strategy.", translation: "公司决定采用新战略。" }] },
    { id: "w-advance", spelling: "advance", phonetic: "/ədˈvæns/", level: "CET4", definitions: [{ pos: "v./n.", meaning: "前进；进展", example: "Science has advanced greatly in the past century.", translation: "科学在过去一个世纪取得了巨大进步。" }] },
    { id: "w-advantage", spelling: "advantage", phonetic: "/ədˈvæntɪdʒ/", level: "CET4", definitions: [{ pos: "n.", meaning: "优势；有利条件", example: "Speaking two languages gives you an advantage.", translation: "会说两种语言让你有优势。" }] },
    { id: "w-adventure", spelling: "adventure", phonetic: "/ədˈventʃər/", level: "CET4", definitions: [{ pos: "n.", meaning: "冒险；奇遇", example: "Traveling alone is a great adventure.", translation: "独自旅行是一场伟大的冒险。" }] },
    { id: "w-affect", spelling: "affect", phonetic: "/əˈfekt/", level: "CET4", definitions: [{ pos: "v.", meaning: "影响", example: "Lack of sleep can affect your memory.", translation: "睡眠不足会影响你的记忆力。" }] },
    { id: "w-afford", spelling: "afford", phonetic: "/əˈfɔːrd/", level: "CET4", definitions: [{ pos: "v.", meaning: "负担得起", example: "We can't afford to waste time.", translation: "我们浪费不起时间。" }] },
    { id: "w-ambition", spelling: "ambition", phonetic: "/æmˈbɪʃən/", level: "CET4", definitions: [{ pos: "n.", meaning: "雄心；抱负", example: "Her ambition is to become a doctor.", translation: "她的抱负是成为一名医生。" }] },
    { id: "w-analyze", spelling: "analyze", phonetic: "/ˈænəlaɪz/", level: "CET4", definitions: [{ pos: "v.", meaning: "分析", example: "Let's analyze the data carefully.", translation: "让我们仔细分析数据。" }] },
    { id: "w-ancient", spelling: "ancient", phonetic: "/ˈeɪnʃənt/", level: "CET4", definitions: [{ pos: "adj.", meaning: "古代的；古老的", example: "The ancient city attracts many tourists.", translation: "这座古城吸引了许多游客。" }] },
    { id: "w-anxiety", spelling: "anxiety", phonetic: "/æŋˈzaɪəti/", level: "CET4", definitions: [{ pos: "n.", meaning: "焦虑；担忧", example: "He felt great anxiety before the interview.", translation: "面试前他感到非常焦虑。" }] },
    { id: "w-appeal", spelling: "appeal", phonetic: "/əˈpiːl/", level: "CET4", definitions: [{ pos: "v./n.", meaning: "吸引；呼吁；上诉", example: "The design appeals to young people.", translation: "这个设计很吸引年轻人。" }] },
    { id: "w-apply", spelling: "apply", phonetic: "/əˈplaɪ/", level: "CET4", definitions: [{ pos: "v.", meaning: "申请；应用", example: "She applied for a job at the bank.", translation: "她申请了银行的工作。" }] },
    { id: "w-appreciate", spelling: "appreciate", phonetic: "/əˈpriːʃieɪt/", level: "CET4", definitions: [{ pos: "v.", meaning: "欣赏；感激", example: "I really appreciate your help.", translation: "我非常感激你的帮助。" }] },
    { id: "w-approach", spelling: "approach", phonetic: "/əˈproʊtʃ/", level: "CET4", definitions: [{ pos: "n./v.", meaning: "方法；接近", example: "We need a new approach to this problem.", translation: "我们需要解决这个问题的新方法。" }] },
  ],
  "demo-custom": [
    { id: "w-vocabulary", spelling: "vocabulary", phonetic: "/vəˈkæbjəleri/", level: "CUSTOM", definitions: [{ pos: "n.", meaning: "词汇", example: "Reading helps expand your vocabulary.", translation: "阅读有助于扩大词汇量。" }] },
    { id: "w-schedule", spelling: "schedule", phonetic: "/ˈskedʒuːl/", level: "CUSTOM", definitions: [{ pos: "n.", meaning: "日程表；安排", example: "I have a busy schedule this week.", translation: "我这周日程很满。" }] },
    { id: "w-review", spelling: "review", phonetic: "/rɪˈvjuː/", level: "CUSTOM", definitions: [{ pos: "v./n.", meaning: "复习；回顾", example: "Review what you learned every day.", translation: "每天复习你学到的东西。" }] },
    { id: "w-progress", spelling: "progress", phonetic: "/ˈprɑːɡres/", level: "CUSTOM", definitions: [{ pos: "n./v.", meaning: "进步；进展", example: "You are making steady progress.", translation: "你在稳步进步。" }] },
    { id: "w-persist", spelling: "persist", phonetic: "/pərˈsɪst/", level: "CUSTOM", definitions: [{ pos: "v.", meaning: "坚持", example: "Persist in your efforts and you will succeed.", translation: "坚持努力你就能成功。" }] },
    { id: "w-fluent", spelling: "fluent", phonetic: "/ˈfluːənt/", level: "CUSTOM", definitions: [{ pos: "adj.", meaning: "流利的", example: "She is fluent in three languages.", translation: "她能流利说三种语言。" }] },
    { id: "w-memorize", spelling: "memorize", phonetic: "/ˈmeməraɪz/", level: "CUSTOM", definitions: [{ pos: "v.", meaning: "记住；背熟", example: "Try to memorize these words by heart.", translation: "试着把这些单词背熟。" }] },
    { id: "w-broaden", spelling: "broaden", phonetic: "/ˈbrɔːdn/", level: "CUSTOM", definitions: [{ pos: "v.", meaning: "拓宽", example: "Travel can broaden your horizons.", translation: "旅行能开阔你的眼界。" }] },
  ],
};
