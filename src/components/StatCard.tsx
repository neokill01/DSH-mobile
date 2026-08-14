import React from "react";
import { View, Text, StyleSheet } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius } from "../constants/theme";

interface StatCardProps {
  iconName: keyof typeof Ionicons.glyphMap;
  iconColor?: string;
  value: number | string;
  label: string;
  color: string;
}

export default function StatCard({
  iconName,
  iconColor,
  value,
  label,
  color,
}: StatCardProps) {
  // 生成浅色背景
  const bgColor = color + "15";

  return (
    <View style={[styles.container, { backgroundColor: bgColor }]}>
      <View style={[styles.iconWrap, { backgroundColor: color + "20" }]}>
        <Ionicons name={iconName} size={22} color={iconColor || color} />
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
    padding: Spacing.lg,
    borderRadius: Radius.md,
  },
  iconWrap: {
    width: 44,
    height: 44,
    borderRadius: 22,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: Spacing.sm,
  },
  value: {
    ...Typography.stat,
    marginBottom: Spacing.xs,
  },
  label: {
    ...Typography.label,
    color: Colors.textTertiary,
    textAlign: "center",
  },
});
