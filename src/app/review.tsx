// 复习页：单词卡 + 四档评分，推进 FSRS 排期
// 入口：/review?mode=new（学习新词）| /review?mode=review（到期复习）

import { useCallback, useEffect, useRef, useState } from "react";
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
import { RatingBar } from "@/components/RatingBar";
import { WordCard } from "@/components/WordCard";
import { getRepository } from "@/lib/repository";
import { Colors, Spacing, Radius, Shadow } from "@/constants/theme";
import type { StoredCard, Word } from "@/types/database";

type Mode = "new" | "review";

interface QueueItem {
  word: Word;
  card: StoredCard | null;
}

const PAGE_SIZE = 20;

export default function ReviewScreen() {
  const insets = useSafeAreaInsets();
  const params = useLocalSearchParams<{ mode?: string }>();
  const mode: Mode = params.mode === "new" ? "new" : "review";

  const [queue, setQueue] = useState<QueueItem[] | null>(null);
  const [index, setIndex] = useState(0);
  const [flipped, setFlipped] = useState(false);
  const [busy, setBusy] = useState(false);
  const [done, setDone] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const bookIdRef = useRef("");

  const load = useCallback(async () => {
    const repo = getRepository();
    const book = await repo.getCurrentBook();
    bookIdRef.current = book?.id ?? "";
    if (mode === "new") {
      const words = await repo.getNewWords(PAGE_SIZE);
      setQueue(words.map((w) => ({ word: w, card: null })));
    } else {
      const due = await repo.getDueCards(PAGE_SIZE * 5);
      setQueue(due.map((d) => ({ word: d.word, card: d.card })));
    }
    setIndex(0);
    setFlipped(false);
    setDone(false);
    setError(null);
  }, [mode]);

  useEffect(() => {
    load().catch((e) => setError(String((e as Error)?.message ?? e)));
  }, [load]);

  const rate = async (rating: number) => {
    if (busy || !queue) return;
    const item = queue[index];
    setBusy(true);
    try {
      await getRepository().submitRating({
        word: item.word,
        bookId: bookIdRef.current,
        card: item.card,
        rating,
      });
      if (index + 1 >= queue.length) {
        setDone(true);
      } else {
        setIndex(index + 1);
        setFlipped(false);
      }
    } catch (e) {
      setError(String((e as Error)?.message ?? e));
    } finally {
      setBusy(false);
    }
  };

  const containerStyle = [
    styles.container,
    { paddingTop: insets.top + Spacing.sm, paddingBottom: insets.bottom + Spacing.lg },
  ];

  // 加载中
  if (!queue) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <ActivityIndicator size="large" color={Colors.primary} />
      </View>
    );
  }

  // 出错
  if (error) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <Ionicons name="alert-circle-outline" size={48} color={Colors.danger} />
        <Text style={styles.errorText}>{error}</Text>
        <Pressable style={styles.retryBtn} onPress={() => load().catch((e) => setError(String(e)))}>
          <Text style={styles.retryText}>重试</Text>
        </Pressable>
        <Pressable style={styles.backBtn} onPress={() => router.back()}>
          <Text style={styles.backText}>返回</Text>
        </Pressable>
      </View>
    );
  }

  // 完成
  if (done || queue.length === 0) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <Text style={styles.doneIcon}>🎉</Text>
        <Text style={styles.doneTitle}>{queue.length === 0 ? "暂无任务" : "本组完成！"}</Text>
        <Text style={styles.doneDesc}>
          {mode === "new"
            ? `学习了 ${queue.length} 个新词，已按 FSRS 排好复习计划`
            : `完成 ${queue.length} 个词的复习，遗忘曲线正在优化`}
        </Text>
        <Pressable style={styles.retryBtn} onPress={() => load()}>
          <Text style={styles.retryText}>{queue.length === 0 ? "刷新看看" : "再来一组"}</Text>
        </Pressable>
        <Pressable style={styles.backBtn} onPress={() => router.back()}>
          <Text style={styles.backText}>返回首页</Text>
        </Pressable>
      </View>
    );
  }

  const item = queue[index];

  return (
    <View style={containerStyle}>
      {/* 顶部：进度 */}
      <View style={styles.topBar}>
        <Pressable style={styles.closeBtn} onPress={() => router.back()} hitSlop={10}>
          <Ionicons name="close" size={20} color={Colors.textTertiary} />
        </Pressable>
        <View style={styles.progressInfo}>
          <Text style={styles.progressLabel}>
            {mode === "new" ? "学习新词" : "复习"}
          </Text>
          <Text style={styles.progressCount}>
            {index + 1} / {queue.length}
          </Text>
        </View>
        <View style={{ width: 36 }} />
      </View>
      <View style={styles.progressTrack}>
        <View
          style={[
            styles.progressFill,
            { width: `${((index + (flipped ? 1 : 0)) / queue.length) * 100}%` },
          ]}
        />
      </View>

      {/* 单词卡 */}
      <View style={styles.cardArea}>
        <WordCard word={item.word} flipped={flipped} onFlip={() => setFlipped(!flipped)} />
      </View>

      {/* 评分（翻面后显示） */}
      <View style={styles.ratingArea}>
        {flipped ? (
          <RatingBar onRate={rate} disabled={busy} />
        ) : (
          <View style={styles.flipHintBox}>
            <Ionicons name="hand-left-outline" size={16} color={Colors.textMuted} />
            <Text style={styles.flipHint}>点击卡片翻面查看释义</Text>
          </View>
        )}
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
    gap: 6,
  },

  // Top bar
  topBar: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginBottom: 10,
  },
  closeBtn: {
    width: 36,
    height: 36,
    borderRadius: 18,
    backgroundColor: Colors.surface,
    alignItems: "center",
    justifyContent: "center",
    ...Shadow.soft,
  },
  progressInfo: {
    alignItems: "center",
  },
  progressLabel: {
    fontSize: 13,
    color: Colors.textTertiary,
  },
  progressCount: {
    fontSize: 16,
    color: Colors.text,
    fontWeight: "700",
  },

  // Progress
  progressTrack: {
    height: 6,
    borderRadius: 3,
    backgroundColor: Colors.divider,
    overflow: "hidden",
    marginBottom: 20,
  },
  progressFill: {
    height: "100%",
    borderRadius: 3,
    backgroundColor: Colors.primary,
  },

  cardArea: {
    flex: 1,
    justifyContent: "center",
  },
  ratingArea: {
    paddingBottom: Spacing.md,
    alignItems: "center",
  },
  flipHintBox: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
    backgroundColor: Colors.surface,
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: Radius.pill,
    ...Shadow.soft,
  },
  flipHint: {
    fontSize: 13,
    color: Colors.textMuted,
  },

  // Done / Error
  doneIcon: { fontSize: 56, marginBottom: 8 },
  doneTitle: { fontSize: 24, fontWeight: "800", color: Colors.text },
  doneDesc: {
    fontSize: 14,
    color: Colors.textTertiary,
    textAlign: "center",
    marginTop: 8,
    marginBottom: 24,
    lineHeight: 22,
  },
  errorText: {
    fontSize: 14,
    color: Colors.danger,
    textAlign: "center",
    marginTop: 12,
    marginBottom: 16,
  },
  retryBtn: {
    backgroundColor: Colors.primary,
    borderRadius: Radius.md,
    paddingHorizontal: 32,
    paddingVertical: 13,
    ...Shadow.card,
  },
  retryText: { color: "#FFFFFF", fontSize: 15, fontWeight: "600" },
  backBtn: { marginTop: 12, padding: 8 },
  backText: { color: Colors.textTertiary, fontSize: 14 },
});
