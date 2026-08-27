// 成就网格组件 - 青春活力风格
// 稀有度边框、解锁动画、更丰富的视觉表现

import React from "react";
import { View, Text, StyleSheet } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import { RARITY_COLORS, type AchievementRarity } from "@/constants/achievements";

interface Achievement {
  id: string;
  iconName: keyof typeof Ionicons.glyphMap;
  title: string;
  description: string;
  unlocked: boolean;
  rarity?: AchievementRarity;
}

interface AchievementGridProps {
  achievements: Achievement[];
}

export default function AchievementGrid({ achievements }: AchievementGridProps) {
  return (
    <View style={styles.container}>
      <View style={styles.grid}>
        {achievements.map((achievement) => {
          const rarity = achievement.rarity || "common";
          const rarityColor = RARITY_COLORS[rarity];

          return (
            <View
              key={achievement.id}
              style={[
                styles.item,
                !achievement.unlocked && styles.itemLocked,
                achievement.unlocked && {
                  borderWidth: 2,
                  borderColor: rarityColor.border + "40",
                },
              ]}
            >
              <View
                style={[
                  styles.iconWrap,
                  achievement.unlocked && {
                    backgroundColor: rarityColor.bg,
                  },
                  !achievement.unlocked && styles.iconWrapLocked,
                ]}
              >
                {achievement.unlocked ? (
                  <Ionicons
                    name={achievement.iconName}
                    size={26}
                    color={rarityColor.border}
                  />
                ) : (
                  <Ionicons
                    name="lock-closed"
                    size={20}
                    color={Colors.textMuted}
                  />
                )}
              </View>
              <Text
                style={[
                  styles.title,
                  !achievement.unlocked && styles.titleLocked,
                ]}
                numberOfLines={1}
              >
                {achievement.title}
              </Text>
              {achievement.unlocked && (
                <View style={[styles.rarityBadge, { backgroundColor: rarityColor.bg }]}>
                  <Text style={[styles.rarityText, { color: rarityColor.border }]}>
                    {rarityColor.label}
                  </Text>
                </View>
              )}
            </View>
          );
        })}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    marginTop: Spacing.sm,
  },
  grid: {
    flexDirection: "row",
    flexWrap: "wrap",
    justifyContent: "space-between",
  },
  item: {
    width: "30%",
    alignItems: "center",
    paddingVertical: Spacing.md,
    paddingHorizontal: Spacing.sm,
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    borderWidth: 2,
    borderColor: Colors.border,
    marginBottom: Spacing.md,
    ...Shadow.card,
  },
  itemLocked: {
    backgroundColor: Colors.surfaceAlt,
    shadowOpacity: 0,
    opacity: 0.7,
  },
  iconWrap: {
    width: 48,
    height: 48,
    borderRadius: 24,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: Spacing.sm,
  },
  iconWrapLocked: {
    backgroundColor: Colors.divider,
  },
  title: {
    ...Typography.label,
    fontWeight: "600",
    textAlign: "center",
    color: Colors.text,
    marginBottom: Spacing.xs,
  },
  titleLocked: {
    color: Colors.textMuted,
  },
  rarityBadge: {
    marginTop: Spacing.xs,
    paddingHorizontal: Spacing.xs,
    paddingVertical: 2,
    borderRadius: Radius.xs,
  },
  rarityText: {
    fontSize: 9,
    fontWeight: "700",
  },
});
