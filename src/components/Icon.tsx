// 通用图标组件 - 替代表情符号
// 青春活力风格：支持渐变背景、多种尺寸变体

import React from "react";
import { View, StyleSheet, ViewStyle } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { IconColors, IconNames } from "@/constants/icons";
import { Radius, Spacing, Colors } from "@/constants/theme";

type IconName = keyof typeof IconNames;
type IconColor = keyof typeof IconColors;

type IconSize = "sm" | "md" | "lg" | "xl";

const SIZE_MAP: Record<IconSize, { icon: number; container: number }> = {
  sm: { icon: 16, container: 32 },
  md: { icon: 20, container: 40 },
  lg: { icon: 24, container: 48 },
  xl: { icon: 32, container: 64 },
};

interface IconProps {
  name: IconName;
  size?: IconSize | number;
  color?: IconColor | string;
  backgroundColor?: string;
  gradient?: readonly [string, string];
  style?: ViewStyle;
}

export default function Icon({
  name,
  size = "md",
  color = "primary",
  backgroundColor,
  gradient,
  style,
}: IconProps) {
  const iconName = IconNames[name];
  const iconColor = IconColors[color as IconColor] || color;

  const sizeConfig = typeof size === "number"
    ? { icon: size, container: size + Spacing.md * 2 }
    : SIZE_MAP[size];

  if (gradient) {
    return (
      <View
        style={[
          styles.container,
          {
            backgroundColor: gradient[0],
            width: sizeConfig.container,
            height: sizeConfig.container,
            borderRadius: sizeConfig.container / 2,
          },
          style,
        ]}
      >
        <Ionicons name={iconName} size={sizeConfig.icon} color={Colors.white} />
      </View>
    );
  }

  if (backgroundColor) {
    return (
      <View
        style={[
          styles.container,
          {
            backgroundColor,
            width: sizeConfig.container,
            height: sizeConfig.container,
            borderRadius: sizeConfig.container / 2,
          },
          style,
        ]}
      >
        <Ionicons name={iconName} size={sizeConfig.icon} color={iconColor} />
      </View>
    );
  }

  return <Ionicons name={iconName} size={typeof size === "number" ? size : sizeConfig.icon} color={iconColor} />;
}

const styles = StyleSheet.create({
  container: {
    alignItems: "center",
    justifyContent: "center",
  },
});
