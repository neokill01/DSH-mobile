// 进度卡片组件 - 青春活力风格
// 渐变进度条、更圆润、更清晰的视觉

import React from "react";
import { View, Text, StyleSheet } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";

interface ProgressCardProps {
  title: string;
  current: number;
  total: number;
  color?: string;
  icon?: keyof typeof Ionicons.glyphMap;
}

export default function ProgressCard({
  title,
  current,
  total,
  color = Colors.primary,
  icon,
}: ProgressCardProps) {
  const percentage = total > 0 ? Math.round((current / total) * 100) : 0;

  return (
    <View style={styles.container}>
      <View style={styles.header}>
        {icon && (
          <View style={[styles.iconWrap, { backgroundColor: color + "15" }]}>
            <Ionicons name={icon} size={16} color={color} />
          </View>
        )}
        <Text style={styles.title}>{title}</Text>
        <Text style={[styles.count, { color }]}>
          {current}/{total}
        </Text>
      </View>

      <View style={styles.progressContainer}>
        <View style={styles.progressBg}>
          <View
            style={[
              styles.progressFill,
              { width: `${percentage}%`, backgroundColor: color },
            ]}
          />
        </View>
        <Text style={[styles.percentage, { color }]}>{percentage}%</Text>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    // Claymorphism: thin border
    borderWidth: 1,
    borderColor: Colors.border,
    ...Shadow.card,
  },
  header: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: Spacing.md,
  },
  iconWrap: {
    width: 28,
    height: 28,
    borderRadius: Radius.sm,
    alignItems: "center",
    justifyContent: "center",
    marginRight: Spacing.sm,
  },
  title: {
    ...Typography.body,
    fontWeight: "600",
    flex: 1,
  },
  count: {
    ...Typography.label,
    fontWeight: "700",
  },
  progressContainer: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.md,
  },
  progressBg: {
    flex: 1,
    height: 10,
    backgroundColor: Colors.divider,
    borderRadius: Radius.pill,
    overflow: "hidden",
  },
  progressFill: {
    height: "100%",
    borderRadius: Radius.pill,
  },
  percentage: {
    ...Typography.label,
    minWidth: 44,
    textAlign: "right",
    fontWeight: "700",
  },
});
