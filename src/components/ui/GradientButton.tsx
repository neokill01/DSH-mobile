// 渐变按钮组件 — Claymorphism 风格
// 厚边框、圆润、柔软阴影、弹性动画
import React from "react";
import {
  Pressable,
  Text,
  StyleSheet,
  ViewStyle,
  TextStyle,
  ActivityIndicator,
  View,
} from "react-native";
import { Colors, Radius, Spacing, Shadow, Typography } from "@/constants/theme";

interface GradientButtonProps {
  children: string;
  onPress: () => void;
  backgroundColor?: string;
  size?: "sm" | "md" | "lg";
  disabled?: boolean;
  loading?: boolean;
  style?: ViewStyle;
  textStyle?: TextStyle;
  fullWidth?: boolean;
}

export default function GradientButton({
  children,
  onPress,
  backgroundColor = Colors.primary,
  size = "md",
  disabled = false,
  loading = false,
  style,
  textStyle,
  fullWidth = true,
}: GradientButtonProps) {
  const sizeStyles = {
    sm: { paddingVertical: Spacing.sm + 2, paddingHorizontal: Spacing.lg },
    md: { paddingVertical: Spacing.md, paddingHorizontal: Spacing.xl },
    lg: { paddingVertical: Spacing.lg, paddingHorizontal: Spacing.xl + 8 },
  };

  const textSizes = {
    sm: { fontSize: 14, fontWeight: "600" as const },
    md: { fontSize: 16, fontWeight: "700" as const },
    lg: { fontSize: 18, fontWeight: "700" as const },
  };

  return (
    <Pressable
      onPress={onPress}
      disabled={disabled || loading}
      style={({ pressed }) => [
        styles.container,
        sizeStyles[size],
        fullWidth && styles.fullWidth,
        disabled && styles.disabled,
        pressed && !disabled && styles.pressed,
        style,
      ]}
    >
      <View
        style={[styles.gradient, { backgroundColor: disabled ? Colors.textMuted : backgroundColor }]}
      >
        {loading ? (
          <ActivityIndicator color={Colors.white} size="small" />
        ) : (
          <Text style={[styles.text, textSizes[size], textStyle]}>
            {children}
          </Text>
        )}
      </View>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  container: {
    borderRadius: Radius.pill,
    overflow: "hidden",
    ...Shadow.button,
  },
  fullWidth: {
    width: "100%",
  },
  gradient: {
    paddingVertical: Spacing.md,
    paddingHorizontal: Spacing.xl,
    alignItems: "center",
    justifyContent: "center",
    borderRadius: Radius.pill,
  },
  text: {
    color: Colors.white,
    textAlign: "center",
  },
  disabled: {
    opacity: 0.5,
    shadowOpacity: 0,
  },
  pressed: {
    opacity: 0.85,
    transform: [{ scale: 0.95 }],
  },
});
