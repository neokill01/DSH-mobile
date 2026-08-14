// 学习首页：词书选择 + 今日目标 + 开始学习/复习

import { useCallback, useState } from "react";
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
import { Colors, Spacing, Radius, Shadow } from "@/constants/theme";
import type { Stats, WordBook } from "@/types/database";

const GOAL_NEW = 20;
const GOAL_REVIEW = 100;

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
        {/* 顶部：App 名 + 连续打卡 */}
        <View style={styles.header}>
          <View>
            <Text style={styles.greeting}>早上好 👋</Text>
            <Text style={styles.appName}>词记</Text>
          </View>
          <View style={styles.streakBadge}>
            <Ionicons name="flame" size={16} color={Colors.warning} />
            <Text style={styles.streakText}>连续 {stats?.streak ?? 0} 天</Text>
          </View>
        </View>

        {/* 当前词书卡片 */}
        <View style={[styles.card, styles.bookCard]}>
          <View style={styles.cardHeader}>
            <View style={styles.bookIconWrap}>
              <Ionicons name="book" size={22} color={Colors.primary} />
            </View>
            <View style={{ flex: 1, marginLeft: 12 }}>
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
          <Text style={styles.sectionTitle}>今日目标</Text>
          <View style={styles.goalItem}>
            <View style={styles.goalHeader}>
              <View style={[styles.goalDot, { backgroundColor: Colors.amber }]} />
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
              <View style={[styles.goalDot, { backgroundColor: Colors.green }]} />
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
            <Text style={styles.actionPrimaryText}>学习新词</Text>
            <Text style={styles.actionPrimarySub}>还剩 {stats?.newCount ?? 0} 个未学</Text>
          </Pressable>
          <Pressable
            style={[styles.actionBtn, styles.actionSecondary]}
            onPress={() => router.push({ pathname: "/review", params: { mode: "review" } })}
          >
            <Ionicons name="refresh" size={20} color={Colors.primary} />
            <Text style={styles.actionSecondaryText}>复习</Text>
            <Text style={styles.actionSecondarySub}>
              {stats?.dueCount ?? 0} 个词待复习
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
                <View style={{ flex: 1 }}>
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
    marginBottom: 20,
  },
  greeting: {
    fontSize: 14,
    color: Colors.textTertiary,
    marginBottom: 2,
  },
  appName: {
    fontSize: 28,
    fontWeight: "800",
    color: Colors.text,
    letterSpacing: -0.5,
  },
  streakBadge: {
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
    backgroundColor: Colors.warningBg,
    borderRadius: Radius.pill,
    paddingHorizontal: 12,
    paddingVertical: 7,
  },
  streakText: {
    color: Colors.warning,
    fontSize: 13,
    fontWeight: "700",
  },

  // Cards
  card: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    marginBottom: 14,
    ...Shadow.card,
  },
  bookCard: {
    borderLeftWidth: 3,
    borderLeftColor: Colors.primary,
  },
  cardHeader: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 14,
  },
  bookIconWrap: {
    width: 42,
    height: 42,
    borderRadius: Radius.md,
    backgroundColor: Colors.primaryBg,
    alignItems: "center",
    justifyContent: "center",
  },
  bookTitle: {
    fontSize: 16,
    fontWeight: "700",
    color: Colors.text,
  },
  bookDesc: {
    fontSize: 12,
    color: Colors.textMuted,
    marginTop: 2,
  },
  switchBtn: {
    backgroundColor: Colors.primaryBg,
    borderRadius: Radius.sm,
    paddingHorizontal: 12,
    paddingVertical: 6,
  },
  switchBtnText: {
    color: Colors.primary,
    fontSize: 13,
    fontWeight: "600",
  },

  // Progress
  progressTrack: {
    height: 8,
    borderRadius: 4,
    backgroundColor: Colors.divider,
    overflow: "hidden",
  },
  progressFill: {
    height: "100%",
    borderRadius: 4,
    backgroundColor: Colors.primary,
  },
  progressInfo: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginTop: 8,
  },
  progressText: {
    fontSize: 12,
    color: Colors.textTertiary,
  },
  masteredText: {
    fontSize: 12,
    color: Colors.success,
    fontWeight: "600",
  },

  // Goals
  sectionTitle: {
    fontSize: 15,
    fontWeight: "700",
    color: Colors.text,
    marginBottom: 14,
  },
  goalItem: {
    marginBottom: 12,
  },
  goalHeader: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 6,
  },
  goalDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
    marginRight: 8,
  },
  goalLabel: {
    fontSize: 13,
    color: Colors.textSecondary,
    flex: 1,
  },
  goalValue: {
    fontSize: 13,
    color: Colors.text,
    fontWeight: "600",
  },
  goalTrack: {
    height: 6,
    borderRadius: 3,
    backgroundColor: Colors.divider,
    overflow: "hidden",
  },
  goalFillNew: {
    height: "100%",
    borderRadius: 3,
    backgroundColor: Colors.amber,
  },
  goalFillReview: {
    height: "100%",
    borderRadius: 3,
    backgroundColor: Colors.green,
  },

  // Actions
  actions: {
    flexDirection: "row",
    gap: 12,
    marginTop: 6,
  },
  actionBtn: {
    flex:1,
    borderRadius: Radius.lg,
    paddingVertical: 18,
    alignItems: "center",
    gap: 4,
  },
  actionPrimary: {
    backgroundColor: Colors.primary,
    ...Shadow.lifted,
  },
  actionSecondary: {
    backgroundColor: Colors.surface,
    borderWidth: 1.5,
    borderColor: Colors.primaryBg,
  },
  actionPrimaryText: {
    color: "#FFFFFF",
    fontSize: 17,
    fontWeight: "700",
  },
  actionPrimarySub: {
    color: "rgba(255,255,255,0.7)",
    fontSize: 12,
  },
  actionSecondaryText: {
    color: Colors.text,
    fontSize: 17,
    fontWeight: "700",
  },
  actionSecondarySub: {
    color: Colors.textMuted,
    fontSize: 12,
  },

  // Modal
  modalMask: {
    flex: 1,
    backgroundColor: "rgba(0,0,0,0.45)",
    justifyContent: "flex-end",
  },
  modalSheet: {
    backgroundColor: Colors.surface,
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    padding: Spacing.xl,
    paddingBottom: 40,
  },
  modalHandle: {
    width: 36,
    height: 4,
    borderRadius: 2,
    backgroundColor: Colors.divider,
    alignSelf: "center",
    marginBottom: 14,
  },
  modalTitle: {
    fontSize: 18,
    fontWeight: "700",
    color: Colors.text,
    marginBottom: 14,
  },
  bookItem: {
    flexDirection: "row",
    alignItems: "center",
    paddingVertical: 14,
    paddingHorizontal: 12,
    borderRadius: Radius.md,
    marginBottom: 6,
  },
  bookItemActive: {
    backgroundColor: Colors.primaryBg,
  },
  bookItemLeft: {
    marginRight: 10,
  },
  bookItemTitle: {
    fontSize: 15,
    fontWeight: "600",
    color: Colors.text,
  },
  bookItemMeta: {
    fontSize: 12,
    color: Colors.textMuted,
    marginTop: 2,
  },
});
