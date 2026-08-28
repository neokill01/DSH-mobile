// 我的：用户信息 / 快捷入口 / 成就 / 登出

import { useCallback, useState } from "react";
import { Pressable, ScrollView, StyleSheet, Text, View } from "react-native";
import { router, useFocusEffect } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { ACHIEVEMENTS } from "@/constants/achievements";
import { useAuth } from "@/lib/auth";
import { getRepository } from "@/lib/repository";
import {
  Colors,
  Typography,
  Spacing,
  Radius,
  Shadow,
} from "@/constants/theme";
import AchievementGrid from "@/components/AchievementGrid";
import Avatar from "@/components/ui/Avatar";
import Badge from "@/components/ui/Badge";
import SectionTitle from "@/components/ui/SectionTitle";
import Card from "@/components/ui/Card";
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
        {
          paddingTop: insets.top + Spacing.lg,
          paddingBottom: insets.bottom + 100,
        },
      ]}
      showsVerticalScrollIndicator={false}
    >
      <Text style={styles.title}>👤 我的</Text>

      {/* 用户信息卡片 */}
      <Card style={styles.profileCard}>
        <View style={styles.profileLeft}>
          <Avatar
            name={user?.email?.charAt(0)?.toUpperCase()}
            size={56}
          />
          <View style={styles.userInfo}>
            <Badge
              label={mode === "supabase" ? "云端模式" : "本地演示"}
              variant={mode === "supabase" ? "primary" : "gold"}
              dot
              size="sm"
              style={styles.modeBadge}
            />
            <Text style={styles.accountText}>
              {mode === "supabase"
                ? user?.email ?? "未登录"
                : "数据仅保存在本机"}
            </Text>
          </View>
        </View>
        {mode === "supabase" ? (
          <Pressable style={styles.logoutBtn} onPress={() => signOut()}>
            <Ionicons name="log-out-outline" size={18} color={Colors.danger} />
          </Pressable>
        ) : null}
      </Card>

      {/* 功能菜单 */}
      <Card style={styles.menuCard}>
        <SectionTitle icon="book" title="学习工具" />
        <Pressable
          style={styles.menuItem}
          onPress={() => router.push("/assessment/start")}
        >
          <View style={[styles.menuIcon, { backgroundColor: Colors.primaryBg }]}>
            <Ionicons name="school" size={20} color={Colors.primary} />
          </View>
          <Text style={styles.menuLabel}>词汇量测评</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
        <Pressable
          style={styles.menuItem}
          onPress={() => router.push("/word/wrong-list")}
        >
          <View style={[styles.menuIcon, { backgroundColor: Colors.dangerBg }]}>
            <Ionicons name="alert-circle" size={20} color={Colors.danger} />
          </View>
          <Text style={styles.menuLabel}>错词本</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
        <Pressable
          style={styles.menuItem}
          onPress={() => router.push("/ai/analysis")}
        >
          <View style={[styles.menuIcon, { backgroundColor: Colors.purpleBg }]}>
            <Ionicons name="sparkles" size={20} color={Colors.purple} />
          </View>
          <Text style={styles.menuLabel}>AI 智能解析</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
      </Card>

      <Card style={styles.menuCard}>
        <SectionTitle icon="settings" title="设置" />
        <Pressable
          style={styles.menuItem}
          onPress={() => router.push("/settings/device")}
        >
          <View style={[styles.menuIcon, { backgroundColor: Colors.successBg }]}>
            <Ionicons name="phone-portrait" size={20} color={Colors.success} />
          </View>
          <Text style={styles.menuLabel}>设备管理</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
        <Pressable
          style={styles.menuItem}
          onPress={() => router.push("/settings/export")}
        >
          <View style={[styles.menuIcon, { backgroundColor: Colors.primaryBg }]}>
            <Ionicons name="document-text" size={20} color={Colors.primary} />
          </View>
          <Text style={styles.menuLabel}>学习报告导出</Text>
          <Ionicons name="chevron-forward" size={18} color={Colors.textMuted} />
        </Pressable>
      </Card>

      {/* 成就 */}
      <Card style={styles.achievementCard}>
        <SectionTitle icon="trophy" title="成就" />
        <AchievementGrid achievements={achievementData} />
      </Card>

      <Text style={styles.footer}>词记 WordNest · v1.0.0</Text>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.background },
  content: { padding: Spacing.xl },
  title: { ...Typography.h1, color: Colors.primary, marginBottom: Spacing.xl },
  profileCard: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    borderWidth: 1,
    borderColor: Colors.border,
    marginBottom: Spacing.lg,
  },
  profileLeft: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.lg,
    flex: 1,
  },
  userInfo: { flex: 1 },
  modeBadge: { marginBottom: Spacing.sm },
  accountText: { ...Typography.caption },
  logoutBtn: {
    width: 44,
    height: 44,
    borderRadius: Radius.xl,
    backgroundColor: Colors.dangerBg,
    alignItems: "center",
    justifyContent: "center",
  },
  menuCard: { borderWidth: 1, borderColor: Colors.border, marginBottom: Spacing.lg },
  menuItem: {
    flexDirection: "row",
    alignItems: "center",
    paddingVertical: Spacing.lg,
    borderBottomWidth: 1,
    borderBottomColor: Colors.borderLight,
    gap: Spacing.md,
  },
  menuIcon: {
    width: 48,
    height: 48,
    borderRadius: Radius.md,
    borderWidth: 1,
    borderColor: Colors.border,
    alignItems: "center",
    justifyContent: "center",
  },
  menuLabel: { flex: 1, ...Typography.body, fontWeight: "500" },
  achievementCard: { borderWidth: 1, borderColor: Colors.border, marginBottom: Spacing.lg },
  footer: {
    ...Typography.label,
    color: Colors.textHint,
    textAlign: "center",
    marginTop: Spacing.lg,
  },
});
