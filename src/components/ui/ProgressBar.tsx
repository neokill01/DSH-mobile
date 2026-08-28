// 统一进度条组件 - 青春活力风格
// 支持线性和环形两种模式

import React, { useEffect, useRef } from "react";
import { View, Text, StyleSheet, Animated, ViewStyle } from "react-native";
import { Colors, Radius, Spacing, Typography } from "@/constants/theme";

interface ProgressBarProps {
  value: number;
  max: number;
  variant?: "linear" | "circular";
  gradient?: readonly [string, string];
  height?: number;
  showLabel?: boolean;
  animated?: boolean;
  style?: ViewStyle;
}

export default function ProgressBar({
  value,
  max,
  variant = "linear",
  height = 8,
  showLabel = false,
  animated = true,
  style,
}: ProgressBarProps) {
  const percentage = Math.min(Math.round((value / max) * 100), 100);
  const animValue = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    if (animated) {
      Animated.timing(animValue, {
        toValue: percentage,
        duration: 800,
        useNativeDriver: false,
      }).start();
    } else {
      animValue.setValue(percentage);
    }
  }, [percentage, animated, animValue]);

  if (variant === "circular") {
    return (
      <View style={[styles.circularContainer, style]}>
        <View style={[styles.circularTrack, { width: 80, height: 80 }]}>
          {/* Simple circular progress using borders */}
          <View
            style={[
              styles.circularFill,
              {
                width: 80,
                height: 80,
                borderRadius: 40,
                borderColor: Colors.primary,
                borderWidth: 6,
              },
            ]}
          />
        </View>
        <Text style={styles.circularLabel}>{percentage}%</Text>
      </View>
    );
  }

  return (
    <View style={[styles.container, style]}>
      <View
        style={[
          styles.track,
          { height, borderRadius: height / 2 },
        ]}
      >
        <Animated.View
          style={[
            styles.fill,
            {
              height,
              borderRadius: height / 2,
              backgroundColor: Colors.primary,
              width: animValue.interpolate({
                inputRange: [0, 100],
                outputRange: ["0%", "100%"],
                extrapolate: "clamp",
              }) as unknown as number,
            },
          ]}
        />
      </View>
      {showLabel && (
        <Text style={styles.label}>{percentage}%</Text>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    width: "100%",
  },
  track: {
    backgroundColor: Colors.divider,
    overflow: "hidden",
  },
  fill: {
    position: "absolute",
    left: 0,
    top: 0,
  },
  label: {
    ...Typography.caption,
    color: Colors.textSecondary,
    marginTop: Spacing.xs,
    textAlign: "right",
  },
  circularContainer: {
    alignItems: "center",
    justifyContent: "center",
  },
  circularTrack: {
    alignItems: "center",
    justifyContent: "center",
  },
  circularFill: {
    position: "absolute",
  },
  circularLabel: {
    ...Typography.badge,
    color: Colors.primary,
  },
});
