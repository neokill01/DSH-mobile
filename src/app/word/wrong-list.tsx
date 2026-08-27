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

type FilterType = "all" | "new" | "learning" | "mastered";

const FILTERS: { key: FilterType; label: string }[] = [
  { key: "all", label: "全部" },
  { key: "new", label: "新错词" },
  { key: "learning", label: "学习中" },
  { key: "mastered", label: "已掌握" },
];

const STATUS_MAP: Record<string, { label: string; color: string; bg: string }> = {
  new: { label: "新错词", color: Colors.danger, bg: Colors.dangerBg },
  learning: { label: "学习中", color: Colors.gold, bg: Colors.goldBg },
  mastered: { label: "已掌握", color: Colors.success, bg: Colors.successBg },
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
          <View style={{ width: 40 }} />
        </View>

        {/* 统计卡片 */}
        <View style={styles.statsCard}>
          <View style={styles.statItem}>
            <Text style={styles.statValue}>{stats.total}</Text>
            <Text style={styles.statLabel}>总错词</Text>
          </View>
          <View style={styles.statDivider} />
          <View style={styles.statItem}>
            <Text style={[styles.statValue, { color: Colors.danger }]}>{stats.newCount}</Text>
            <Text style={styles.statLabel}>新错词</Text>
          </View>
          <View style={styles.statDivider} />
          <View style={styles.statItem}>
            <Text style={[styles.statValue, { color: Colors.gold }]}>{stats.learningCount}</Text>
            <Text style={styles.statLabel}>学习中</Text>
          </View>
          <View style={styles.statDivider} />
          <View style={styles.statItem}>
            <Text style={[styles.statValue, { color: Colors.success }]}>{stats.masteredCount}</Text>
            <Text style={styles.statLabel}>已掌握</Text>
          </View>
        </View>

        {/* 筛选标签 */}
        <ScrollView horizontal showsHorizontalScrollIndicator={false} style={styles.filterRow}>
          {FILTERS.map((f) => (
            <Pressable
              key={f.key}
              style={[styles.filterTag, filter === f.key && styles.filterTagActive]}
              onPress={() => setFilter(f.key)}
            >
              <Text style={[styles.filterText, filter === f.key && styles.filterTextActive]}>
                {f.label}
              </Text>
            </Pressable>
          ))}
        </ScrollView>

        {/* 错词列表 */}
        {filteredWords.length === 0 ? (
          <View style={styles.emptyBox}>
            <Ionicons name="checkmark-circle-outline" size={48} color={Colors.success} />
            <Text style={styles.emptyTitle}>太棒了！</Text>
            <Text style={styles.emptyDesc}>{filter === "all" ? "暂无错词" : `没有${FILTERS.find(f => f.key === filter)?.label ?? ""}的错词`}</Text>
          </View>
        ) : (
          filteredWords.map((wrongWord) => {
            const statusInfo = STATUS_MAP[wrongWord.status] ?? STATUS_MAP.new;
            return (
              <View key={wrongWord.id} style={styles.wordCard}>
                <View style={styles.wordRow}>
                  <View style={styles.wordInfo}>
                    <Text style={styles.wordSpelling}>{wrongWord.word.spelling}</Text>
                    <Text style={styles.wordPhonetic}>{wrongWord.word.phonetic}</Text>
                    <Text style={styles.wordMeaning}>
                      {wrongWord.word.definitions[0]?.meaning ?? ""}
                    </Text>
                  </View>
                  <View style={[styles.statusBadge, { backgroundColor: statusInfo.bg }]}>
                    <Text style={[styles.statusText, { color: statusInfo.color }]}>{statusInfo.label}</Text>
                  </View>
                </View>
                <View style={styles.wordMeta}>
                  <Text style={styles.metaText}>答错 {wrongWord.wrongCount} 次</Text>
                  {wrongWord.status !== "mastered" && (
                    <Pressable onPress={() => markAsMastered(wrongWord.id)}>
                      <Text style={styles.markBtn}>标记已掌握</Text>
                    </Pressable>
                  )}
                </View>
              </View>
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
          <Pressable style={styles.reviewBtn} onPress={startReview}>
            <Text style={styles.reviewBtnText}>开始复习错词</Text>
          </Pressable>
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
    width: 40, height: 40, borderRadius: 20, backgroundColor: Colors.surface,
    alignItems: "center", justifyContent: "center", ...Shadow.soft,
  },
  topTitle: { ...Typography.h3 },
  statsCard: {
    flexDirection: "row", backgroundColor: Colors.surface, borderRadius: Radius.lg,
    padding: Spacing.lg, marginBottom: Spacing.xl, ...Shadow.card,
  },
  statItem: { flex: 1, alignItems: "center" },
  statDivider: { width: 1, backgroundColor: Colors.divider },
  statValue: { fontSize: 22, fontWeight: "700", color: Colors.text },
  statLabel: { ...Typography.label, color: Colors.textMuted, marginTop: Spacing.xs },
  filterRow: { marginBottom: Spacing.lg },
  filterTag: {
    paddingHorizontal: Spacing.lg, paddingVertical: Spacing.sm,
    borderRadius: Radius.pill, backgroundColor: Colors.surface,
    marginRight: Spacing.sm, borderWidth: 1, borderColor: Colors.border,
  },
  filterTagActive: { backgroundColor: Colors.primary, borderColor: Colors.primary },
  filterText: { ...Typography.label, color: Colors.textSecondary },
  filterTextActive: { color: "#FFFFFF" },
  emptyBox: { alignItems: "center", paddingVertical: Spacing.xxxl },
  emptyTitle: { ...Typography.h3, marginTop: Spacing.md },
  emptyDesc: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.sm },
  wordCard: {
    backgroundColor: Colors.surface, borderRadius: Radius.lg, padding: Spacing.lg,
    marginBottom: Spacing.md, ...Shadow.soft,
  },
  wordRow: { flexDirection: "row", justifyContent: "space-between", alignItems: "flex-start" },
  wordInfo: { flex: 1 },
  wordSpelling: { fontSize: 18, fontWeight: "700", color: Colors.text },
  wordPhonetic: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.xs },
  wordMeaning: { ...Typography.caption, color: Colors.textSecondary, marginTop: Spacing.xs },
  statusBadge: { paddingHorizontal: Spacing.md, paddingVertical: Spacing.xs, borderRadius: Radius.pill },
  statusText: { ...Typography.label, fontWeight: "600" },
  wordMeta: { flexDirection: "row", justifyContent: "space-between", alignItems: "center", marginTop: Spacing.md },
  metaText: { ...Typography.label, color: Colors.textMuted },
  markBtn: { ...Typography.label, color: Colors.primary, fontWeight: "600" },
  aiCard: {
    flexDirection: "row", alignItems: "center", backgroundColor: Colors.primaryBg,
    borderRadius: Radius.lg, padding: Spacing.lg, marginBottom: Spacing.md, gap: Spacing.md,
  },
  aiInfo: { flex: 1 },
  aiTitle: { ...Typography.body, fontWeight: "600", color: Colors.primary },
  aiDesc: { ...Typography.caption, color: Colors.textSecondary, marginTop: Spacing.xs },
  reviewBtn: {
    backgroundColor: Colors.primary, borderRadius: Radius.lg, paddingVertical: Spacing.xl,
    alignItems: "center", ...Shadow.button,
  },
  reviewBtnText: { ...Typography.body, color: "#FFFFFF", fontWeight: "700" },
});
