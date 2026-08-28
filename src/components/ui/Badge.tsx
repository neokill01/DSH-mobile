// 通用徽章组件 - 青春活力风格
import React from "react";
import { View, Text, StyleSheet, ViewStyle } from "react-native";
import { Colors, Radius, Spacing, Typography } from "@/constants/theme";

type BadgeVariant = "primary" | "success" | "gold" | "danger" | "purple" | "orange" | "sky" | "pink";

interface BadgeProps {
  label: string;
  variant?: BadgeVariant;
  dot?: boolean;
  size?: "sm" | "md";
  style?: ViewStyle;
}

const VARIANT_STYLES: Record<BadgeVariant, { bg: string; text: string; dot: string }> = {
  primary: { bg: Colors.primaryBg, text: Colors.primary, dot: Colors.primary },
  success: { bg: Colors.successBg, text: Colors.success, dot: Colors.success },
  gold: { bg: Colors.goldBg, text: Colors.goldDark, dot: Colors.gold },
  danger: { bg: Colors.dangerBg, text: Colors.danger, dot: Colors.danger },
  purple: { bg: Colors.purpleBg, text: Colors.purple, dot: Colors.purple },
  orange: { bg: Colors.orangeBg, text: Colors.orange, dot: Colors.orange },
  sky: { bg: Colors.skyBg, text: Colors.sky, dot: Colors.sky },
  pink: { bg: Colors.pinkBg, text: Colors.pink, dot: Colors.pink },
};

export default function Badge({
  label,
  variant = "primary",
  dot = false,
  size = "sm",
  style,
}: BadgeProps) {
  const colors = VARIANT_STYLES[variant];

  return (
    <View
      style={[
        styles.container,
        { backgroundColor: colors.bg },
        size === "md" && styles.md,
        style,
      ]}
    >
      {dot && (
        <View style={[styles.dot, { backgroundColor: colors.dot }]} />
      )}
      <Text
        style={[
          styles.label,
          { color: colors.text },
          size === "md" && styles.labelMd,
        ]}
      >
        {label}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flexDirection: "row",
    alignItems: "center",
    paddingHorizontal: Spacing.sm,
    paddingVertical: Spacing.xs,
    borderRadius: Radius.sm,
    alignSelf: "flex-start",
  },
  md: {
    paddingHorizontal: Spacing.md,
    paddingVertical: Spacing.sm,
  },
  dot: {
    width: 6,
    height: 6,
    borderRadius: 3,
    marginRight: Spacing.xs,
  },
  label: {
    ...Typography.badge,
  },
  labelMd: {
    fontSize: 12,
  },
});
