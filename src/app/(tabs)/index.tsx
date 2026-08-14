// 学习首页：词书选择 + 今日目标 + 开始学习/复习

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
import type { Stats, WordBook } from "@/types/database";

const GOAL_NEW = 20;
const GOAL_REVIEW = 100;

// 获取问候语（使用 Ionicons）
const getGreeting = () => {
  const hour = new Date().getHours();
  if (hour < 12) return { text: "早上好", icon: "sunny" as const, color: Colors.gold };
  if (hour < 18) return { text: "下午好", icon: "partly-sunny" as const, color: Colors.gold };
  return { text: "晚上好", icon: "moon" as const, color: Colors.primary };
};

export default function HomeScreen() {
  const insets = useSafeAreaInsets();
  const [book, setBook] = useState<WordBook | null>(null);
  const [books, setBooks] = useState<WordBook[]>([]);
  const [stats, setStats] = useState<Stats | null>(null);
  const [pickerOpen, setPickerOpen] = useState(false);
  const [loading, setLoading] = useState(true);

  const refresh = useCallback(async () => {
    const repo = getRepository();
    try {
      const [b, s] = await Promise.all([repo.getCurrentBook(), repo.getStats()]);
      setBook(b);
      setStats(s);
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

        {/* 当前词书卡片 */}
        <View style={[styles.card, styles.bookCard]}>
          <View style={styles.cardHeader}>
            <View style={styles.bookIconWrap}>
              <Ionicons name="book" size={22} color={Colors.primary} />
            </View>
            <View style={styles.bookInfo}>
              <Text style={styles.bookTitle}>{book?.title}</Text>
              <Text style={styles.bookDesc}>{book?.description}</Text>
            </View>
            <Pressable style={styles.switchBtn} onPress={() => setPickerOpen(true)}>
              <Text style={styles.switchBtnText}>切换</Text>
            </Pressable>
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

        {/* 行动按钮 */}
        <View style={styles.actions}>
          <Pressable
            style={[styles.actionBtn, styles.actionPrimary]}
            onPress={() => router.push({ pathname: "/review", params: { mode: "new" } })}
          >
            <Ionicons name="sparkles" size={20} color="#FFF" />
            <Text style={styles.actionPrimaryText}>学新词</Text>
            <Text style={styles.actionPrimarySub}>还剩 {stats?.newCount ?? 0} 个</Text>
          </Pressable>
          <Pressable
            style={[styles.actionBtn, styles.actionSecondary]}
            onPress={() => router.push({ pathname: "/review", params: { mode: "review" } })}
          >
            <Ionicons name="refresh" size={20} color={Colors.accent} />
            <Text style={styles.actionSecondaryText}>开始复习</Text>
            <Text style={styles.actionSecondarySub}>
              待复习 {stats?.dueCount ?? 0}
            </Text>
          </Pressable>
        </View>
      </ScrollView>

      {/* 词书选择弹窗 */}
      <Modal visible={pickerOpen} transparent animationType="slide">
        <Pressable style={styles.modalMask} onPress={() => setPickerOpen(false)}>
          <Pressable style={styles.modalSheet} onPress={() => {}}>
            <View style={styles.modalHandle} />
            <Text style={styles.modalTitle}>选择词书</Text>
            {books.map((b) => (
              <Pressable
                key={b.id}
                style={[styles.bookItem, b.id === book?.id && styles.bookItemActive]}
                onPress={() => switchBook(b)}
              >
                <View style={styles.bookItemLeft}>
                  <Ionicons
                    name={b.id === book?.id ? "checkmark-circle" : "ellipse-outline"}
                    size={20}
                    color={b.id === book?.id ? Colors.primary : Colors.textHint}
                  />
                </View>
                <View style={styles.bookItemContent}>
                  <Text style={styles.bookItemTitle}>{b.title}</Text>
                  <Text style={styles.bookItemMeta}>
                    {b.level} · {b.wordCount} 词
                  </Text>
                </View>
              </Pressable>
            ))}
          </Pressable>
        </Pressable>
      </Modal>
    </View>
  );
}

const styles = StyleSheet.create({
  screen: { flex: 1, backgroundColor: Colors.background },
  container: { flex: 1 },
  content: { padding: Spacing.xl },
  center: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: Colors.background,
  },

  // Header
  header: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "flex-start",
    marginBottom: Spacing.xl,
  },
  greetingRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
    marginBottom: Spacing.xs,
  },
  greeting: {
    ...Typography.caption,
  },
  appName: {
    ...Typography.h1,
    color: Colors.primary,
  },
  streakBadge: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.xs,
    backgroundColor: Colors.goldBg,
    borderRadius: Radius.pill,
    paddingHorizontal: Spacing.md,
    paddingVertical: Spacing.sm,
  },
  streakText: {
    ...Typography.label,
    color: Colors.gold,
    fontWeight: "700",
  },

  // Cards
  card: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    marginBottom: Spacing.lg,
    ...Shadow.card,
  },
  bookCard: {
    borderLeftWidth: 3,
    borderLeftColor: Colors.primary,
  },
  cardHeader: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: Spacing.lg,
  },
  bookIconWrap: {
    width: 42,
    height: 42,
    borderRadius: Radius.md,
    backgroundColor: Colors.primaryBg,
    alignItems: "center",
    justifyContent: "center",
  },
  bookInfo: {
    flex: 1,
    marginLeft: Spacing.md,
  },
  bookTitle: {
    ...Typography.body,
    fontWeight: "700",
  },
  bookDesc: {
    ...Typography.label,
    color: Colors.textMuted,
    marginTop: Spacing.xs,
  },
  switchBtn: {
    backgroundColor: Colors.primaryBg,
    borderRadius: Radius.sm,
    paddingHorizontal: Spacing.md,
    paddingVertical: Spacing.sm,
  },
  switchBtnText: {
    ...Typography.label,
    color: Colors.primary,
    fontWeight: "600",
  },

  // Progress
  progressTrack: {
    height: 8,
    borderRadius: Radius.pill,
    backgroundColor: Colors.divider,
    overflow: "hidden",
  },
  progressFill: {
    height: "100%",
    borderRadius: Radius.pill,
    backgroundColor: Colors.primary,
  },
  progressInfo: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginTop: Spacing.sm,
  },
  progressText: {
    ...Typography.caption,
  },
  masteredText: {
    ...Typography.caption,
    color: Colors.success,
    fontWeight: "600",
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
    marginBottom: Spacing.md,
  },
  goalHeader: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: Spacing.sm,
  },
  goalDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
    marginRight: Spacing.sm,
  },
  goalLabel: {
    ...Typography.caption,
    color: Colors.textSecondary,
    flex: 1,
  },
  goalValue: {
    ...Typography.caption,
    color: Colors.text,
    fontWeight: "600",
  },
  goalTrack: {
    height: 6,
    borderRadius: Radius.pill,
    backgroundColor: Colors.divider,
    overflow: "hidden",
  },
  goalFillNew: {
    height: "100%",
    borderRadius: Radius.pill,
    backgroundColor: Colors.gold,
  },
  goalFillReview: {
    height: "100%",
    borderRadius: Radius.pill,
    backgroundColor: Colors.success,
  },

  // Actions
  actions: {
    flexDirection: "row",
    gap: Spacing.md,
    marginTop: Spacing.sm,
  },
  actionBtn: {
    flex: 1,
    borderRadius: Radius.lg,
    paddingVertical: Spacing.xl,
    alignItems: "center",
    gap: Spacing.xs,
  },
  actionPrimary: {
    backgroundColor: Colors.primary,
    ...Shadow.button,
  },
  actionSecondary: {
    backgroundColor: Colors.surface,
    borderWidth: 1.5,
    borderColor: Colors.accentBg,
  },
  actionPrimaryText: {
    ...Typography.body,
    color: "#FFFFFF",
    fontWeight: "700",
  },
  actionPrimarySub: {
    ...Typography.label,
    color: "rgba(255,255,255,0.7)",
  },
  actionSecondaryText: {
    ...Typography.body,
    color: Colors.accent,
    fontWeight: "700",
  },
  actionSecondarySub: {
    ...Typography.label,
    color: Colors.textMuted,
  },

  // Modal
  modalMask: {
    flex: 1,
    backgroundColor: "rgba(0,0,0,0.45)",
    justifyContent: "flex-end",
  },
  modalSheet: {
    backgroundColor: Colors.surface,
    borderTopLeftRadius: Radius.xl,
    borderTopRightRadius: Radius.xl,
    padding: Spacing.xl,
    paddingBottom: 40,
  },
  modalHandle: {
    width: 36,
    height: 4,
    borderRadius: 2,
    backgroundColor: Colors.divider,
    alignSelf: "center",
    marginBottom: Spacing.lg,
  },
  modalTitle: {
    ...Typography.h3,
    marginBottom: Spacing.lg,
  },
  bookItem: {
    flexDirection: "row",
    alignItems: "center",
    paddingVertical: Spacing.lg,
    paddingHorizontal: Spacing.md,
    borderRadius: Radius.md,
    marginBottom: Spacing.sm,
  },
  bookItemActive: {
    backgroundColor: Colors.primaryBg,
  },
  bookItemLeft: {
    marginRight: Spacing.md,
  },
  bookItemContent: {
    flex: 1,
  },
  bookItemTitle: {
    ...Typography.body,
    fontWeight: "600",
  },
  bookItemMeta: {
    ...Typography.label,
    color: Colors.textMuted,
    marginTop: Spacing.xs,
  },
});
