// 统计页：概览数字 + 近 7 天学习柱状图（新词/复习）

import { useCallback, useState } from "react";
import { ScrollView, StyleSheet, Text, View } from "react-native";
import { useFocusEffect } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { getRepository } from "@/lib/repository";
import { dateStr } from "@/lib/statsUtil";
import { Colors, Typography, Spacing, Radius } from "@/constants/theme";
import StatCard from "@/components/StatCard";
import WeeklyChart from "@/components/WeeklyChart";
import SectionTitle from "@/components/ui/SectionTitle";
import Card from "@/components/ui/Card";
import type { DailyCount, Stats } from "@/types/database";

const WEEKDAYS = ["日", "一", "二", "三", "四", "五", "六"];

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

  // 转换数据格式
  const chartData = daily.map((d) => {
    const day = new Date(`${d.date}T00:00:00`);
    const isToday = d.date === dateStr(new Date());
    return {
      day: isToday ? "今" : WEEKDAYS[day.getDay()],
      newWords: d.newWords,
      reviews: d.reviews,
    };
  });

  const totalLearned = daily.reduce((s, d) => s + d.newWords, 0);
  const totalReviews = daily.reduce((s, d) => s + d.reviews, 0);

  return (
    <ScrollView
      style={styles.container}
      contentContainerStyle={[
        styles.content,
        { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + 100 },
      ]}
      showsVerticalScrollIndicator={false}
    >
      <Text style={styles.title}>📊 学习统计</Text>

      {/* 概览卡片 */}
      <View style={styles.summaryRow}>
        <StatCard
          iconName="book"
          value={stats?.totalLearned ?? 0}
          label="已学习"
          color={Colors.primary}
        />
        <StatCard
          iconName="checkmark-circle"
          value={stats?.mastered ?? 0}
          label="已掌握"
          color={Colors.success}
        />
        <StatCard
          iconName="flame"
          value={stats?.streak ?? 0}
          label="连续天数"
          color={Colors.gold}
        />
      </View>

      {/* 柱状图 */}
      <WeeklyChart data={chartData} />

      {/* 本周小结 */}
      <Card style={{ borderWidth: 1, borderColor: Colors.border }}>
        <SectionTitle icon="document-text" title="本周总结" />
        <View style={styles.summaryItem}>
          <Text style={styles.summaryLabel}>新词学习</Text>
          <Text style={styles.summaryValue}>{totalLearned} 个</Text>
        </View>
        <View style={styles.summaryItem}>
          <Text style={styles.summaryLabel}>复习完成</Text>
          <Text style={styles.summaryValue}>{totalReviews} 次</Text>
        </View>
        <View style={styles.summaryItem}>
          <Text style={styles.summaryLabel}>掌握率</Text>
          <Text style={[styles.summaryValue, { color: Colors.success }]}>
            {stats?.totalLearned
              ? Math.round(((stats?.mastered ?? 0) / stats.totalLearned) * 100)
              : 0}
            %
          </Text>
        </View>

        <View style={[styles.tipBox, { backgroundColor: Colors.goldBg }]}>
          <Ionicons name="bulb" size={14} color={Colors.orange} />
          <Text style={styles.tipText}>坚持就是胜利！每天进步一点点</Text>
        </View>
      </Card>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.background },
  content: { padding: Spacing.xl },
  title: {
    ...Typography.h1,
    color: Colors.primary,
    marginBottom: Spacing.xl,
  },

  // Summary cards
  summaryRow: {
    flexDirection: "row",
    gap: Spacing.md,
    marginBottom: Spacing.xl,
  },

  // Summary
  summaryItem: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    paddingVertical: Spacing.md,
    borderBottomWidth: 1,
    borderBottomColor: Colors.divider,
  },
  summaryLabel: {
    ...Typography.body,
    color: Colors.textSecondary,
  },
  summaryValue: {
    ...Typography.body,
    fontWeight: "600",
    color: Colors.text,
  },

  // Tip
  tipBox: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
    borderRadius: Radius.sm,
    borderWidth: 1,
    borderColor: Colors.gold,
    padding: Spacing.md,
    marginTop: Spacing.lg,
  },
  tipText: {
    ...Typography.caption,
    color: Colors.orange,
    flex: 1,
  },
});
