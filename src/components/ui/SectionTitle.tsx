// 统一组标题组件 - 青春活力风格
import React from "react";
import { View, Text, Pressable, StyleSheet, ViewStyle } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Spacing, Typography } from "@/constants/theme";

interface SectionTitleProps {
  title: string;
  icon?: keyof typeof Ionicons.glyphMap;
  action?: string;
  onAction?: () => void;
  style?: ViewStyle;
}

export default function SectionTitle({
  title,
  icon,
  action,
  onAction,
  style,
}: SectionTitleProps) {
  return (
    <View style={[styles.container, style]}>
      <View style={styles.left}>
        {icon && (
          <Ionicons
            name={icon}
            size={20}
            color={Colors.primary}
            style={styles.icon}
          />
        )}
        <Text style={styles.title}>{title}</Text>
      </View>
      {action && onAction && (
        <Pressable onPress={onAction} style={styles.action}>
          <Text style={styles.actionText}>{action}</Text>
          <Ionicons
            name="chevron-forward"
            size={14}
            color={Colors.primary}
          />
        </Pressable>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: Spacing.md,
  },
  left: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
  },
  icon: {
    marginRight: Spacing.xs,
  },
  title: {
    ...Typography.h3,
  },
  action: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.xs,
  },
  actionText: {
    ...Typography.label,
    color: Colors.primary,
  },
});
