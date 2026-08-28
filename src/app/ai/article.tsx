// AI 短文页：基于错词生成个性化阅读短文

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
import SectionTitle from "@/components/ui/SectionTitle";
import Card from "@/components/ui/Card";

export default function AiArticleScreen() {
  const insets = useSafeAreaInsets();
  const [wrongWords, setWrongWords] = useState<WrongWord[]>([]);
  const [selectedIds, setSelectedIds] = useState<string[]>([]);
  const [article, setArticle] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [generating, setGenerating] = useState(false);

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

  const toggleWord = (id: string) => {
    setSelectedIds((prev) =>
      prev.includes(id) ? prev.filter((i) => i !== id) : [...prev, id]
    );
  };

  const generateArticle = async () => {
    if (selectedIds.length === 0) return;
    setGenerating(true);
    try {
      const repo = getRepository();
      const a = await repo.generateAiArticle(selectedIds);
      setArticle(a);
    } catch (e) {
      console.error(e);
    } finally {
      setGenerating(false);
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
          <Text style={styles.topTitle}>AI 短文</Text>
          <View style={{ width: 40 }} />
        </View>

        <Text style={styles.desc}>
          选择你的错词，AI 将生成一篇包含这些单词的个性化阅读短文。
        </Text>

        {/* 选择错词 */}
        <SectionTitle icon="language" title="选择单词（至少2个）" />

        <View style={styles.wordGrid}>
          {wrongWords.map((w) => {
            const active = selectedIds.includes(w.id);
            return (
              <Pressable
                key={w.id}
                onPress={() => toggleWord(w.id)}
              >
                {active ? (
                  <View style={[styles.wordChip, { backgroundColor: Colors.primary }]}>
                    <Text style={styles.wordChipTextActive}>
                      {w.word.spelling}
                    </Text>
                  </View>
                ) : (
                  <View style={styles.wordChip}>
                    <Text style={styles.wordChipText}>
                      {w.word.spelling}
                    </Text>
                  </View>
                )}
              </Pressable>
            );
          })}
        </View>

        {/* 生成按钮 */}
        <GradientButton
          onPress={generateArticle}
          disabled={selectedIds.length < 2 || generating}
          loading={generating}
          fullWidth
        >
          {generating ? "生成中..." : "生成 AI 短文"}
        </GradientButton>

        {/* 短文内容 */}
        {article && (
          <Card variant="elevated" style={styles.articleCard}>
            <View style={styles.articleHeader}>
              <Ionicons name="book" size={20} color={Colors.primary} />
              <Text style={styles.articleTitle}>阅读材料</Text>
            </View>
            <Text style={styles.articleContent}>{article}</Text>
          </Card>
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
    borderWidth: 1, borderColor: Colors.border,
  },
  topTitle: { ...Typography.h3 },
  desc: { ...Typography.caption, color: Colors.textSecondary, marginBottom: Spacing.xl },
  wordGrid: { flexDirection: "row", flexWrap: "wrap", gap: Spacing.sm, marginBottom: Spacing.xl },
  wordChip: {
    paddingHorizontal: Spacing.lg, paddingVertical: Spacing.sm,
    borderRadius: Radius.pill, backgroundColor: Colors.surface,
    borderWidth: 1, borderColor: Colors.border,
  },
  wordChipText: { ...Typography.body, fontWeight: "600", color: Colors.text },
  wordChipTextActive: { ...Typography.body, fontWeight: "600", color: Colors.white },
  articleCard: {
    marginTop: Spacing.xl,
  },
  articleHeader: { flexDirection: "row", alignItems: "center", gap: Spacing.sm, marginBottom: Spacing.lg },
  articleTitle: { ...Typography.h3 },
  articleContent: { ...Typography.body, color: Colors.textSecondary, lineHeight: 26 },
});
