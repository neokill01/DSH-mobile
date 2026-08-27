// 学习首页：词汇量测评入口 + 体验课/正式课程 + 今日目标 + 错词管理

import { useCallback, useMemo, useState } from "react";
import {
  ActivityIndicator,
  Modal,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { router, useFocusEffect } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { getRepository } from "@/lib/repository";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import type { Stats, WordBook, ExperienceCourse } from "@/types/database";

const GOAL_NEW = 20;
const GOAL_REVIEW = 100;

const getGreeting = () => {
  const hour = new Date().getHours();
  if (hour < 12) return { text: "早上好", icon: "sunny" as const, color: Colors.gold };
  if (hour < 18) return { text: "下午好", icon: "partly-sunny" as const, color: Colors.gold };
  return { text: "晚上好", icon: "moon" as const, color: Colors.primary };
};

export default function HomeScreen() {
  const insets = useSafeAreaInsets();
  const [book, setBook] = useState<WordBook | null>(null);
  const [stats, setStats] = useState<Stats | null>(null);
  const [experience, setExperience] = useState<ExperienceCourse | null>(null);
  const [pickerOpen, setPickerOpen] = useState(false);
  const [books, setBooks] = useState<WordBook[]>([]);
  const [loading, setLoading] = useState(true);

  const refresh = useCallback(async () => {
    const repo = getRepository();
    try {
      const [b, s, exp] = await Promise.all([
        repo.getCurrentBook(),
        repo.getStats(),
        repo.getExperienceCourse(),
      ]);
      setBook(b);
      setStats(s);
      setExperience(exp);
    } finally {
      setLoading(false);
    }
  }, []);

  useFocusEffect(
    useCallback(() => {
      refresh();
      getRepository()
        .getBooks()
        .then(setBooks)
        .catch(() => {});
    }, [refresh]),
  );

  const switchBook = async (b: WordBook) => {
    setPickerOpen(false);
    await getRepository().setCurrentBook(b.id);
    setLoading(true);
    refresh();
  };

  const progress =
    book && stats ? Math.min(100, (stats.totalLearned / book.wordCount) * 100) : 0;
  const newPct = stats ? Math.min(100, (stats.todayNew / GOAL_NEW) * 100) : 0;
  const reviewPct = stats ? Math.min(100, (stats.todayReview / GOAL_REVIEW) * 100) : 0;
  const greeting = useMemo(() => getGreeting(), []);

  if (loading) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <ActivityIndicator size="large" color={Colors.primary} />
      </View>
    );
  }

  return (
    <View style={styles.screen}>
      <ScrollView
        style={styles.container}
        contentContainerStyle={[
          styles.content,
          { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + 100 },
        ]}
        showsVerticalScrollIndicator={false}
      >
        {/* 顶部：问候 + 连续打卡 */}
        <View style={styles.header}>
          <View>
            <View style={styles.greetingRow}>
              <Ionicons name={greeting.icon} size={18} color={greeting.color} />
              <Text style={styles.greeting}>{greeting.text}</Text>
            </View>
            <Text style={styles.appName}>词记</Text>
          </View>
          <View style={styles.streakBadge}>
            <Ionicons name="flame" size={16} color={Colors.gold} />
            <Text style={styles.streakText}>{stats?.streak ?? 0}天</Text>
          </View>
        </View>

        {/* 词汇量测评入口 */}
        <Pressable style={styles.assessmentCard} onPress={() => router.push("/assessment/start")}>
          <View style={styles.assessmentLeft}>
            <View style={styles.assessmentIconWrap}>
              <Ionicons name="school" size={24} color="#FFFFFF" />
            </View>
            <View>
              <Text style={styles.assessmentTitle}>词汇量测评</Text>
              <Text style={styles.assessmentDesc}>了解你的真实英语水平</Text>
            </View>
          </View>
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
        </Pressable>

        {/* 体验课入口（如果未完成体验课） */}
        {(!experience || experience.status === "in_progress") && (
          <Pressable style={styles.experienceCard} onPress={() => router.push("/experience/course")}>
            <View style={styles.expLeft}>
              <Ionicons name="rocket" size={24} color={Colors.gold} />
              <View style={styles.expInfo}>
                <Text style={styles.expTitle}>3天免费体验课</Text>
                <Text style={styles.expDesc}>约100个核心词汇，快速入门</Text>
              </View>
            </View>
            <View style={styles.expBadge}>
              <Text style={styles.expBadgeText}>免费</Text>
            </View>
          </Pressable>
        )}

        {/* 正式课程入口 */}
        <Pressable style={styles.courseCard} onPress={() => router.push("/course/level?courseId=course-cet4")}>
          <View style={styles.courseLeft}>
            <View style={styles.courseIconWrap}>
              <Ionicons name="book" size={22} color={Colors.primary} />
            </View>
            <View style={styles.courseInfo}>
              <Text style={styles.courseTitle}>{book?.title ?? "选择课程"}</Text>
              <Text style={styles.courseDesc}>系统化学习，科学复习</Text>
            </View>
          </View>
          <Pressable style={styles.switchBtn} onPress={() => setPickerOpen(true)}>
            <Text style={styles.switchBtnText}>切换</Text>
          </Pressable>
        </Pressable>

        {/* 当前词书进度 */}
        <View style={styles.progressCard}>
          <View style={styles.progressHeader}>
            <Text style={styles.progressTitle}>学习进度</Text>
          </View>
          <View style={styles.progressTrack}>
            <View style={[styles.progressFill, { width: `${progress}%` }]} />
          </View>
          <View style={styles.progressInfo}>
            <Text style={styles.progressText}>
              已学 {stats?.totalLearned ?? 0} / {book?.wordCount ?? 0} 词
            </Text>
            <Text style={styles.masteredText}>掌握 {stats?.mastered ?? 0}</Text>
          </View>
        </View>

        {/* 今日目标 */}
        <View style={styles.card}>
          <View style={styles.sectionTitleRow}>
            <Ionicons name="bar-chart" size={18} color={Colors.primary} />
            <Text style={styles.sectionTitle}>今日目标</Text>
          </View>
          <View style={styles.goalItem}>
            <View style={styles.goalHeader}>
              <View style={[styles.goalDot, { backgroundColor: Colors.gold }]} />
              <Text style={styles.goalLabel}>新词</Text>
              <Text style={styles.goalValue}>
                {stats?.todayNew ?? 0} / {GOAL_NEW}
              </Text>
            </View>
            <View style={styles.goalTrack}>
              <View style={[styles.goalFillNew, { width: `${newPct}%` }]} />
            </View>
          </View>
          <View style={styles.goalItem}>
            <View style={styles.goalHeader}>
              <View style={[styles.goalDot, { backgroundColor: Colors.success }]} />
              <Text style={styles.goalLabel}>复习</Text>
              <Text style={styles.goalValue}>
                {stats?.todayReview ?? 0} / {GOAL_REVIEW}
              </Text>
            </View>
            <View style={styles.goalTrack}>
              <View style={[styles.goalFillReview, { width: `${reviewPct}%` }]} />
            </View>
          </View>
        </View>

        {/* 快捷入口 */}
        <View style={styles.quickGrid}>
          <Pressable style={styles.quickItem} onPress={() => router.push("/word/wrong-list")}>
            <View style={[styles.quickIcon, { backgroundColor: Colors.dangerBg }]}>
              <Ionicons name="alert-circle" size={20} color={Colors.danger} />
            </View>
            <Text style={styles.quickLabel}>错词本</Text>
          </Pressable>
          <Pressable style={styles.quickItem} onPress={() => router.push("/ai/analysis")}>
            <View style={[styles.quickIcon, { backgroundColor: Colors.primaryBg }]}>
              <Ionicons name="sparkles" size={20} color={Colors.primary} />
            </View>
            <Text style={styles.quickLabel}>AI解析</Text>
          </Pressable>
          <Pressable style={styles.quickItem} onPress={() => router.push("/settings/device")}>
            <View style={[styles.quickIcon, { backgroundColor: Colors.goldBg }]}>
              <Ionicons name="phone-portrait" size={20} color={Colors.gold} />
            </View>
            <Text style={styles.quickLabel}>设备管理</Text>
          </Pressable>
          <Pressable style={styles.quickItem} onPress={() => router.push("/settings/export")}>
            <View style={[styles.quickIcon, { backgroundColor: Colors.successBg }]}>
              <Ionicons name="document-text" size={20} color={Colors.success} />
            </View>
            <Text style={styles.quickLabel}>学习报告</Text>
          </Pressable>
        </View>

        {/* 学习/复习按钮 */}
        <View style={styles.actions}>
          <Pressable
            style={[styles.actionBtn, styles.actionPrimary]}
            onPress={() => router.push("/review?mode=new")}
          >
            <Ionicons name="play" size={22} color="#FFFFFF" />
            <Text style={styles.actionPrimaryText}>学习新词</Text>
            <Text style={styles.actionPrimarySub}>今日还需 {Math.max(0, GOAL_NEW - (stats?.todayNew ?? 0))} 词</Text>
          </Pressable>
          <Pressable
            style={[styles.actionBtn, stats?.dueCount ?? 0 > 0 ? styles.actionSecondary : styles.actionSecondaryDisabled]}
            onPress={() => router.push("/review?mode=review")}
          >
            <Ionicons name="refresh" size={22} color={stats?.dueCount ?? 0 > 0 ? Colors.accent : Colors.textMuted} />
            <Text style={[styles.actionSecondaryText, stats?.dueCount ?? 0 > 0 ? {} : { color: Colors.textMuted }]}>
              复习
            </Text>
            <Text style={styles.actionSecondarySub}>{stats?.dueCount ?? 0} 词待复习</Text>
          </Pressable>
        </View>
      </ScrollView>

      {/* 词书选择弹窗 */}
      <Modal visible={pickerOpen} transparent animationType="slide">
        <Pressable style={styles.modalMask} onPress={() => setPickerOpen(false)}>
          <View style={styles.modalSheet} onStartShouldSetResponder={() => true}>
            <View style={styles.modalHandle} />
            <Text style={styles.modalTitle}>选择词书</Text>
            {books.map((b) => (
              <Pressable
                key={b.id}
                style={[styles.bookItem, book?.id === b.id && styles.bookItemActive]}
                onPress={() => switchBook(b)}
              >
                <View style={styles.bookItemLeft}>
                  <Ionicons name="book" size={20} color={book?.id === b.id ? Colors.primary : Colors.textMuted} />
                </View>
                <View style={styles.bookItemContent}>
                  <Text style={styles.bookItemTitle}>{b.title}</Text>
                  <Text style={styles.bookItemMeta}>{b.wordCount} 词 · {b.level}</Text>
                </View>
                {book?.id === b.id && <Ionicons name="checkmark-circle" size={20} color={Colors.primary} />}
              </Pressable>
            ))}
          </View>
        </Pressable>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1, backgroundColor: Colors.background },
  container: { flex: 1 },
  content: { paddingHorizontal: Spacing.xl },
  center: { flex: 1, alignItems: "center", justifyContent: "center", backgroundColor: Colors.background },

  // Header
  header: { flexDirection: "row", justifyContent: "space-between", alignItems: "flex-start", marginBottom: Spacing.xl },
  greetingRow: { flexDirection: "row", alignItems: "center", gap: Spacing.sm, marginBottom: Spacing.xs },
  greeting: { ...Typography.caption },
  appName: { ...Typography.h1, color: Colors.primary },
  streakBadge: {
    flexDirection: "row", alignItems: "center", gap: Spacing.xs,
    backgroundColor: Colors.goldBg, borderRadius: Radius.pill,
    paddingHorizontal: Spacing.md, paddingVertical: Spacing.sm,
  },
  streakText: { ...Typography.label, color: Colors.gold, fontWeight: "700" },

  // Assessment card
  assessmentCard: {
    backgroundColor: Colors.primary, borderRadius: Radius.xl, padding: Spacing.lg,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    marginBottom: Spacing.md, ...Shadow.lifted,
  },
  assessmentLeft: { flexDirection: "row", alignItems: "center", gap: Spacing.md, flex: 1 },
  assessmentIconWrap: {
    width: 48, height: 48, borderRadius: 24, backgroundColor: "rgba(255,255,255,0.2)",
    alignItems: "center", justifyContent: "center",
  },
  assessmentTitle: { ...Typography.body, color: "#FFFFFF", fontWeight: "700" },
  assessmentDesc: { ...Typography.label, color: "rgba(255,255,255,0.8)", marginTop: Spacing.xs },

  // Experience card
  experienceCard: {
    backgroundColor: Colors.surface, borderRadius: Radius.lg, padding: Spacing.lg,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    marginBottom: Spacing.md, borderWidth: 1.5, borderColor: Colors.gold, ...Shadow.soft,
  },
  expLeft: { flexDirection: "row", alignItems: "center", gap: Spacing.md, flex: 1 },
  expInfo: { flex: 1 },
  expTitle: { ...Typography.body, fontWeight: "600", color: Colors.goldDark },
  expDesc: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.xs },
  expBadge: { backgroundColor: Colors.gold, borderRadius: Radius.sm, paddingHorizontal: Spacing.sm, paddingVertical: Spacing.xs },
  expBadgeText: { ...Typography.label, color: "#FFFFFF", fontWeight: "700", fontSize: 10 },

  // Course card
  courseCard: {
    backgroundColor: Colors.surface, borderRadius: Radius.lg, padding: Spacing.lg,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    marginBottom: Spacing.lg, ...Shadow.soft,
  },
  courseLeft: { flexDirection: "row", alignItems: "center", gap: Spacing.md, flex: 1 },
  courseIconWrap: {
    width: 44, height: 44, borderRadius: Radius.md, backgroundColor: Colors.primaryBg,
    alignItems: "center", justifyContent: "center",
  },
  courseInfo: { flex: 1 },
  courseTitle: { ...Typography.body, fontWeight: "700" },
  courseDesc: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.xs },
  switchBtn: { backgroundColor: Colors.primaryBg, borderRadius: Radius.sm, paddingHorizontal: Spacing.md, paddingVertical: Spacing.sm },
  switchBtnText: { ...Typography.label, color: Colors.primary, fontWeight: "600" },

  // Progress
  progressCard: {
    backgroundColor: Colors.surface, borderRadius: Radius.lg, padding: Spacing.lg,
    marginBottom: Spacing.lg, ...Shadow.soft,
  },
  progressHeader: { marginBottom: Spacing.md },
  progressTitle: { ...Typography.h3 },
  progressTrack: { height: 8, borderRadius: Radius.pill, backgroundColor: Colors.divider, overflow: "hidden" },
  progressFill: { height: "100%", borderRadius: Radius.pill, backgroundColor: Colors.primary },
  progressInfo: { flexDirection: "row", justifyContent: "space-between", marginTop: Spacing.sm },
  progressText: { ...Typography.caption },
  masteredText: { ...Typography.caption, color: Colors.success, fontWeight: "600" },

  // Card generic
  card: { backgroundColor: Colors.surface, borderRadius: Radius.lg, padding: Spacing.lg, marginBottom: Spacing.lg, ...Shadow.soft },
  sectionTitleRow: { flexDirection: "row", alignItems: "center", gap: Spacing.sm, marginBottom: Spacing.lg },
  sectionTitle: { ...Typography.h3 },

  // Goals
  goalItem: { marginBottom: Spacing.md },
  goalHeader: { flexDirection: "row", alignItems: "center", marginBottom: Spacing.sm },
  goalDot: { width: 8, height: 8, borderRadius: 4, marginRight: Spacing.sm },
  goalLabel: { ...Typography.caption, color: Colors.textSecondary, flex: 1 },
  goalValue: { ...Typography.caption, color: Colors.text, fontWeight: "600" },
  goalTrack: { height: 6, borderRadius: Radius.pill, backgroundColor: Colors.divider, overflow: "hidden" },
  goalFillNew: { height: "100%", borderRadius: Radius.pill, backgroundColor: Colors.gold },
  goalFillReview: { height: "100%", borderRadius: Radius.pill, backgroundColor: Colors.success },

  // Quick grid
  quickGrid: { flexDirection: "row", justifyContent: "space-between", marginBottom: Spacing.xl },
  quickItem: { alignItems: "center", gap: Spacing.xs, flex: 1 },
  quickIcon: {
    width: 48, height: 48, borderRadius: 24, alignItems: "center", justifyContent: "center", marginBottom: Spacing.xs,
  },
  quickLabel: { ...Typography.label, color: Colors.textSecondary },

  // Actions
  actions: { flexDirection: "row", gap: Spacing.md },
  actionBtn: { flex: 1, borderRadius: Radius.lg, paddingVertical: Spacing.xl, alignItems: "center", gap: Spacing.xs },
  actionPrimary: { backgroundColor: Colors.primary, ...Shadow.button },
  actionSecondary: { backgroundColor: Colors.surface, borderWidth: 1.5, borderColor: Colors.accentBg },
  actionSecondaryDisabled: { backgroundColor: Colors.surface, borderWidth: 1.5, borderColor: Colors.divider },
  actionPrimaryText: { ...Typography.body, color: "#FFFFFF", fontWeight: "700" },
  actionPrimarySub: { ...Typography.label, color: "rgba(255,255,255,0.7)" },
  actionSecondaryText: { ...Typography.body, color: Colors.accent, fontWeight: "700" },
  actionSecondarySub: { ...Typography.label, color: Colors.textMuted },

  // Modal
  modalMask: { flex: 1, backgroundColor: "rgba(0,0,0,0.45)", justifyContent: "flex-end" },
  modalSheet: {
    backgroundColor: Colors.surface, borderTopLeftRadius: Radius.xl, borderTopRightRadius: Radius.xl,
    padding: Spacing.xl, paddingBottom: 40,
  },
  modalHandle: { width: 36, height: 4, borderRadius: 2, backgroundColor: Colors.divider, alignSelf: "center", marginBottom: Spacing.lg },
  modalTitle: { ...Typography.h3, marginBottom: Spacing.lg },
  bookItem: {
    flexDirection: "row", alignItems: "center", paddingVertical: Spacing.lg,
    paddingHorizontal: Spacing.md, borderRadius: Radius.md, marginBottom: Spacing.sm,
  },
  bookItemActive: { backgroundColor: Colors.primaryBg },
  bookItemLeft: { marginRight: Spacing.md },
  bookItemContent: { flex: 1 },
  bookItemTitle: { ...Typography.body, fontWeight: "600" },
  bookItemMeta: { ...Typography.label, color: Colors.textMuted, marginTop: Spacing.xs },
});
