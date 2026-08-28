// 统一卡片容器组件 — Claymorphism 风格
// 厚边框(3px)、圆润、柔软阴影
import React from "react";
import { View, StyleSheet, StyleProp, ViewStyle } from "react-native";
import { Colors, Radius, Spacing, Shadow } from "@/constants/theme";

type CardVariant = "default" | "elevated" | "outlined" | "gradient";

interface CardProps {
  children: React.ReactNode;
  variant?: CardVariant;
  padding?: number;
  style?: StyleProp<ViewStyle>;
  backgroundColor?: string;
}

export default function Card({
  children,
  variant = "default",
  padding = Spacing.lg,
  style,
  backgroundColor,
}: CardProps) {
  if (variant === "gradient" && backgroundColor) {
    return (
      <View
        style={[
          styles.base,
          { padding, backgroundColor },
          Shadow.card,
          style,
        ]}
      >
        {children}
      </View>
    );
  }

  return (
    <View
      style={[
        styles.base,
        styles[variant],
        { padding },
        variant === "elevated" && Shadow.lifted,
        variant === "default" && Shadow.card,
        style,
      ]}
    >
      {children}
    </View>
  );
}

const styles = StyleSheet.create({
  base: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
  },
  default: {
    ...Shadow.card,
  },
  elevated: {
    ...Shadow.lifted,
  },
  outlined: {
    borderWidth: 1,
    borderColor: Colors.primary,
  },
  gradient: {
    // Background handled by LinearGradient
    borderWidth: 1,
    borderColor: Colors.border,
  },
});
