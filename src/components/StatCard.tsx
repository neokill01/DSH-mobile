// 统计卡片组件 - 青春活力风格
// 渐变图标背景、更大圆角、更清晰的层级

import React, { memo } from "react";
import { View, Text, StyleSheet } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";

interface StatCardProps {
  iconName: keyof typeof Ionicons.glyphMap;
  iconColor?: string;
  value: number | string;
  label: string;
  color: string;
}

function StatCard({
  iconName,
  iconColor,
  value,
  label,
  color,
}: StatCardProps) {
  const bgColor = color + "12";

  return (
    <View style={[styles.container, { backgroundColor: bgColor }]}>
      <View
        style={[styles.iconWrap, { backgroundColor: color }]}
      >
        <Ionicons name={iconName} size={22} color={Colors.white} />
      </View>
      <Text style={[styles.value, { color }]}>{value}</Text>
      <Text style={styles.label}>{label}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: "center",
    padding: Spacing.md,
    borderRadius: Radius.lg,
    // Claymorphism: thin border
    borderWidth: 1,
    borderColor: Colors.border,
    ...Shadow.card,
  },
  iconWrap: {
    width: 48,
    height: 48,
    borderRadius: 24,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: Spacing.sm,
  },
  value: {
    ...Typography.stat,
    fontSize: 26,
    marginBottom: Spacing.xs,
  },
  label: {
    ...Typography.badge,
    color: Colors.textTertiary,
    textAlign: "center",
  },
});

export default memo(StatCard);
