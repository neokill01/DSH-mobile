// 词汇量测评开始页：介绍 CAT 测评流程，用户点击开始

import { useState } from "react";
import { Pressable, StyleSheet, Text, View } from "react-native";
import { router } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import { getRepository } from "@/lib/repository";

export default function AssessmentStartScreen() {
  const insets = useSafeAreaInsets();
  const [starting, setStarting] = useState(false);

  const startAssessment = async () => {
    setStarting(true);
    try {
      const repo = getRepository();
      const id = await repo.startAssessment();
      router.replace(`/assessment/testing?id=${id}`);
    } catch (e) {
      console.error(e);
    } finally {
      setStarting(false);
    }
  };

  return (
    <View style={[styles.container, { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + Spacing.lg }]}>
      {/* 顶部返回 */}
      <Pressable style={styles.backBtn} onPress={() => router.back()} hitSlop={10}>
        <Ionicons name="arrow-back" size={24} color={Colors.text} />
      </Pressable>

      {/* 图标区域 */}
      <View style={styles.iconArea}>
        <View style={styles.iconCircle}>
          <Ionicons name="school" size={48} color={Colors.primary} />
        </View>
      </View>

      {/* 标题和描述 */}
      <Text style={styles.title}>词汇量测评</Text>
      <Text style={styles.subtitle}>了解你的真实英语词汇水平</Text>

      {/* 测评说明 */}
      <View style={styles.infoCard}>
        <View style={styles.infoItem}>
          <Ionicons name="time-outline" size={20} color={Colors.primary} />
          <View style={styles.infoText}>
            <Text style={styles.infoLabel}>测评时长</Text>
            <Text style={styles.infoValue}>约 5~8 分钟</Text>
          </View>
        </View>
        <View style={styles.divider} />
        <View style={styles.infoItem}>
          <Ionicons name="help-circle-outline" size={20} color={Colors.primary} />
          <View style={styles.infoText}>
            <Text style={styles.infoLabel}>题目数量</Text>
            <Text style={styles.infoValue}>约 15~20 题</Text>
          </View>
        </View>
        <View style={styles.divider} />
        <View style={styles.infoItem}>
          <Ionicons name="git-branch-outline" size={20} color={Colors.primary} />
          <View style={styles.infoText}>
            <Text style={styles.infoLabel}>自适应测试</Text>
            <Text style={styles.infoValue}>根据答题情况动态调整</Text>
          </View>
        </View>
      </View>

      {/* 测评结果说明 */}
      <View style={styles.resultCard}>
        <Text style={styles.resultTitle}>测评后你将获得</Text>
        <View style={styles.resultItem}>
          <Ionicons name="bar-chart" size={16} color={Colors.gold} />
          <Text style={styles.resultText}>词汇量水平 Band 等级（Band 0~6）</Text>
        </View>
        <View style={styles.resultItem}>
          <Ionicons name="analytics" size={16} color={Colors.gold} />
          <Text style={styles.resultText}>词汇量估计值和置信区间</Text>
        </View>
        <View style={styles.resultItem}>
          <Ionicons name="school" size={16} color={Colors.gold} />
          <Text style={styles.resultText}>推荐匹配的课程等级</Text>
        </View>
      </View>

      {/* 开始按钮 */}
      <View style={styles.bottomArea}>
        <Pressable
          style={[styles.startBtn, starting && styles.startBtnDisabled]}
          onPress={startAssessment}
          disabled={starting}
        >
          <Text style={styles.startBtnText}>{starting ? "准备中..." : "开始测评"}</Text>
        </Pressable>
        <Text style={styles.tip}>测评结果将用于为你推荐个性化的学习计划</Text>
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
  backBtn: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: Colors.surface,
    alignItems: "center",
    justifyContent: "center",
    ...Shadow.soft,
  },
  iconArea: {
    alignItems: "center",
    marginTop: Spacing.xxl,
    marginBottom: Spacing.lg,
  },
  iconCircle: {
    width: 100,
    height: 100,
    borderRadius: 50,
    backgroundColor: Colors.primaryBg,
    alignItems: "center",
    justifyContent: "center",
  },
  title: {
    ...Typography.h1,
    textAlign: "center",
  },
  subtitle: {
    ...Typography.caption,
    textAlign: "center",
    marginTop: Spacing.sm,
    marginBottom: Spacing.xxl,
  },
  infoCard: {
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    marginBottom: Spacing.lg,
    ...Shadow.card,
  },
  infoItem: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.md,
    paddingVertical: Spacing.sm,
  },
  infoText: {
    flex: 1,
  },
  infoLabel: {
    ...Typography.label,
    color: Colors.textMuted,
  },
  infoValue: {
    ...Typography.body,
    fontWeight: "600",
  },
  divider: {
    height: 1,
    backgroundColor: Colors.divider,
    marginVertical: Spacing.xs,
  },
  resultCard: {
    backgroundColor: Colors.goldBg,
    borderRadius: Radius.lg,
    padding: Spacing.lg,
    marginBottom: Spacing.xxl,
  },
  resultTitle: {
    ...Typography.h3,
    marginBottom: Spacing.md,
    color: Colors.goldDark,
  },
  resultItem: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
    marginBottom: Spacing.sm,
  },
  resultText: {
    ...Typography.caption,
    color: Colors.textSecondary,
  },
  bottomArea: {
    flex: 1,
    justifyContent: "flex-end",
  },
  startBtn: {
    backgroundColor: Colors.primary,
    borderRadius: Radius.lg,
    paddingVertical: Spacing.xl,
    alignItems: "center",
    ...Shadow.button,
  },
  startBtnDisabled: {
    opacity: 0.6,
  },
  startBtnText: {
    ...Typography.body,
    color: "#FFFFFF",
    fontWeight: "700",
    fontSize: 18,
  },
  tip: {
    ...Typography.caption,
    textAlign: "center",
    marginTop: Spacing.md,
    color: Colors.textMuted,
  },
});
