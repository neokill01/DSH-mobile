// 四档打分定义（产品文案与颜色），与 ts-fsrs 的 Rating 对应：
// UI 值 0..3 → ts-fsrs Rating.Again(1)..Easy(4)

export const RATINGS = [
  { value: 0, label: "忘记", hint: "完全没想起来", color: "#E5484D" },
  { value: 1, label: "模糊", hint: "勉强想起", color: "#F5A623" },
  { value: 2, label: "记得", hint: "正常回忆", color: "#30A46C" },
  { value: 3, label: "轻松", hint: "秒答", color: "#2F7FE0" },
] as const;

export type RatingValue = (typeof RATINGS)[number]["value"];
