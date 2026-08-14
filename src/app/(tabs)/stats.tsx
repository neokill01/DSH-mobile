// 统计页：概览数字 + 近 7 天学习柱状图（新词/复习）

import { useCallback, useState } from "react";
import { ScrollView, StyleSheet, Text, View } from "react-native";
import { useFocusEffect } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { getRepository } from "@/lib/repository";
import { dateStr } from "@/lib/statsUtil";
import { Colors, Spacing, Radius, Shadow } from "@/constants/theme";
import type { DailyCount, Stats } from "@/types/database";

const WEEKDAYS = ["日", "一", "二", "三", "四", "五", "六"];
const BAR_MAX = 120;

export default function StatsScreen() {
  const insets = useSafeAreaInsets();
  const [stats, setStats] = useState<Stats | null>(null);
  const [daily, setDaily] = useState<DailyCount[]>([]);

  useFocusEffect(
    useCallback(() => {
      const repo = getRepository();
      repo.getStats().then(setStats).catch(() => {});
      repo.getDailyCounts(7).then(setDaily).catch(() => {});
    }, []),
  );

  const maxCount = Math.max(1, ...daily.map((d) => d.newWords + d.reviews));

  const summaryItems = [
    { value: stats?.totalLearned ?? 0, label: "累计学习", icon: "library-outline" as const, color: Colors.primary },
    { value: stats?.mastered ?? 0, label: "已掌握", icon: "checkmark-circle-outline" as const, color: Colors.success },
    { value: stats?.streak ?? 0, label: "连续天数", icon: "flame-outline" as const, color: Colors.warning },
  ];

  return (
    <ScrollView
      style={styles.container}
      contentContainerStyle={[
        styles.content,
        { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + 100 },
      ]}
      showsVerticalScrollIndicator={false}
    >
      <Text style={styles.title}>学习统计</Text>

      {/* 概览数字 */}
      <View style={styles.summaryRow}>
        {summaryItems.map((item) => (
          <View key={item.label} style={styles.summaryCard}>
            <View style={[styles.summaryIconWrap, { backgroundColor: item.color + "18" }]}>
              <Ionicons name={item.icon} size={18} color={item.color} />
            </View>
            <Text style={styles.summaryNum}>{item.value}</Text>
            <Text style={styles.summaryLabel}>{item.label}</Text>
          </View>
        ))}
      </View>

      {/* 近 7 天柱状图 */}
      <View style={styles.card}>
        <View style={styles.cardTitleRow}>
          <Ionicons name="bar-chart-outline" size={16} color={Colors.text} />
          <Text style={styles.cardTitle}>近 7 天</Text>
        </View>
        <View style={styles.chart}>
          {daily.map((d) => {
            const total = d.newWords + d.reviews;
            const h = Math.max(4, (total / maxCount) * BAR_MAX);
            const day = new Date(`${d.date}T00:00:00`);
            const isToday = d.date === dateStr(new Date());
            return (
              <View key={d.date} style={styles.barCol}>
                <View style={[styles.bar, { height: h }]}>
                  <View
                    style={[
                      styles.barNew,
                      { height: `${(d.newWords / Math.max(1, total)) * 100}%` },
                    ]}
                  />
                  <View style={[styles.barReview, { flex: 1 }]} />
                </View>
                <Text style={[styles.barLabel, isToday && styles.barLabelToday]}>
                  {isToday ? "今" : WEEKDAYS[day.getDay()]}
                </Text>
              </View>
            );
          })}
        </View>
        <View style={styles.legend}>
          <View style={styles.legendItem}>
            <View style={[styles.legendDot, { backgroundColor: Colors.amber }]} />
            <Text style={styles.legendText}>新词</Text>
          </View>
          <View style={styles.legendItem}>
            <View style={[styles.legendDot, { backgroundColor: Colors.green }]} />
            <Text style={styles.legendText}>复习</Text>
          </View>
        </View>
      </View>

      {/* 本周小结 */}
      <View style={styles.card}>
        <View style={styles.cardTitleRow}>
          <Ionicons name="document-text-outline" size={16} color={Colors.text} />
          <Text style={styles.cardTitle}>本周小结</Text>
        </View>
        <Text style={styles.summaryText}>
          本周共学习{" "}
          {daily.reduce((s, d) => s + d.newWords + d.reviews, 0)} 次，其中新学{" "}
          {daily.reduce((s, d) => s + d.newWords, 0)} 词。
        </Text>
        <View style={styles.tipBox}>
          <Ionicons name="bulb-outline" size={14} color={Colors.warning} />
          <Text style={styles.summaryHint}>
            坚持每天复习，遗忘曲线会越来越平缓
          </Text>
        </View>
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.background },
  content: { padding: Spacing.xl },
  title: {
    fontSize: 26,
    fontWeight: "800",
    color: Colors.text,
    marginBottom: 18,
    letterSpacing: -0.5,
  },

  // Summary cards
  summaryRow: { flexDirection: "row", gap: 10, marginBottom: 14 },
  summaryCard: {
    flex: 1,
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    paddingVertical: 16,
    alignItems: "center",
    gap: 6,
    ...Shadow.card,
  },
  summaryIconWrap: {
    width: 34,
    height: 34,
    borderRadius: 17,
    alignItems: "center",
    justifyContent: "center",
  },
  summaryNum: { fontSize: 24, fontWeight: "800", color: Colors.text },
  summaryLabel: { fontSize: 12, color: Colors.textMuted },

  // Card
  card: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    marginBottom: 14,
    ...Shadow.card,
  },
  cardTitleRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
    marginBottom: 14,
  },
  cardTitle: { fontSize: 15, fontWeight: "700", color: Colors.text },

  // Chart
  chart: { flexDirection: "row", alignItems: "flex-end", height: BAR_MAX + 24 },
  barCol: { flex: 1, alignItems: "center" },
  bar: {
    width: 22,
    borderRadius: 6,
    backgroundColor: Colors.divider,
    overflow: "hidden",
    justifyContent: "flex-end",
  },
  barNew: { width: "100%", backgroundColor: Colors.amber },
  barReview: { width: "100%", backgroundColor: Colors.green },
  barLabel: { fontSize: 11, color: Colors.textMuted, marginTop: 6 },
  barLabelToday: { color: Colors.primary, fontWeight: "700" },

  // Legend
  legend: { flexDirection: "row", gap: 16, marginTop: 14 },
  legendItem: { flexDirection: "row", alignItems: "center", gap: 6 },
  legendDot: { width: 10, height: 10, borderRadius: 5 },
  legendText: { fontSize: 12, color: Colors.textTertiary },

  // Summary
  summaryText: { fontSize: 14, color: Colors.textSecondary, lineHeight: 22 },
  tipBox: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
    backgroundColor: Colors.warningBg,
    borderRadius: Radius.sm,
    padding: 10,
    marginTop: 12,
  },
  summaryHint: { fontSize: 12, color: Colors.textTertiary, flex: 1, lineHeight: 18 },
});
