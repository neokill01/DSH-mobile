// 我的：运行模式 / 每日目标 / 成就 / 登出

import { useCallback, useState } from "react";
import { Pressable, ScrollView, StyleSheet, Text, View } from "react-native";
import { useFocusEffect } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { ACHIEVEMENTS } from "@/constants/achievements";
import { useAuth } from "@/lib/auth";
import { getRepository } from "@/lib/repository";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import AchievementGrid from "@/components/AchievementGrid";
import type { AchievementStatus } from "@/lib/repository";

export default function ProfileScreen() {
  const insets = useSafeAreaInsets();
  const { user, mode, signOut } = useAuth();
  const [achievements, setAchievements] = useState<AchievementStatus[]>([]);

  useFocusEffect(
    useCallback(() => {
      getRepository()
        .getAchievements()
        .then(setAchievements)
        .catch(() => {});
    }, []),
  );

  const unlocked = (code: string) =>
    achievements.find((a) => a.code === code)?.unlocked ?? false;

  // 转换成就数据格式
  const achievementData = ACHIEVEMENTS.map((a) => ({
    id: a.code,
    iconName: a.iconName,
    title: a.title,
    description: a.description,
    unlocked: unlocked(a.code),
  }));

  return (
    <ScrollView
      style={styles.container}
      contentContainerStyle={[
        styles.content,
        { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + 100 },
      ]}
      showsVerticalScrollIndicator={false}
    >
      <Text style={styles.title}>我的</Text>

      {/* 用户信息卡片 */}
      <View style={[styles.card, styles.profileCard]}>
        <View style={styles.avatarWrap}>
          <Ionicons name="person" size={28} color={Colors.primary} />
        </View>
        <View style={styles.userInfo}>
          <View style={styles.modeBadge}>
            <Ionicons
              name={mode === "supabase" ? "cloud" : "phone-portrait"}
              size={12}
              color={Colors.primary}
            />
            <Text style={styles.modeBadgeText}>
              {mode === "supabase" ? "云端模式" : "本地演示"}
            </Text>
          </View>
          <Text style={styles.accountText}>
            {mode === "supabase"
              ? user?.email ?? "未登录"
              : "数据仅保存在本机"}
          </Text>
        </View>
        {mode === "supabase" ? (
          <Pressable style={styles.logoutBtn} onPress={() => signOut()}>
            <Ionicons name="log-out-outline" size={18} color={Colors.danger} />
          </Pressable>
        ) : null}
      </View>

      {/* 每日目标 */}
      <View style={styles.card}>
        <View style={styles.sectionTitleRow}>
          <Ionicons name="flag" size={18} color={Colors.primary} />
          <Text style={styles.sectionTitle}>每日目标</Text>
        </View>
        <View style={styles.goalItem}>
          <View style={styles.goalLeft}>
            <View style={[styles.goalDot, { backgroundColor: Colors.gold }]} />
            <Text style={styles.goalLabel}>新词目标</Text>
          </View>
          <Text style={styles.goalValue}>20 个/天</Text>
        </View>
        <View style={styles.goalItem}>
          <View style={styles.goalLeft}>
            <View style={[styles.goalDot, { backgroundColor: Colors.success }]} />
            <Text style={styles.goalLabel}>复习目标</Text>
          </View>
          <Text style={styles.goalValue}>100 个/天</Text>
        </View>
        <Text style={styles.hint}>目标可在后续版本中自定义</Text>
      </View>

      {/* 成就 */}
      <AchievementGrid achievements={achievementData} />

      <Text style={styles.footer}>词记 WordNest · v0.1.0</Text>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.background },
  content: { padding: Spacing.xl },
  title: {
    ...Typography.h1,
    color: Colors.primary,
    marginBottom: Spacing.xl,
  },

  // Card
  card: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    marginBottom: Spacing.lg,
    ...Shadow.card,
  },
  profileCard: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.lg,
  },
  avatarWrap: {
    width: 52,
    height: 52,
    borderRadius: 26,
    backgroundColor: Colors.primaryBg,
    alignItems: "center",
    justifyContent: "center",
  },
  userInfo: {
    flex: 1,
  },
  modeBadge: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.xs,
    alignSelf: "flex-start",
    backgroundColor: Colors.primaryBg,
    borderRadius: Radius.pill,
    paddingHorizontal: Spacing.md,
    paddingVertical: Spacing.xs,
    marginBottom: Spacing.sm,
  },
  modeBadgeText: {
    ...Typography.label,
    color: Colors.primary,
    fontWeight: "600",
  },
  accountText: {
    ...Typography.caption,
  },
  logoutBtn: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: Colors.dangerBg,
    alignItems: "center",
    justifyContent: "center",
  },

  // Goals
  sectionTitleRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
    marginBottom: Spacing.lg,
  },
  sectionTitle: {
    ...Typography.h3,
  },
  goalItem: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    paddingVertical: Spacing.md,
    borderBottomWidth: 1,
    borderBottomColor: Colors.borderLight,
  },
  goalLeft: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.md,
  },
  goalDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
  },
  goalLabel: {
    ...Typography.body,
    color: Colors.textSecondary,
  },
  goalValue: {
    ...Typography.body,
    fontWeight: "600",
  },
  hint: {
    ...Typography.label,
    color: Colors.textMuted,
    marginTop: Spacing.md,
  },

  footer: {
    ...Typography.label,
    color: Colors.textHint,
    textAlign: "center",
    marginTop: Spacing.lg,
  },
});
