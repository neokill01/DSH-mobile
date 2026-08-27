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
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
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
        <View style={styles.previewCard}>
          <View style={styles.previewHeader}>
            <Ionicons name="document-text" size={24} color={Colors.primary} />
            <Text style={styles.previewTitle}>学习报告</Text>
          </View>
          <Text style={styles.previewDate}>
            生成时间: {new Date(report.generatedAt).toLocaleDateString("zh-CN")}
          </Text>

          {/* 概览数据 */}
          <View style={styles.statsGrid}>
            <View style={styles.statBox}>
              <Text style={styles.statValue}>{report.overview.totalLearned}</Text>
              <Text style={styles.statLabel}>总学词数</Text>
            </View>
            <View style={styles.statBox}>
              <Text style={[styles.statValue, { color: Colors.success }]}>{report.overview.mastered}</Text>
              <Text style={styles.statLabel}>已掌握</Text>
            </View>
            <View style={styles.statBox}>
              <Text style={[styles.statValue, { color: Colors.primary }]}>{report.vocabularyEstimate.toLocaleString()}</Text>
              <Text style={styles.statLabel}>词汇量</Text>
            </View>
            <View style={styles.statBox}>
              <Text style={styles.statValue}>{report.overview.learningDays}</Text>
              <Text style={styles.statLabel}>学习天数</Text>
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
        </View>

        {/* 导出按钮 */}
        {exported ? (
          <View style={styles.successBox}>
            <Ionicons name="checkmark-circle" size={24} color={Colors.success} />
            <Text style={styles.successText}>报告已生成！</Text>
          </View>
        ) : (
          <Pressable
            style={[styles.exportBtn, generating && styles.exportBtnDisabled]}
            onPress={exportPdf}
            disabled={generating}
          >
            <Ionicons name="download" size={20} color="#FFFFFF" />
            <Text style={styles.exportBtnText}>
              {generating ? "生成中..." : "导出 PDF 报告"}
            </Text>
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
  previewCard: {
    backgroundColor: Colors.surface, borderRadius: Radius.xl, padding: Spacing.xl,
    marginBottom: Spacing.xl, ...Shadow.card,
  },
  previewHeader: { flexDirection: "row", alignItems: "center", gap: Spacing.sm, marginBottom: Spacing.sm },
  previewTitle: { ...Typography.h2 },
  previewDate: { ...Typography.caption, color: Colors.textMuted, marginBottom: Spacing.xl },
  statsGrid: {
    flexDirection: "row", flexWrap: "wrap", gap: Spacing.md, marginBottom: Spacing.xl,
  },
  statBox: {
    width: "47%", backgroundColor: Colors.background, borderRadius: Radius.md,
    padding: Spacing.lg, alignItems: "center",
  },
  statValue: { fontSize: 22, fontWeight: "700", color: Colors.text },
  statLabel: { ...Typography.label, color: Colors.textMuted, marginTop: Spacing.xs },
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
  exportBtn: {
    flexDirection: "row", alignItems: "center", justifyContent: "center",
    backgroundColor: Colors.primary, borderRadius: Radius.lg, paddingVertical: Spacing.xl,
    gap: Spacing.sm, ...Shadow.button,
  },
  exportBtnDisabled: { opacity: 0.5 },
  exportBtnText: { ...Typography.body, color: "#FFFFFF", fontWeight: "700" },
  successBox: {
    flexDirection: "row", alignItems: "center", justifyContent: "center",
    backgroundColor: Colors.successBg, borderRadius: Radius.lg, padding: Spacing.xl,
    gap: Spacing.sm,
  },
  successText: { ...Typography.body, color: Colors.success, fontWeight: "600" },
});
