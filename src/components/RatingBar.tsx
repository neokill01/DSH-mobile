// 四档评分按钮：忘记 / 模糊 / 记得 / 轻松

import { Pressable, StyleSheet, Text, View } from "react-native";
import { RATINGS } from "@/constants/ratings";
import { Radius } from "@/constants/theme";

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
    gap: 10,
    width: "100%",
  },
  btn: {
    flex: 1,
    borderRadius: Radius.lg,
    paddingVertical: 14,
    alignItems: "center",
    gap: 2,
    shadowColor: "#1A1A2E",
    shadowOpacity: 0.06,
    shadowRadius: 10,
    shadowOffset: { width: 0, height: 2 },
    elevation: 3,
  },
  pressed: {
    opacity: 0.75,
    transform: [{ scale: 0.97 }],
  },
  disabled: {
    opacity: 0.5,
  },
  label: {
    color: "#FFFFFF",
    fontSize: 16,
    fontWeight: "700",
  },
  hint: {
    color: "rgba(255,255,255,0.7)",
    fontSize: 10,
  },
});
