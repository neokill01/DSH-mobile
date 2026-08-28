// 统一空状态组件 - 青春活力风格
import React from "react";
import { View, Text, StyleSheet } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Spacing, Typography, Radius } from "@/constants/theme";
import GradientButton from "./GradientButton";

interface EmptyStateProps {
  icon: keyof typeof Ionicons.glyphMap;
  title: string;
  description?: string;
  actionLabel?: string;
  onAction?: () => void;
  iconColor?: string;
}

export default function EmptyState({
  icon,
  title,
  description,
  actionLabel,
  onAction,
  iconColor = Colors.primary,
}: EmptyStateProps) {
  return (
    <View style={styles.container}>
      <View style={[styles.iconWrap, { backgroundColor: iconColor + "15" }]}>
        <Ionicons name={icon} size={48} color={iconColor} />
      </View>
      <Text style={styles.title}>{title}</Text>
      {description && (
        <Text style={styles.description}>{description}</Text>
      )}
      {actionLabel && onAction && (
        <GradientButton
          onPress={onAction}
          size="sm"
          style={styles.button}
        >
          {actionLabel}
        </GradientButton>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    alignItems: "center",
    justifyContent: "center",
    paddingVertical: Spacing.xxxl,
    paddingHorizontal: Spacing.xl,
  },
  iconWrap: {
    width: 96,
    height: 96,
    borderRadius: 48,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: Spacing.lg,
  },
  title: {
    ...Typography.h3,
    textAlign: "center",
    marginBottom: Spacing.sm,
  },
  description: {
    ...Typography.body,
    color: Colors.textSecondary,
    textAlign: "center",
    lineHeight: 24,
    marginBottom: Spacing.xl,
  },
  button: {
    marginTop: Spacing.md,
  },
});
