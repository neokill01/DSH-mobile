// 测评答题页：CAT 自适应测试界面

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
import type { AssessmentQuestion } from "@/types/database";

export default function AssessmentTestingScreen() {
  const insets = useSafeAreaInsets();
  const params = useLocalSearchParams<{ id?: string }>();
  const assessmentId = params.id ?? "";

  const [question, setQuestion] = useState<AssessmentQuestion | null>(null);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [totalQuestions, setTotalQuestions] = useState(15);
  const [selectedOption, setSelectedOption] = useState<number | null>(null);
  const [feedback, setFeedback] = useState<{ correct: boolean; isComplete: boolean } | null>(null);
  const [loading, setLoading] = useState(true);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const loadQuestion = useCallback(async () => {
    try {
      const repo = getRepository();
      const q = await repo.getAssessmentQuestion(assessmentId);
      if (q) {
        setQuestion(q);
        setCurrentIndex((prev) => prev + 1);
        setSelectedOption(null);
        setFeedback(null);
      }
    } catch (e) {
      setError(String(e));
    } finally {
      setLoading(false);
    }
  }, [assessmentId]);

  useEffect(() => {
    loadQuestion();
  }, [loadQuestion]);

  const submitAnswer = async (selectedIndex: number) => {
    if (busy || !question || feedback) return;
    setBusy(true);
    setSelectedOption(selectedIndex);

    try {
      const repo = getRepository();
      const result = await repo.submitAssessmentAnswer(assessmentId, question.id, selectedIndex);
      setFeedback(result);

      // 短暂延迟后进入下一题或结果页
      setTimeout(() => {
        if (result.isComplete) {
          router.replace(`/assessment/result?id=${assessmentId}`);
        } else {
          loadQuestion();
        }
      }, 1200);
    } catch (e) {
      setError(String(e));
    } finally {
      setBusy(false);
    }
  };

  if (loading || !question) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <ActivityIndicator size="large" color={Colors.primary} />
        <Text style={styles.loadingText}>加载题目中...</Text>
      </View>
    );
  }

  if (error) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <Ionicons name="alert-circle-outline" size={48} color={Colors.danger} />
        <Text style={styles.errorText}>{error}</Text>
        <Pressable style={styles.retryBtn} onPress={() => loadQuestion()}>
          <Text style={styles.retryText}>重试</Text>
        </Pressable>
      </View>
    );
  }

  return (
    <View style={[styles.container, { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + Spacing.lg }]}>
      {/* 顶部：关闭 + 进度 */}
      <View style={styles.topBar}>
        <Pressable style={styles.closeBtn} onPress={() => router.back()} hitSlop={10}>
          <Ionicons name="close" size={20} color={Colors.textTertiary} />
        </Pressable>
        <View style={styles.progressInfo}>
          <Text style={styles.progressLabel}>测评进度</Text>
          <Text style={styles.progressCount}>{currentIndex} / {totalQuestions}</Text>
        </View>
        <View style={{ width: 36 }} />
      </View>

      {/* 进度条 */}
      <View style={styles.progressTrack}>
        <View style={[styles.progressFill, { width: `${(currentIndex / totalQuestions) * 100}%` }]} />
      </View>

      {/* 题目类型标签 */}
      <View style={styles.typeTag}>
        <Ionicons
          name={question.type === "real_word" ? "language" : "help-circle"}
          size={14}
          color={Colors.primary}
        />
        <Text style={styles.typeTagText}>
          {question.type === "real_word" ? "真实词汇" : "词汇辨析"}
        </Text>
      </View>

      {/* 题目单词 */}
      <View style={styles.questionCard}>
        <Text style={styles.questionPrompt}>请选择以下单词的中文释义：</Text>
        <Text style={styles.questionWord}>{question.word}</Text>
      </View>

      {/* 选项 */}
      <View style={styles.optionsArea}>
        {question.options.map((option, index) => {
          const isSelected = selectedOption === index;
          const isCorrect = question.correctIndex === index;
          let optionStyle: any = styles.optionBtn;
          let textStyle: any = styles.optionText;

          if (feedback) {
            if (isCorrect) {
              optionStyle = [styles.optionBtn, styles.optionCorrect];
              textStyle = [styles.optionText, styles.optionTextCorrect];
            } else if (isSelected && !isCorrect) {
              optionStyle = [styles.optionBtn, styles.optionWrong];
              textStyle = [styles.optionText, styles.optionTextWrong];
            }
          } else if (isSelected) {
            optionStyle = [styles.optionBtn, styles.optionSelected];
            textStyle = [styles.optionText, styles.optionTextSelected];
          }

          return (
            <Pressable
              key={index}
              style={optionStyle}
              onPress={() => submitAnswer(index)}
              disabled={busy || !!feedback}
            >
              <View style={styles.optionIndex}>
                <Text style={styles.optionIndexText}>{String.fromCharCode(65 + index)}</Text>
              </View>
              <Text style={textStyle}>{option}</Text>
              {feedback && isCorrect && <Ionicons name="checkmark-circle" size={20} color={Colors.success} />}
              {feedback && isSelected && !isCorrect && <Ionicons name="close-circle" size={20} color={Colors.danger} />}
            </Pressable>
          );
        })}
      </View>

      {/* 反馈提示 */}
      {feedback && (
        <View style={[styles.feedbackBox, feedback.correct ? styles.feedbackCorrect : styles.feedbackWrong]}>
          <Ionicons
            name={feedback.correct ? "checkmark-circle" : "alert-circle"}
            size={20}
            color={feedback.correct ? Colors.success : Colors.danger}
          />
          <Text style={[styles.feedbackText, { color: feedback.correct ? Colors.success : Colors.danger }]}>
            {feedback.correct ? "回答正确！" : "回答错误"}
          </Text>
        </View>
      )}
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
  loadingText: {
    ...Typography.caption,
    color: Colors.textMuted,
  },
  topBar: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginBottom: Spacing.md,
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
  progressInfo: { alignItems: "center" },
  progressLabel: { ...Typography.caption, fontSize: 12 },
  progressCount: { ...Typography.body, fontWeight: "700" },
  progressTrack: {
    height: 6,
    borderRadius: Radius.pill,
    backgroundColor: Colors.divider,
    overflow: "hidden",
    marginBottom: Spacing.xl,
  },
  progressFill: {
    height: "100%",
    borderRadius: Radius.pill,
    backgroundColor: Colors.primary,
  },
  typeTag: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.xs,
    alignSelf: "flex-start",
    backgroundColor: Colors.primaryBg,
    paddingHorizontal: Spacing.md,
    paddingVertical: Spacing.xs,
    borderRadius: Radius.pill,
    marginBottom: Spacing.lg,
  },
  typeTagText: {
    ...Typography.label,
    color: Colors.primary,
  },
  questionCard: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.xl,
    padding: Spacing.xxl,
    alignItems: "center",
    marginBottom: Spacing.xl,
    ...Shadow.card,
  },
  questionPrompt: {
    ...Typography.caption,
    color: Colors.textMuted,
    marginBottom: Spacing.md,
  },
  questionWord: {
    fontSize: 36,
    fontWeight: "800",
    color: Colors.text,
    letterSpacing: -0.5,
  },
  optionsArea: {
    gap: Spacing.md,
    flex: 1,
  },
  optionBtn: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    borderWidth: 2,
    borderColor: Colors.border,
    gap: Spacing.md,
  },
  optionSelected: {
    borderColor: Colors.primary,
    backgroundColor: Colors.primaryBg,
  },
  optionCorrect: {
    borderColor: Colors.success,
    backgroundColor: Colors.successBg,
  },
  optionWrong: {
    borderColor: Colors.danger,
    backgroundColor: Colors.dangerBg,
  },
  optionIndex: {
    width: 32,
    height: 32,
    borderRadius: 16,
    backgroundColor: Colors.divider,
    alignItems: "center",
    justifyContent: "center",
  },
  optionIndexText: {
    ...Typography.label,
    fontWeight: "700",
    color: Colors.textSecondary,
  },
  optionText: {
    flex: 1,
    ...Typography.body,
  },
  optionTextSelected: { color: Colors.primary, fontWeight: "600" },
  optionTextCorrect: { color: Colors.success, fontWeight: "600" },
  optionTextWrong: { color: Colors.danger, fontWeight: "600" },
  feedbackBox: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: Spacing.sm,
    padding: Spacing.lg,
    borderRadius: Radius.lg,
    marginTop: Spacing.lg,
  },
  feedbackCorrect: { backgroundColor: Colors.successBg },
  feedbackWrong: { backgroundColor: Colors.dangerBg },
  feedbackText: {
    ...Typography.body,
    fontWeight: "600",
  },
  errorText: {
    ...Typography.caption,
    color: Colors.danger,
    textAlign: "center",
  },
  retryBtn: {
    backgroundColor: Colors.primary,
    borderRadius: Radius.md,
    paddingHorizontal: Spacing.xxl,
    paddingVertical: Spacing.md,
  },
  retryText: { ...Typography.body, color: "#FFFFFF", fontWeight: "600" },
});
