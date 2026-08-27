// 我的：用户信息 / 快捷入口 / 成就 / 登出

import { useCallback, useState } from "react";
import { Pressable, ScrollView, StyleSheet, Text, View } from "react-native";
import { router, useFocusEffect } from "expo-router";
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

      {/* 功能菜单 */}
      <View style={styles.card}>
        <Text style={styles.menuSectionTitle}>学习工具</Text>
        <Pressable style={styles.menuItem} onPress={() => router.push("/assessment/start")}>
          <View style={[styles.menuIcon, { backgroundColor: Colors.primaryBg }]}>
            <Ionicons name="school" size={20} color={Colors.primary} />
          </View>
          <Text style={styles.menuLabel}>词汇量测评</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
        <Pressable style={styles.menuItem} onPress={() => router.push("/word/wrong-list")}>
          <View style={[styles.menuIcon, { backgroundColor: Colors.dangerBg }]}>
            <Ionicons name="alert-circle" size={20} color={Colors.danger} />
          </View>
          <Text style={styles.menuLabel}>错词本</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
        <Pressable style={styles.menuItem} onPress={() => router.push("/ai/analysis")}>
          <View style={[styles.menuIcon, { backgroundColor: Colors.goldBg }]}>
            <Ionicons name="sparkles" size={20} color={Colors.gold} />
          </View>
          <Text style={styles.menuLabel}>AI 智能解析</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
      </View>

      <View style={styles.card}>
        <Text style={styles.menuSectionTitle}>设置</Text>
        <Pressable style={styles.menuItem} onPress={() => router.push("/settings/device")}>
          <View style={[styles.menuIcon, { backgroundColor: Colors.successBg }]}>
            <Ionicons name="phone-portrait" size={20} color={Colors.success} />
          </View>
          <Text style={styles.menuLabel}>设备管理</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
        <Pressable style={styles.menuItem} onPress={() => router.push("/settings/export")}>
          <View style={[styles.menuIcon, { backgroundColor: Colors.primaryBg }]}>
            <Ionicons name="document-text" size={20} color={Colors.primary} />
          </View>
          <Text style={styles.menuLabel}>学习报告导出</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
      </View>

      {/* 成就 */}
      <AchievementGrid achievements={achievementData} />

      <Text style={styles.footer}>词记 WordNest · v1.0.0</Text>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.background },
  content: { padding: Spacing.xl },
  title: { ...Typography.h1, color: Colors.primary, marginBottom: Spacing.xl },
  card: {
    backgroundColor: Colors.surface, borderRadius: Radius.lg,
    padding: Spacing.lg, marginBottom: Spacing.lg, ...Shadow.card,
  },
  profileCard: { flexDirection: "row", alignItems: "center", gap: Spacing.lg },
  avatarWrap: {
    width: 52, height: 52, borderRadius: 26, backgroundColor: Colors.primaryBg,
    alignItems: "center", justifyContent: "center",
  },
  userInfo: { flex: 1 },
  modeBadge: {
    flexDirection: "row", alignItems: "center", gap: Spacing.xs,
    alignSelf: "flex-start", backgroundColor: Colors.primaryBg,
    borderRadius: Radius.pill, paddingHorizontal: Spacing.md, paddingVertical: Spacing.xs,
    marginBottom: Spacing.sm,
  },
  modeBadgeText: { ...Typography.label, color: Colors.primary, fontWeight: "600" },
  accountText: { ...Typography.caption },
  logoutBtn: {
    width: 40, height: 40, borderRadius: 20, backgroundColor: Colors.dangerBg,
    alignItems: "center", justifyContent: "center",
  },
  menuSectionTitle: { ...Typography.h3, marginBottom: Spacing.md },
  menuItem: {
    flexDirection: "row", alignItems: "center", paddingVertical: Spacing.md,
    borderBottomWidth: 1, borderBottomColor: Colors.borderLight, gap: Spacing.md,
  },
  menuIcon: {
    width: 36, height: 36, borderRadius: 18, alignItems: "center", justifyContent: "center",
  },
  menuLabel: { flex: 1, ...Typography.body, fontWeight: "500" },
  footer: { ...Typography.label, color: Colors.textHint, textAlign: "center", marginTop: Spacing.lg },
});
