// 错词列表页：显示错词池，支持筛选和状态管理

import { useCallback, useEffect, useState } from "react";
import {
  ActivityIndicator,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { router } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import { getRepository } from "@/lib/repository";
import type { WrongWord } from "@/types/database";
import GradientButton from "@/components/ui/GradientButton";
import Badge from "@/components/ui/Badge";
import Card from "@/components/ui/Card";
import EmptyState from "@/components/ui/EmptyState";
import SectionTitle from "@/components/ui/SectionTitle";

type FilterType = "all" | "new" | "learning" | "mastered";

const FILTERS: { key: FilterType; label: string }[] = [
  { key: "all", label: "全部" },
  { key: "new", label: "新错词" },
  { key: "learning", label: "学习中" },
  { key: "mastered", label: "已掌握" },
];

const STATUS_MAP: Record<string, { label: string; color: string; bg: string; badgeVariant: "danger" | "gold" | "success" }> = {
  new: { label: "新错词", color: Colors.danger, bg: Colors.dangerBg, badgeVariant: "danger" },
  learning: { label: "学习中", color: Colors.gold, bg: Colors.goldBg, badgeVariant: "gold" },
  mastered: { label: "已掌握", color: Colors.success, bg: Colors.successBg, badgeVariant: "success" },
};

const STAT_COLORS: Record<string, string> = {
  total: Colors.primary,
  new: Colors.danger,
  learning: Colors.gold,
  mastered: Colors.success,
};

export default function WrongWordListScreen() {
  const insets = useSafeAreaInsets();
  const [words, setWords] = useState<WrongWord[]>([]);
  const [filter, setFilter] = useState<FilterType>("all");
  const [stats, setStats] = useState({ total: 0, newCount: 0, learningCount: 0, masteredCount: 0 });
  const [loading, setLoading] = useState(true);

  const loadData = useCallback(async () => {
    try {
      const repo = getRepository();
      const [allWords, s] = await Promise.all([
        repo.getWrongWords(),
        repo.getWrongWordStats(),
      ]);
      setWords(allWords);
      setStats(s);
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    loadData();
  }, [loadData]);

  const filteredWords = filter === "all" ? words : words.filter((w) => w.status === filter);

  const markAsMastered = async (wrongWordId: string) => {
    try {
      const repo = getRepository();
      await repo.updateWrongWordStatus(wrongWordId, "mastered");
      loadData();
    } catch (e) {
      console.error(e);
    }
  };

  const startReview = () => {
    router.push("/review?mode=review");
  };

  if (loading) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <ActivityIndicator size="large" color={Colors.primary} />
      </View>
    );
  }

  return (
    <View style={[styles.container, { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + Spacing.lg }]}>
      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={styles.content}>
        {/* 顶部导航 */}
        <View style={styles.topRow}>
          <Pressable style={styles.backBtn} onPress={() => router.back()} hitSlop={10}>
            <Ionicons name="arrow-back" size={24} color={Colors.text} />
          </Pressable>
          <Text style={styles.topTitle}>错词本</Text>
          <View style={{ width: 44 }} />
        </View>

        {/* 统计卡片 */}
        <Card variant="elevated" style={styles.statsCard}>
          <View style={styles.statsRow}>
            <View style={styles.statItem}>
              <View
                style={[styles.statValueWrap, { backgroundColor: STAT_COLORS.total }]}
              >
                <Text style={styles.statValueText}>{stats.total}</Text>
              </View>
              <Text style={styles.statLabel}>总错词</Text>
            </View>
            <View style={styles.statDivider} />
            <View style={styles.statItem}>
              <View
                style={[styles.statValueWrap, { backgroundColor: STAT_COLORS.new }]}
              >
                <Text style={styles.statValueText}>{stats.newCount}</Text>
              </View>
              <Text style={styles.statLabel}>新错词</Text>
            </View>
            <View style={styles.statDivider} />
            <View style={styles.statItem}>
              <View
                style={[styles.statValueWrap, { backgroundColor: STAT_COLORS.learning }]}
              >
                <Text style={styles.statValueText}>{stats.learningCount}</Text>
              </View>
              <Text style={styles.statLabel}>学习中</Text>
            </View>
            <View style={styles.statDivider} />
            <View style={styles.statItem}>
              <View
                style={[styles.statValueWrap, { backgroundColor: STAT_COLORS.mastered }]}
              >
                <Text style={styles.statValueText}>{stats.masteredCount}</Text>
              </View>
              <Text style={styles.statLabel}>已掌握</Text>
            </View>
          </View>
        </Card>

        {/* 筛选标签 */}
        <ScrollView horizontal showsHorizontalScrollIndicator={false} style={styles.filterRow}>
          {FILTERS.map((f) => (
            <Pressable
              key={f.key}
              onPress={() => setFilter(f.key)}
            >
              {filter === f.key ? (
                <View style={[styles.filterTagGradient, { backgroundColor: Colors.primary }]}>
                  <Text style={styles.filterTextActive}>{f.label}</Text>
                </View>
              ) : (
                <View style={styles.filterTag}>
                  <Text style={styles.filterText}>{f.label}</Text>
                </View>
              )}
            </Pressable>
          ))}
        </ScrollView>

        {/* 错词列表 */}
        {filteredWords.length === 0 ? (
          <EmptyState
            icon="checkmark-circle-outline"
            title="太棒了！"
            description={filter === "all" ? "暂无错词" : `没有${FILTERS.find(f => f.key === filter)?.label ?? ""}的错词`}
            iconColor={Colors.success}
          />
        ) : (
          filteredWords.map((wrongWord) => {
            const statusInfo = STATUS_MAP[wrongWord.status] ?? STATUS_MAP.new;
            return (
              <Card key={wrongWord.id} style={styles.wordCard}>
                <View style={styles.wordRow}>
                  <View style={styles.wordInfo}>
                    <Text style={styles.wordSpelling}>{wrongWord.word.spelling}</Text>
                    <Text style={styles.wordPhonetic}>{wrongWord.word.phonetic}</Text>
                    <Text style={styles.wordMeaning}>
                      {wrongWord.word.definitions[0]?.meaning ?? ""}
                    </Text>
                  </View>
                  <Badge
                    label={statusInfo.label}
                    variant={statusInfo.badgeVariant}
                  />
                </View>
                <View style={styles.wordMeta}>
                  <Text style={styles.metaText}>答错 {wrongWord.wrongCount} 次</Text>
                  {wrongWord.status !== "mastered" && (
                    <Pressable onPress={() => markAsMastered(wrongWord.id)}>
                      <Text style={styles.markBtn}>标记已掌握</Text>
                    </Pressable>
                  )}
                </View>
              </Card>
            );
          })
        )}

        {/* AI 分析提示 */}
        {words.length > 0 && (
          <Pressable style={styles.aiCard} onPress={() => router.push("/ai/analysis")}>
            <Ionicons name="sparkles" size={20} color={Colors.primary} />
            <View style={styles.aiInfo}>
              <Text style={styles.aiTitle}>AI 智能解析</Text>
              <Text style={styles.aiDesc}>获取错词的详细解析和记忆技巧</Text>
            </View>
            <Ionicons name="chevron-forward" size={20} color={Colors.textMuted} />
          </Pressable>
        )}

        {/* 复习按钮 */}
        {words.filter((w) => w.status !== "mastered").length > 0 && (
          <GradientButton onPress={startReview} size="lg">
            开始复习错词
          </GradientButton>
        )}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: Colors.background },
  center: { flex: 1, alignItems: "center", justifyContent: "center", backgroundColor: Colors.background },
  content: { paddingHorizontal: Spacing.xl },
  topRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginBottom: Spacing.xl },
  backBtn: {
    width: 44, height: 44, borderRadius: 22, backgroundColor: Colors.surface,
    alignItems: "center", justifyContent: "center", ...Shadow.soft,
  },
  topTitle: { ...Typography.h3 },

  // 统计卡片
  statsCard: {
    marginBottom: Spacing.xl,
  },
  statsRow: {
    flexDirection: "row",
  },
  statItem: { flex: 1, alignItems: "center" },
  statValueWrap: {
    width: 48,
    height: 48,
    borderRadius: Radius.md,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: Spacing.xs,
  },
  statValueText: {
    ...Typography.stat,
    color: Colors.white,
    fontSize: 20,
  },
  statDivider: { width: 1, backgroundColor: Colors.divider },
  statLabel: { ...Typography.label, color: Colors.textMuted, marginTop: Spacing.xs },

  // 筛选标签
  filterRow: { marginBottom: Spacing.lg },
  filterTag: {
    paddingHorizontal: Spacing.lg, paddingVertical: Spacing.sm,
    borderRadius: Radius.pill, backgroundColor: Colors.surface,
    marginRight: Spacing.sm, borderWidth: 1, borderColor: Colors.border,
  },
  filterTagGradient: {
    paddingHorizontal: Spacing.lg, paddingVertical: Spacing.sm,
    borderRadius: Radius.pill, marginRight: Spacing.sm,
  },
  filterText: { ...Typography.label, color: Colors.textSecondary },
  filterTextActive: { ...Typography.label, color: Colors.white },

  // 错词卡片
  wordCard: {
    marginBottom: Spacing.md,
  },
  wordRow: { flexDirection: "row", justifyContent: "space-between", alignItems: "flex-start" },
  wordInfo: { flex: 1, marginRight: Spacing.sm },
  wordSpelling: { fontSize: 18, fontWeight: "700", color: Colors.text },
  wordPhonetic: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.xs },
  wordMeaning: { ...Typography.caption, color: Colors.textSecondary, marginTop: Spacing.xs },
  wordMeta: { flexDirection: "row", justifyContent: "space-between", alignItems: "center", marginTop: Spacing.md },
  metaText: { ...Typography.label, color: Colors.textMuted },
  markBtn: { ...Typography.label, color: Colors.primary, fontWeight: "600" },

  // AI 卡片
  aiCard: {
    flexDirection: "row", alignItems: "center", backgroundColor: Colors.primaryBg,
    borderRadius: Radius.xl, padding: Spacing.lg, marginBottom: Spacing.md, gap: Spacing.md,
  },
  aiInfo: { flex: 1 },
  aiTitle: { ...Typography.body, fontWeight: "600", color: Colors.primary },
  aiDesc: { ...Typography.caption, color: Colors.textSecondary, marginTop: Spacing.xs },
});
