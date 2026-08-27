// 测评结果页：显示 Band 等级、词汇量估计、推荐课程

import { useCallback, useEffect, useState } from "react";
import {
  ActivityIndicator,
  Pressable,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { router, useLocalSearchParams } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import { getRepository } from "@/lib/repository";
import type { AssessmentResult as ResultType } from "@/types/database";

const BAND_DESCRIPTIONS: Record<number, { label: string; desc: string; color: string }> = {
  0: { label: "Band 0", desc: "零基础（0~500词）", color: Colors.textMuted },
  1: { label: "Band 1", desc: "入门级（500~1000词）", color: Colors.warning },
  2: { label: "Band 2", desc: "基础交流（1000~2000词）", color: Colors.gold },
  3: { label: "Band 3", desc: "日常阅读（2000~3500词）", color: Colors.primary },
  4: { label: "Band 4", desc: "大学水平（3500~4500词）", color: Colors.success },
  5: { label: "Band 5", desc: "高级水平（4500~5500词）", color: Colors.accent },
  6: { label: "Band 6", desc: "精通水平（5500+词）", color: Colors.primaryDark },
};

export default function AssessmentResultScreen() {
  const insets = useSafeAreaInsets();
  const params = useLocalSearchParams<{ id?: string }>();
  const assessmentId = params.id ?? "";

  const [result, setResult] = useState<ResultType | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const loadResult = useCallback(async () => {
    try {
      const repo = getRepository();
      const r = await repo.getAssessmentResult(assessmentId);
      setResult(r);
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  }, [assessmentId]);

  useEffect(() => {
    loadResult();
  }, [loadResult]);

  if (loading) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <ActivityIndicator size="large" color={Colors.primary} />
        <Text style={styles.loadingText}>生成测评报告...</Text>
      </View>
    );
  }

  if (error || !result) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <Ionicons name="alert-circle-outline" size={48} color={Colors.danger} />
        <Text style={styles.errorText}>{error ?? "测评结果不存在"}</Text>
        <Pressable style={styles.retryBtn} onPress={() => loadResult()}>
          <Text style={styles.retryText}>重试</Text>
        </Pressable>
      </View>
    );
  }

  const bandInfo = BAND_DESCRIPTIONS[result.band] ?? BAND_DESCRIPTIONS[0];

  return (
    <View style={[styles.container, { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + Spacing.xl }]}>
      {/* 顶部关闭 */}
      <Pressable style={styles.closeBtn} onPress={() => router.replace("/")} hitSlop={10}>
        <Ionicons name="close" size={20} color={Colors.textTertiary} />
      </Pressable>

      <View style={styles.content}>
        {/* Band 徽章 */}
        <View style={[styles.bandBadge, { backgroundColor: bandInfo.color }]}>
          <Text style={styles.bandLabel}>{bandInfo.label}</Text>
        </View>
        <Text style={styles.bandDesc}>{bandInfo.desc}</Text>

        {/* 词汇量数字 */}
        <View style={styles.vocabCard}>
          <Text style={styles.vocabLabel}>词汇量估计</Text>
          <Text style={styles.vocabNumber}>{result.vocabularyEstimate.toLocaleString()}</Text>
          <Text style={styles.vocabCI}>
            置信区间：{result.ciLower.toLocaleString()} ~ {result.ciUpper.toLocaleString()}
          </Text>
        </View>

        {/* 统计数据 */}
        <View style={styles.statsRow}>
          <View style={styles.statItem}>
            <Text style={styles.statValue}>{result.totalQuestions}</Text>
            <Text style={styles.statLabel}>总题数</Text>
          </View>
          <View style={styles.statDivider} />
          <View style={styles.statItem}>
            <Text style={[styles.statValue, { color: Colors.success }]}>{result.correctCount}</Text>
            <Text style={styles.statLabel}>正确数</Text>
          </View>
          <View style={styles.statDivider} />
          <View style={styles.statItem}>
            <Text style={styles.statValue}>{Math.round(result.accuracy * 100)}%</Text>
            <Text style={styles.statLabel}>正确率</Text>
          </View>
        </View>

        {/* 推荐课程 */}
        <View style={styles.recommendCard}>
          <Ionicons name="school" size={20} color={Colors.primary} />
          <View style={styles.recommendInfo}>
            <Text style={styles.recommendTitle}>推荐课程</Text>
            <Text style={styles.recommendText}>
              根据你的测评结果，推荐学习 {result.recommendedLevel} 课程
            </Text>
          </View>
        </View>

        {/* 说明 */}
        <View style={styles.noteCard}>
          <Text style={styles.noteTitle}>测评说明</Text>
          <Text style={styles.noteText}>
            • Band 等级参考：Band 2 对应中考水平，Band 3 对应高考水平{'\n'}
            • Band 4 对应四级，Band 5 对应六级，Band 6 对应考研/专八{'\n'}
            • 词汇量估计基于 CAT 算法，置信区间表示 95% 置信范围
          </Text>
        </View>
      </View>

      {/* 底部按钮 */}
      <View style={styles.bottomBtns}>
        <Pressable style={styles.primaryBtn} onPress={() => router.replace("/")}>
          <Text style={styles.primaryBtnText}>开始学习</Text>
        </Pressable>
        <Pressable style={styles.secondaryBtn} onPress={() => router.back()}>
          <Text style={styles.secondaryBtnText}>重新测评</Text>
        </Pressable>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: Colors.background,
    paddingHorizontal: Spacing.xl,
  },
  center: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: Colors.background,
    padding: Spacing.xxl,
    gap: Spacing.md,
  },
  closeBtn: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: Colors.surface,
    alignItems: "center",
    justifyContent: "center",
    ...Shadow.soft,
  },
  content: {
    flex: 1,
    alignItems: "center",
    marginTop: Spacing.xl,
  },
  bandBadge: {
    width: 80,
    height: 80,
    borderRadius: 40,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: Spacing.md,
  },
  bandLabel: {
    color: "#FFFFFF",
    fontSize: 20,
    fontWeight: "800",
  },
  bandDesc: {
    ...Typography.body,
    color: Colors.textSecondary,
    marginBottom: Spacing.xl,
  },
  vocabCard: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.xl,
    padding: Spacing.xxl,
    alignItems: "center",
    width: "100%",
    marginBottom: Spacing.lg,
    ...Shadow.card,
  },
  vocabLabel: {
    ...Typography.caption,
    color: Colors.textMuted,
    marginBottom: Spacing.sm,
  },
  vocabNumber: {
    fontSize: 40,
    fontWeight: "800",
    color: Colors.primary,
  },
  vocabCI: {
    ...Typography.label,
    color: Colors.textTertiary,
    marginTop: Spacing.sm,
  },
  statsRow: {
    flexDirection: "row",
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    width: "100%",
    marginBottom: Spacing.lg,
    ...Shadow.soft,
  },
  statItem: { flex: 1, alignItems: "center" },
  statDivider: { width: 1, backgroundColor: Colors.divider },
  statValue: {
    fontSize: 22,
    fontWeight: "700",
    color: Colors.text,
  },
  statLabel: {
    ...Typography.label,
    color: Colors.textMuted,
    marginTop: Spacing.xs,
  },
  recommendCard: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: Colors.primaryBg,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    width: "100%",
    gap: Spacing.md,
    marginBottom: Spacing.lg,
  },
  recommendInfo: { flex: 1 },
  recommendTitle: {
    ...Typography.label,
    color: Colors.primary,
    fontWeight: "700",
  },
  recommendText: {
    ...Typography.caption,
    color: Colors.textSecondary,
    marginTop: Spacing.xs,
  },
  noteCard: {
    backgroundColor: Colors.surfaceAlt,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    width: "100%",
  },
  noteTitle: {
    ...Typography.label,
    fontWeight: "700",
    marginBottom: Spacing.sm,
  },
  noteText: {
    ...Typography.caption,
    color: Colors.textSecondary,
    lineHeight: 20,
  },
  bottomBtns: {
    gap: Spacing.md,
  },
  primaryBtn: {
    backgroundColor: Colors.primary,
    borderRadius: Radius.lg,
    paddingVertical: Spacing.xl,
    alignItems: "center",
    ...Shadow.button,
  },
  primaryBtnText: {
    ...Typography.body,
    color: "#FFFFFF",
    fontWeight: "700",
    fontSize: 18,
  },
  secondaryBtn: {
    borderRadius: Radius.lg,
    paddingVertical: Spacing.lg,
    alignItems: "center",
    borderWidth: 1.5,
    borderColor: Colors.border,
  },
  secondaryBtnText: {
    ...Typography.body,
    color: Colors.textSecondary,
    fontWeight: "600",
  },
  loadingText: { ...Typography.caption, color: Colors.textMuted },
  errorText: { ...Typography.caption, color: Colors.danger, textAlign: "center" },
  retryBtn: {
    backgroundColor: Colors.primary,
    borderRadius: Radius.md,
    paddingHorizontal: Spacing.xxl,
    paddingVertical: Spacing.md,
  },
  retryText: { ...Typography.body, color: "#FFFFFF", fontWeight: "600" },
});
