// 学习报告导出页：生成并导出学习报告 PDF

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
import { Colors, Typography, Spacing, Radius } from "@/constants/theme";
import GradientButton from "@/components/ui/GradientButton";
import SectionTitle from "@/components/ui/SectionTitle";
import Card from "@/components/ui/Card";
import { getRepository } from "@/lib/repository";
import type { LearningReport } from "@/types/database";

export default function ExportScreen() {
  const insets = useSafeAreaInsets();
  const [report, setReport] = useState<LearningReport | null>(null);
  const [loading, setLoading] = useState(true);
  const [generating, setGenerating] = useState(false);
  const [exported, setExported] = useState(false);

  const loadReport = useCallback(async () => {
    try {
      const repo = getRepository();
      const r = await repo.generateLearningReport();
      setReport(r);
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    loadReport();
  }, [loadReport]);

  const exportPdf = async () => {
    setGenerating(true);
    // 演示模式：模拟导出
    await new Promise((resolve) => setTimeout(resolve, 1500));
    setExported(true);
    setGenerating(false);
  };

  if (loading || !report) {
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
          <Text style={styles.topTitle}>学习报告</Text>
          <View style={{ width: 40 }} />
        </View>

        {/* 报告预览卡片 */}
        <Card variant="elevated" style={styles.previewCard}>
          <SectionTitle icon="document-text" title="学习报告" />
          <Text style={styles.previewDate}>
            生成时间: {new Date(report.generatedAt).toLocaleDateString("zh-CN")}
          </Text>

          {/* 概览数据 */}
          <View style={styles.statsGrid}>
            <View style={[styles.statBox, { backgroundColor: Colors.primary }]}>
              <Text style={styles.statValue}>{report.overview.totalLearned}</Text>
              <Text style={styles.statLabel}>总学词数</Text>
            </View>
            <View style={[styles.statBox, { backgroundColor: Colors.success }]}>
              <Text style={[styles.statValue, { color: Colors.white }]}>{report.overview.mastered}</Text>
              <Text style={[styles.statLabel, { color: Colors.white }]}>已掌握</Text>
            </View>
            <View style={[styles.statBox, { backgroundColor: Colors.primary }]}>
              <Text style={[styles.statValue, { color: Colors.white }]}>{report.vocabularyEstimate.toLocaleString()}</Text>
              <Text style={[styles.statLabel, { color: Colors.white }]}>词汇量</Text>
            </View>
            <View style={[styles.statBox, { backgroundColor: Colors.purple }]}>
              <Text style={[styles.statValue, { color: Colors.white }]}>{report.overview.learningDays}</Text>
              <Text style={[styles.statLabel, { color: Colors.white }]}>学习天数</Text>
            </View>
          </View>

          {/* 弱项词汇 */}
          {report.weakWords.length > 0 && (
            <View style={styles.weakSection}>
              <Text style={styles.sectionTitle}>弱项词汇</Text>
              <View style={styles.weakList}>
                {report.weakWords.slice(0, 5).map((w, i) => (
                  <View key={i} style={styles.weakItem}>
                    <Text style={styles.weakWord}>{w.word}</Text>
                    <Text style={styles.weakCount}>错 {w.wrongCount} 次</Text>
                  </View>
                ))}
              </View>
            </View>
          )}

          {/* 学习建议 */}
          <View style={styles.suggestionsSection}>
            <Text style={styles.sectionTitle}>学习建议</Text>
            {report.suggestions.map((s, i) => (
              <View key={i} style={styles.suggestionItem}>
                <Ionicons name="bulb" size={14} color={Colors.gold} />
                <Text style={styles.suggestionText}>{s}</Text>
              </View>
            ))}
          </View>
        </Card>

        {/* 导出按钮 */}
        {exported ? (
          <View style={styles.successBox}>
            <Ionicons name="checkmark-circle" size={24} color={Colors.success} />
            <Text style={styles.successText}>报告已生成！</Text>
          </View>
        ) : (
          <GradientButton
            onPress={exportPdf}
            loading={generating}
            disabled={generating}
            size="lg"
          >
            {generating ? "生成中..." : "导出 PDF 报告"}
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
    alignItems: "center", justifyContent: "center",
    shadowColor: Colors.primary,
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.03,
    shadowRadius: 8,
    elevation: 1,
    borderWidth: 1, borderColor: Colors.border,
  },
  topTitle: { ...Typography.h3 },
  previewCard: {
    marginBottom: Spacing.xl,
  },
  previewDate: { ...Typography.caption, color: Colors.textMuted, marginBottom: Spacing.xl },
  statsGrid: {
    flexDirection: "row", flexWrap: "wrap", gap: Spacing.md, marginBottom: Spacing.xl,
  },
  statBox: {
    width: "47%", borderRadius: Radius.md,
    padding: Spacing.lg, alignItems: "center",
    borderWidth: 1, borderColor: Colors.border,
  },
  statValue: { fontSize: 22, fontWeight: "700", color: Colors.white },
  statLabel: { ...Typography.label, color: Colors.white, marginTop: Spacing.xs },
  sectionTitle: { ...Typography.h3, marginBottom: Spacing.md },
  weakSection: { marginBottom: Spacing.xl },
  weakList: { gap: Spacing.sm },
  weakItem: {
    flexDirection: "row", justifyContent: "space-between", paddingVertical: Spacing.sm,
    borderBottomWidth: 1, borderBottomColor: Colors.divider,
  },
  weakWord: { ...Typography.body, fontWeight: "600" },
  weakCount: { ...Typography.caption, color: Colors.danger },
  suggestionsSection: { marginBottom: Spacing.md },
  suggestionItem: { flexDirection: "row", alignItems: "center", gap: Spacing.sm, marginBottom: Spacing.sm },
  suggestionText: { flex: 1, ...Typography.caption, color: Colors.textSecondary },
  successBox: {
    flexDirection: "row", alignItems: "center", justifyContent: "center",
    backgroundColor: Colors.successBg, borderRadius: Radius.lg, padding: Spacing.xl,
    gap: Spacing.sm,
    borderWidth: 1, borderColor: Colors.success,
  },
  successText: { ...Typography.body, color: Colors.success, fontWeight: "600" },
});
