import React from "react";
import { View, Text, StyleSheet } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "../constants/theme";

interface DayData {
  day: string;
  newWords: number;
  reviews: number;
}

interface WeeklyChartProps {
  data: DayData[];
  maxValue?: number;
}

export default function WeeklyChart({ data, maxValue }: WeeklyChartProps) {
  // 计算最大值用于缩放
  const max = maxValue || Math.max(...data.map((d) => d.newWords + d.reviews), 1);

  return (
    <View style={styles.container}>
      <View style={styles.sectionTitleRow}>
        <Ionicons name="bar-chart" size={18} color={Colors.primary} />
        <Text style={styles.sectionTitle}>近7天学习趋势</Text>
      </View>

      <View style={styles.chart}>
        {/* Y轴标签 */}
        <View style={styles.yAxis}>
          {[max, Math.round(max * 0.75), Math.round(max * 0.5), Math.round(max * 0.25), 0].map(
            (value, index) => (
              <Text key={index} style={styles.yLabel}>
                {value}
              </Text>
            )
          )}
        </View>

        {/* 柱状图 */}
        <View style={styles.bars}>
          {data.map((day, index) => {
            const totalHeight = ((day.newWords + day.reviews) / max) * 150;
            const newWordsHeight = (day.newWords / max) * 150;
            const reviewsHeight = (day.reviews / max) * 150;

            return (
              <View key={index} style={styles.barGroup}>
                <View style={styles.barContainer}>
                  {/* 复习（底部） */}
                  <View
                    style={[
                      styles.bar,
                      {
                        height: reviewsHeight,
                        backgroundColor: Colors.success,
                      },
                    ]}
                  />
                  {/* 新词（顶部） */}
                  <View
                    style={[
                      styles.bar,
                      {
                        height: newWordsHeight,
                        backgroundColor: Colors.primary,
                      },
                    ]}
                  />
                </View>
                <Text style={styles.xLabel}>{day.day}</Text>
              </View>
            );
          })}
        </View>
      </View>

      {/* 图例 */}
      <View style={styles.legend}>
        <View style={styles.legendItem}>
          <View style={[styles.legendDot, { backgroundColor: Colors.primary }]} />
          <Text style={styles.legendText}>新词</Text>
        </View>
        <View style={styles.legendItem}>
          <View style={[styles.legendDot, { backgroundColor: Colors.success }]} />
          <Text style={styles.legendText}>复习</Text>
        </View>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.md,
    padding: Spacing.lg,
    marginBottom: Spacing.lg,
    ...Shadow.card,
  },
  sectionTitleRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
    marginBottom: Spacing.lg,
  },
  sectionTitle: {
    ...Typography.h3,
  },
  chart: {
    flexDirection: "row",
    height: 200,
    marginBottom: Spacing.lg,
  },
  yAxis: {
    width: 30,
    justifyContent: "space-between",
    alignItems: "flex-end",
    paddingRight: Spacing.sm,
  },
  yLabel: {
    ...Typography.label,
    color: Colors.textMuted,
    fontSize: 10,
  },
  bars: {
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-around",
    alignItems: "flex-end",
    borderLeftWidth: 1,
    borderLeftColor: Colors.border,
    borderBottomWidth: 1,
    borderBottomColor: Colors.border,
    paddingLeft: Spacing.sm,
  },
  barGroup: {
    alignItems: "center",
    flex: 1,
  },
  barContainer: {
    width: 20,
    justifyContent: "flex-end",
    alignItems: "center",
    gap: 2,
  },
  bar: {
    width: "100%",
    borderRadius: Radius.sm,
  },
  xLabel: {
    ...Typography.label,
    color: Colors.textMuted,
    fontSize: 10,
    marginTop: Spacing.xs,
  },
  legend: {
    flexDirection: "row",
    justifyContent: "center",
    gap: Spacing.xl,
  },
  legendItem: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
  },
  legendDot: {
    width: 10,
    height: 10,
    borderRadius: 5,
  },
  legendText: {
    ...Typography.caption,
    color: Colors.textTertiary,
  },
});
