// 体验课主页：3天体验流程、每日进度、开始学习

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
import GradientButton from "@/components/ui/GradientButton";
import SectionTitle from "@/components/ui/SectionTitle";
import Card from "@/components/ui/Card";
import { getRepository } from "@/lib/repository";
import type { ExperienceCourse as CourseType } from "@/types/database";

export default function ExperienceCourseScreen() {
  const insets = useSafeAreaInsets();
  const [course, setCourse] = useState<CourseType | null>(null);
  const [loading, setLoading] = useState(true);

  const loadCourse = useCallback(async () => {
    try {
      const repo = getRepository();
      let c = await repo.getExperienceCourse();
      if (!c || c.status === "expired") {
        c = await repo.startExperienceCourse();
      }
      setCourse(c);
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    loadCourse();
  }, [loadCourse]);

  const startDayLearning = (day: number) => {
    router.push(`/review?mode=new&experienceDay=${day}`);
  };

  if (loading || !course) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <ActivityIndicator size="large" color={Colors.primary} />
      </View>
    );
  }

  const completedDays = course.dailyProgress.filter((p) => p.completed).length;
  const totalProgress = (completedDays / course.totalDays) * 100;

  return (
    <View style={[styles.container, { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + Spacing.lg }]}>
      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={styles.content}
      >
        {/* 顶部返回 + 标题 */}
        <View style={styles.topRow}>
          <Pressable style={styles.backBtn} onPress={() => router.back()} hitSlop={10}>
            <Ionicons name="arrow-back" size={24} color={Colors.text} />
          </Pressable>
          <Text style={styles.topTitle}>体验课</Text>
          <View style={{ width: 40 }} />
        </View>

        {/* 课程卡片 */}
        <View style={[styles.courseCard, { backgroundColor: Colors.primary }]}>
          <View style={styles.courseIconWrap}>
            <Ionicons name="rocket" size={32} color="#FFFFFF" />
          </View>
          <Text style={styles.courseTitle}>{course.title}</Text>
          <Text style={styles.courseDesc}>{course.description}</Text>

          {/* 进度条 */}
          <View style={styles.progressTrack}>
            <View style={[styles.progressFill, { width: `${totalProgress}%` }]} />
          </View>
          <Text style={styles.progressText}>
            已完成 {completedDays}/{course.totalDays} 天
          </Text>
        </View>

        {/* 每日任务 */}
        <SectionTitle icon="calendar" title="每日学习任务" />
        {course.dailyProgress.map((day) => (
          <Card key={day.day} style={styles.dayCard}>
            <View style={styles.dayHeader}>
              {day.completed ? (
                <View style={[styles.dayBadge, { backgroundColor: Colors.success }]}>
                  <Ionicons name="checkmark" size={16} color="#FFFFFF" />
                </View>
              ) : (
                <View style={styles.dayBadge}>
                  <Text style={styles.dayBadgeText}>D{day.day}</Text>
                </View>
              )}
              <View style={styles.dayInfo}>
                <Text style={styles.dayTitle}>第 {day.day} 天</Text>
                <Text style={styles.dayDesc}>
                  {day.completed
                    ? `已完成 · ${day.wordsTotal} 词`
                    : `${day.wordsTotal} 个新词 + 复习`
                  }
                </Text>
              </View>
              {!day.completed && day.day <= course.currentDay && (
                <GradientButton
                  size="sm"
                  fullWidth={false}
                  onPress={() => startDayLearning(day.day)}
                  style={styles.startDayBtn}
                >
                  开始
                </GradientButton>
              )}
              {day.completed && (
                <Ionicons name="checkmark-circle" size={24} color={Colors.success} />
              )}
            </View>
          </Card>
        ))}

        {/* 提示信息 */}
        <Card variant="outlined" style={styles.tipCard}>
          <Ionicons name="information-circle" size={20} color={Colors.primary} />
          <Text style={styles.tipText}>
            体验课免费 3 天，包含约 100 个核心词汇。完成体验课后可解锁正式课程的完整内容。
          </Text>
        </Card>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: Colors.background,
  },
  center: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: Colors.background,
  },
  content: {
    paddingHorizontal: Spacing.xl,
  },
  topRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: Spacing.xl,
  },
  backBtn: {
    width: 44,
    height: 44,
    borderRadius: 22,
    backgroundColor: Colors.surface,
    alignItems: "center",
    justifyContent: "center",
    ...Shadow.soft,
    borderWidth: 1,
    borderColor: Colors.border,
  },
  topTitle: {
    ...Typography.h3,
  },
  courseCard: {
    borderRadius: Radius.xl,
    padding: Spacing.xxl,
    alignItems: "center",
    marginBottom: Spacing.xl,
    ...Shadow.lifted,
    borderWidth: 1,
    borderColor: Colors.primary,
  },
  courseIconWrap: {
    width: 64,
    height: 64,
    borderRadius: 32,
    backgroundColor: "rgba(255,255,255,0.2)",
    alignItems: "center",
    justifyContent: "center",
    marginBottom: Spacing.md,
  },
  courseTitle: {
    ...Typography.h2,
    color: Colors.white,
    marginBottom: Spacing.sm,
  },
  courseDesc: {
    ...Typography.caption,
    color: "rgba(255,255,255,0.8)",
    textAlign: "center",
    marginBottom: Spacing.xl,
  },
  progressTrack: {
    height: 8,
    borderRadius: Radius.pill,
    backgroundColor: "rgba(255,255,255,0.3)",
    width: "100%",
    overflow: "hidden",
    marginBottom: Spacing.sm,
  },
  progressFill: {
    height: "100%",
    borderRadius: Radius.pill,
    backgroundColor: "#FFFFFF",
  },
  progressText: {
    ...Typography.label,
    color: "rgba(255,255,255,0.9)",
  },
  dayCard: {
    marginBottom: Spacing.md,
    borderWidth: 1,
    borderColor: Colors.border,
  },
  dayHeader: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.md,
  },
  dayBadge: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: Colors.primaryBg,
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 1,
    borderColor: Colors.border,
  },
  dayBadgeText: {
    ...Typography.label,
    fontWeight: "700",
    color: Colors.primary,
  },
  dayInfo: { flex: 1 },
  dayTitle: {
    ...Typography.body,
    fontWeight: "600",
  },
  dayDesc: {
    ...Typography.caption,
    color: Colors.textMuted,
    marginTop: Spacing.xs,
  },
  startDayBtn: {
    borderWidth: 1,
    borderColor: Colors.primary,
  },
  tipCard: {
    flexDirection: "row",
    backgroundColor: Colors.primaryBg,
    gap: Spacing.md,
    marginTop: Spacing.md,
    borderWidth: 1,
    borderColor: Colors.primary,
  },
  tipText: {
    flex: 1,
    ...Typography.caption,
    color: Colors.textSecondary,
    lineHeight: 20,
  },
});
