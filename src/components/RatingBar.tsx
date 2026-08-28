// 四档评分按钮：忘记了 / 有点模糊 / 记得 / 太简单
// 青春活力风格：渐变背景、更大圆角、更弹的动画

import { Pressable, StyleSheet, Text, View } from "react-native";
import { RATINGS } from "@/constants/ratings";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";

interface Props {
  onRate: (rating: number) => void;
  disabled?: boolean;
}

export function RatingBar({ onRate, disabled }: Props) {
  return (
    <View style={styles.row}>
      {RATINGS.map((r) => (
        <Pressable
          key={r.value}
          disabled={disabled}
          onPress={() => onRate(r.value)}
          style={({ pressed }) => [
            styles.btn,
            { borderWidth: 1, borderColor: r.color },
            pressed && styles.pressed,
            disabled && styles.disabled,
          ]}
        >
          <View
            style={[styles.gradient, { backgroundColor: r.color }]}
          >
            <Text style={styles.emoji}>{r.emoji}</Text>
            <Text style={styles.label}>{r.label}</Text>
            <Text style={styles.hint}>{r.hint}</Text>
          </View>
        </Pressable>
      ))}
    </View>
  );
}

const styles = StyleSheet.create({
  row: {
    flexDirection: "row",
    gap: Spacing.sm,
    width: "100%",
  },
  btn: {
    flex: 1,
    borderRadius: Radius.lg,
    overflow: "hidden",
    ...Shadow.button,
  },
  gradient: {
    paddingVertical: Spacing.md,
    alignItems: "center",
    gap: Spacing.xs,
    borderRadius: Radius.lg,
  },
  pressed: {
    opacity: 0.85,
    transform: [{ scale: 0.92 }],
  },
  disabled: {
    opacity: 0.5,
  },
  emoji: {
    fontSize: 24,
  },
  label: {
    ...Typography.body,
    color: Colors.white,
    fontWeight: "700",
    fontSize: 14,
  },
  hint: {
    ...Typography.badge,
    color: "rgba(255,255,255,0.8)",
    fontSize: 10,
  },
});
