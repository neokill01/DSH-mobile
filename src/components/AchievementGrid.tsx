import React from "react";
import { View, Text, StyleSheet } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "../constants/theme";

interface Achievement {
  id: string;
  iconName: keyof typeof Ionicons.glyphMap;
  title: string;
  description: string;
  unlocked: boolean;
}

interface AchievementGridProps {
  achievements: Achievement[];
}

export default function AchievementGrid({ achievements }: AchievementGridProps) {
  return (
    <View style={styles.container}>
      <View style={styles.sectionTitleRow}>
        <Ionicons name="trophy" size={18} color={Colors.gold} />
        <Text style={styles.sectionTitle}>成就</Text>
      </View>
      <View style={styles.grid}>
        {achievements.map((achievement) => (
          <View
            key={achievement.id}
            style={[
              styles.item,
              !achievement.unlocked && styles.itemLocked,
            ]}
          >
            <View
              style={[
                styles.iconWrap,
                achievement.unlocked && styles.iconWrapUnlocked,
                !achievement.unlocked && styles.iconWrapLocked,
              ]}
            >
              <Ionicons
                name={achievement.iconName}
                size={24}
                color={achievement.unlocked ? Colors.gold : Colors.textMuted}
              />
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
          </View>
        ))}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    marginBottom: Spacing.xl,
  },
  sectionTitleRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
    marginBottom: Spacing.lg,
  },
  sectionTitle: {
    ...Typography.h3,
  },
  grid: {
    flexDirection: "row",
    flexWrap: "wrap",
    gap: Spacing.md,
  },
  item: {
    width: "30%",
    alignItems: "center",
    padding: Spacing.lg,
    backgroundColor: Colors.surface,
    borderRadius: Radius.md,
    ...Shadow.soft,
  },
  itemLocked: {
    backgroundColor: Colors.borderLight,
    shadowOpacity: 0,
  },
  iconWrap: {
    width: 48,
    height: 48,
    borderRadius: 24,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: Spacing.sm,
  },
  iconWrapUnlocked: {
    backgroundColor: Colors.goldBg,
  },
  iconWrapLocked: {
    backgroundColor: Colors.borderLight,
  },
  title: {
    ...Typography.label,
    textAlign: "center",
  },
  titleLocked: {
    color: Colors.textMuted,
  },
});
