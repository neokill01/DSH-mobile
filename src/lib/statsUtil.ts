// 统计纯函数：本地与云端仓库共用，保证两模式统计口径一致。

import type { DailyCount } from "@/types/database";

export function dateStr(d: Date): string {
  const y = d.getFullYear();
  const m = String(d.getMonth() + 1).padStart(2, "0");
  const day = String(d.getDate()).padStart(2, "0");
  return `${y}-${m}-${day}`;
}

/** 连续打卡天数：从今天（或昨天，若今天尚未学习）向前数有记录的天数 */
export function calcStreak(logs: Array<{ clientTs: string }>): number {
  const days = new Set(logs.map((l) => dateStr(new Date(l.clientTs))));
  let streak = 0;
  const cursor = new Date();
  if (!days.has(dateStr(cursor))) cursor.setDate(cursor.getDate() - 1);
  while (days.has(dateStr(cursor))) {
    streak++;
    cursor.setDate(cursor.getDate() - 1);
  }
  return streak;
}

/** 每个词首次学习的日期（用于区分"今日新学"与"今日复习"） */
export function firstLogDates(
  logs: Array<{ clientTs: string; wordId: string }>,
): Map<string, string> {
  const map = new Map<string, string>();
  for (const l of logs) {
    const d = dateStr(new Date(l.clientTs));
    if (!map.has(l.wordId)) map.set(l.wordId, d);
  }
  return map;
}

/** 最近 days 天的每日新学/复习计数 */
export function dailyCountsFromLogs(
  logs: Array<{ clientTs: string; wordId: string }>,
  days: number,
): DailyCount[] {
  const first = firstLogDates(logs);
  const out: DailyCount[] = [];
  const now = new Date();
  for (let i = days - 1; i >= 0; i--) {
    const d = new Date(now.getFullYear(), now.getMonth(), now.getDate() - i);
    const key = dateStr(d);
    const dayLogs = logs.filter((l) => dateStr(new Date(l.clientTs)) === key);
    const dayNew = dayLogs.filter((l) => first.get(l.wordId) === key).length;
    out.push({ date: key, newWords: dayNew, reviews: dayLogs.length - dayNew });
  }
  return out;
}
