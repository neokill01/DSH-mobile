// 通用图标组件 - 替代表情符号
import React from "react";
import { View, StyleSheet, ViewStyle } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { IconColors, IconNames } from "@/constants/icons";
import { Radius, Spacing } from "@/constants/theme";

type IconName = keyof typeof IconNames;
type IconColor = keyof typeof IconColors;

interface IconProps {
  name: IconName;
  size?: number;
  color?: IconColor | string;
  backgroundColor?: string;
  style?: ViewStyle;
}

export default function Icon({
  name,
  size = 20,
  color = "primary",
  backgroundColor,
  style,
}: IconProps) {
  const iconName = IconNames[name];
  const iconColor = IconColors[color as IconColor] || color;

  if (backgroundColor) {
    return (
      <View
        style={[
          styles.container,
          { backgroundColor, width: size + Spacing.md * 2, height: size + Spacing.md * 2 },
          style,
        ]}
      >
        <Ionicons name={iconName} size={size} color={iconColor} />
      </View>
    );
  }

  return <Ionicons name={iconName} size={size} color={iconColor} />;
}

const styles = StyleSheet.create({
  container: {
    alignItems: "center",
    justifyContent: "center",
    borderRadius: Radius.md,
  },
});
