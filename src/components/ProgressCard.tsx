import React from "react";
import { View, Text, StyleSheet } from "react-native";
import { Colors, Typography, Spacing, Radius, Shadow } from "../constants/theme";

interface ProgressCardProps {
  title: string;
  current: number;
  total: number;
  color?: string;
  icon?: string;
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
        {icon && <Text style={styles.icon}>{icon}</Text>}
        <Text style={styles.title}>{title}</Text>
        <Text style={styles.count}>
          {current}/{total}
        </Text>
      </View>

      <View style={styles.progressContainer}>
        <View style={styles.progressBg}>
          <View
            style={[
              styles.progressFill,
              {
                width: `${percentage}%`,
                backgroundColor: color,
              },
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
    borderRadius: Radius.md,
    padding: Spacing.lg,
    ...Shadow.card,
  },
  header: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: Spacing.md,
  },
  icon: {
    fontSize: 18,
    marginRight: Spacing.sm,
  },
  title: {
    ...Typography.body,
    flex: 1,
  },
  count: {
    ...Typography.caption,
    color: Colors.textTertiary,
  },
  progressContainer: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.md,
  },
  progressBg: {
    flex: 1,
    height: 8,
    backgroundColor: Colors.borderLight,
    borderRadius: Radius.pill,
    overflow: "hidden",
  },
  progressFill: {
    height: "100%",
    borderRadius: Radius.pill,
  },
  percentage: {
    ...Typography.label,
    minWidth: 40,
    textAlign: "right",
  },
});
