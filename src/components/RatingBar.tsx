// 四档评分按钮：忘记 / 模糊 / 记得 / 轻松

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
            { backgroundColor: r.color },
            pressed && styles.pressed,
            disabled && styles.disabled,
          ]}
        >
          <Text style={styles.label}>{r.label}</Text>
          <Text style={styles.hint}>{r.hint}</Text>
        </Pressable>
      ))}
    </View>
  );
}

const styles = StyleSheet.create({
  row: {
    flexDirection: "row",
    gap: Spacing.md,
    width: "100%",
  },
  btn: {
    flex: 1,
    borderRadius: Radius.lg,
    paddingVertical: Spacing.lg,
    alignItems: "center",
    gap: Spacing.xs,
    ...Shadow.button,
  },
  pressed: {
    opacity: 0.85,
    transform: [{ scale: 0.95 }],
  },
  disabled: {
    opacity: 0.5,
  },
  label: {
    ...Typography.body,
    color: "#FFFFFF",
    fontWeight: "700",
  },
  hint: {
    ...Typography.label,
    color: "rgba(255,255,255,0.7)",
    fontSize: 10,
  },
});
