// 我的：运行模式 / 每日目标 / 成就 / 登出

import { useCallback, useState } from "react";
import { Pressable, ScrollView, StyleSheet, Text, View } from "react-native";
import { useFocusEffect } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { ACHIEVEMENTS } from "@/constants/achievements";
import { useAuth } from "@/lib/auth";
import { getRepository } from "@/lib/repository";
import { Colors, Spacing, Radius, Shadow } from "@/constants/theme";
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

      {/* 账号/模式 */}
      <View style={[styles.card, styles.profileCard]}>
        <View style={styles.avatarWrap}>
          <Ionicons name="person" size={28} color={Colors.primary} />
        </View>
        <View style={{ flex: 1 }}>
          <View style={styles.modeBadge}>
            <Text style={styles.modeBadgeText}>
              {mode === "supabase" ? "☁️ 云端模式" : "📱 本地演示"}
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
        <View style={styles.cardTitleRow}>
          <Ionicons name="flag-outline" size={16} color={Colors.text} />
          <Text style={styles.cardTitle}>每日目标</Text>
        </View>
        <View style={styles.goalItem}>
          <View style={styles.goalLeft}>
            <View style={[styles.goalDot, { backgroundColor: Colors.amber }]} />
            <Text style={styles.goalLabel}>新词</Text>
          </View>
          <Text style={styles.goalValue}>20 / 天</Text>
        </View>
        <View style={styles.goalItem}>
          <View style={styles.goalLeft}>
            <View style={[styles.goalDot, { backgroundColor: Colors.green }]} />
            <Text style={styles.goalLabel}>复习</Text>
          </View>
          <Text style={styles.goalValue}>100 / 天</Text>
        </View>
        <Text style={styles.cardHint}>目标可在后续版本中自定义</Text>
      </View>

      {/* 成就 */}
      <View style={styles.card}>
        <View style={styles.cardTitleRow}>
          <Ionicons name="trophy-outline" size={16} color={Colors.text} />
          <Text style={styles.cardTitle}>成就</Text>
        </View>
        <View style={styles.achievementGrid}>
          {ACHIEVEMENTS.map((a) => {
            const isUnlocked = unlocked(a.code);
            return (
              <View
                key={a.code}
                style={[styles.achievementItem, !isUnlocked && styles.achievementLocked]}
              >
                <Text style={styles.achievementIcon}>{a.icon}</Text>
                <Text style={styles.achievementTitle}>{a.title}</Text>
                <Text style={styles.achievementDesc} numberOfLines={2}>
                  {a.description}
                </Text>
              </View>
            );
          })}
        </View>
      </View>

      <Text style={styles.footer}>词记 WordNest · v0.1.0</Text>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.background },
  content: { padding: Spacing.xl },
  title: {
    fontSize: 26,
    fontWeight: "800",
    color: Colors.text,
    marginBottom: 18,
    letterSpacing: -0.5,
  },

  // Card
  card: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    marginBottom: 14,
    ...Shadow.card,
  },
  profileCard: {
    flexDirection: "row",
    alignItems: "center",
    gap: 14,
  },
  avatarWrap: {
    width: 52,
    height: 52,
    borderRadius: 26,
    backgroundColor: Colors.primaryBg,
    alignItems: "center",
    justifyContent: "center",
  },
  modeBadge: {
    alignSelf: "flex-start",
    backgroundColor: Colors.primaryBg,
    borderRadius: Radius.pill,
    paddingHorizontal: 10,
    paddingVertical: 4,
    marginBottom: 6,
  },
  modeBadgeText: { color: Colors.primary, fontSize: 12, fontWeight: "600" },
  accountText: { fontSize: 14, color: Colors.textSecondary },
  logoutBtn: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: Colors.dangerBg,
    alignItems: "center",
    justifyContent: "center",
  },

  // Goals
  cardTitleRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
    marginBottom: 14,
  },
  cardTitle: { fontSize: 15, fontWeight: "700", color: Colors.text },
  goalItem: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    paddingVertical: 10,
    borderBottomWidth: 1,
    borderBottomColor: Colors.borderLight,
  },
  goalLeft: {
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
  },
  goalDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
  },
  goalLabel: { fontSize: 14, color: Colors.textSecondary },
  goalValue: { fontSize: 14, color: Colors.text, fontWeight: "600" },
  cardHint: { fontSize: 11, color: Colors.textMuted, marginTop: 10 },

  // Achievements
  achievementGrid: {
    flexDirection: "row",
    flexWrap: "wrap",
    gap: 10,
  },
  achievementItem: {
    width: "30%",
    flexGrow: 1,
    backgroundColor: Colors.surfaceAlt,
    borderRadius: Radius.md,
    padding: 10,
    alignItems: "center",
    borderWidth: 1,
    borderColor: Colors.borderLight,
  },
  achievementLocked: { opacity: 0.35 },
  achievementIcon: { fontSize: 24, marginBottom: 4 },
  achievementTitle: { fontSize: 12, fontWeight: "600", color: Colors.text },
  achievementDesc: { fontSize: 10, color: Colors.textMuted, marginTop: 2, textAlign: "center" },

  footer: {
    textAlign: "center",
    fontSize: 11,
    color: Colors.textHint,
    marginTop: 8,
  },
});
