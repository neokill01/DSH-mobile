// AI 错词解析页：显示错词的AI智能解析

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

export default function AiAnalysisScreen() {
  const insets = useSafeAreaInsets();
  const [wrongWords, setWrongWords] = useState<WrongWord[]>([]);
  const [selectedWord, setSelectedWord] = useState<WrongWord | null>(null);
  const [analysis, setAnalysis] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [analyzing, setAnalyzing] = useState(false);

  const loadWrongWords = useCallback(async () => {
    try {
      const repo = getRepository();
      const words = await repo.getWrongWords();
      setWrongWords(words.filter((w) => w.status !== "mastered"));
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    loadWrongWords();
  }, [loadWrongWords]);

  const selectWord = async (wrongWord: WrongWord) => {
    setSelectedWord(wrongWord);
    setAnalysis(null);
    setAnalyzing(true);
    try {
      const repo = getRepository();
      const a = await repo.getAiAnalysis(wrongWord.id);
      setAnalysis(a);
    } catch (e) {
      console.error(e);
    } finally {
      setAnalyzing(false);
    }
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
          <Text style={styles.topTitle}>AI 解析</Text>
          <View style={{ width: 40 }} />
        </View>

        {/* 选择错词 */}
        <Text style={styles.sectionTitle}>选择要解析的错词</Text>
        <ScrollView horizontal showsHorizontalScrollIndicator={false} style={styles.wordSelector}>
          {wrongWords.map((w) => (
            <Pressable
              key={w.id}
              style={[styles.wordChip, selectedWord?.id === w.id && styles.wordChipActive]}
              onPress={() => selectWord(w)}
            >
              <Text style={[styles.wordChipText, selectedWord?.id === w.id && styles.wordChipTextActive]}>
                {w.word.spelling}
              </Text>
            </Pressable>
          ))}
        </ScrollView>

        {/* 解析内容 */}
        {selectedWord && (
          <View style={styles.analysisCard}>
            {analyzing ? (
              <View style={styles.analyzingBox}>
                <ActivityIndicator size="large" color={Colors.primary} />
                <Text style={styles.analyzingText}>AI 正在分析中...</Text>
              </View>
            ) : analysis ? (
              <View style={styles.analysisContent}>
                <View style={styles.analysisHeader}>
                  <Ionicons name="sparkles" size={20} color={Colors.primary} />
                  <Text style={styles.analysisTitle}>{selectedWord.word.spelling} 解析</Text>
                </View>
                <Text style={styles.analysisText}>{analysis}</Text>
              </View>
            ) : (
              <View style={styles.emptyAnalysis}>
                <Ionicons name="bulb-outline" size={32} color={Colors.textMuted} />
                <Text style={styles.emptyText}>点击上方单词获取 AI 解析</Text>
              </View>
            )}
          </View>
        )}

        {/* AI 短文入口 */}
        <Pressable style={styles.articleCard} onPress={() => router.push("/ai/article")}>
          <Ionicons name="book" size={20} color={Colors.primary} />
          <View style={styles.articleInfo}>
            <Text style={styles.articleTitle}>AI 语境短文</Text>
            <Text style={styles.articleDesc}>基于你的错词生成个性化阅读材料</Text>
          </View>
          <Ionicons name="chevron-forward" size={20} color={Colors.textMuted} />
        </Pressable>
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
  sectionTitle: { ...Typography.h3, marginBottom: Spacing.md },
  wordSelector: { marginBottom: Spacing.xl },
  wordChip: {
    paddingHorizontal: Spacing.lg, paddingVertical: Spacing.sm,
    borderRadius: Radius.pill, backgroundColor: Colors.surface,
    marginRight: Spacing.sm, borderWidth: 1.5, borderColor: Colors.border,
  },
  wordChipActive: { backgroundColor: Colors.primary, borderColor: Colors.primary },
  wordChipText: { ...Typography.body, fontWeight: "600", color: Colors.text },
  wordChipTextActive: { color: "#FFFFFF" },
  analysisCard: {
    backgroundColor: Colors.surface, borderRadius: Radius.xl, padding: Spacing.xl,
    minHeight: 200, marginBottom: Spacing.xl, ...Shadow.card,
  },
  analyzingBox: { alignItems: "center", justifyContent: "center", paddingVertical: Spacing.xxl },
  analyzingText: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.md },
  analysisHeader: { flexDirection: "row", alignItems: "center", gap: Spacing.sm, marginBottom: Spacing.lg },
  analysisTitle: { ...Typography.h3 },
  analysisContent: { 
    width: "100%",
  },
  analysisText: {
    ...Typography.body, color: Colors.textSecondary, lineHeight: 24,
  },
  emptyAnalysis: { alignItems: "center", justifyContent: "center", paddingVertical: Spacing.xxl },
  emptyText: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.sm },
  articleCard: {
    flexDirection: "row", alignItems: "center", backgroundColor: Colors.goldBg,
    borderRadius: Radius.lg, padding: Spacing.lg, gap: Spacing.md,
  },
  articleInfo: { flex: 1 },
  articleTitle: { ...Typography.body, fontWeight: "600", color: Colors.goldDark },
  articleDesc: { ...Typography.caption, color: Colors.textSecondary, marginTop: Spacing.xs },
});
