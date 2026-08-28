// 课程等级页：显示课程下的所有等级和进度

import { useCallback, useEffect, useState } from "react";
import {
  ActivityIndicator,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { router, useLocalSearchParams } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import { getRepository } from "@/lib/repository";
import type { Course, CourseLevel as LevelType } from "@/types/database";
import SectionTitle from "@/components/ui/SectionTitle";
import Card from "@/components/ui/Card";

export default function CourseLevelScreen() {
  const insets = useSafeAreaInsets();
  const params = useLocalSearchParams<{ courseId?: string }>();
  const courseId = params.courseId ?? "";

  const [course, setCourse] = useState<Course | null>(null);
  const [levels, setLevels] = useState<LevelType[]>([]);
  const [loading, setLoading] = useState(true);

  const loadData = useCallback(async () => {
    try {
      const repo = getRepository();
      const courses = await repo.getCourses();
      const c = courses.find((co) => co.id === courseId);
      setCourse(c ?? null);
      if (courseId) {
        const l = await repo.getCourseLevels(courseId);
        setLevels(l);
      }
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  }, [courseId]);

  useEffect(() => {
    loadData();
  }, [loadData]);

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
          <Text style={styles.topTitle}>{course?.title ?? "课程"}</Text>
          <View style={{ width: 40 }} />
        </View>

        {/* 课程描述 */}
        <Text style={styles.courseDesc}>{course?.description}</Text>

        {/* 等级列表 */}
        <SectionTitle icon="school" title="学习等级" />
        {levels.map((level, index) => {
          const isActive = level.status === "active";
          const isLocked = level.status === "locked";
          const isCompleted = level.status === "completed";

          return (
            <Pressable
              key={level.id}
              style={[
                styles.levelCardWrapper,
                isActive && styles.levelCardWrapperActive,
                isLocked && styles.levelCardWrapperLocked,
              ]}
              onPress={() => !isLocked && router.push(`/course/unit?levelId=${level.id}`)}
              disabled={isLocked}
            >
              <Card
                padding={Spacing.lg}
                style={
                  isActive
                    ? { borderWidth: 1, borderColor: Colors.primary }
                    : isLocked
                      ? { opacity: 0.6 }
                      : undefined
                }
              >
                <View style={styles.levelRow}>
                  {isActive ? (
                    <View style={[styles.levelNumber, { backgroundColor: Colors.primary, borderWidth: 1, borderColor: Colors.primary }]}>
                      <Text style={styles.levelNumberTextActive}>
                        {level.levelNumber}
                      </Text>
                    </View>
                  ) : (
                    <View style={styles.levelNumber}>
                      <Text style={styles.levelNumberText}>
                        {level.levelNumber}
                      </Text>
                    </View>
                  )}
                  <View style={styles.levelInfo}>
                    <Text style={styles.levelTitle}>{level.title}</Text>
                    <Text style={styles.levelDesc}>{level.description}</Text>
                    <Text style={styles.levelMeta}>
                      {level.unitCount} 单元 · {level.wordCount} 词
                    </Text>
                  </View>
                  <View style={styles.levelStatus}>
                    {isLocked && <Ionicons name="lock-closed" size={20} color={Colors.textMuted} />}
                    {isActive && <Ionicons name="play-circle" size={24} color={Colors.primary} />}
                    {isCompleted && <Ionicons name="checkmark-circle" size={24} color={Colors.success} />}
                  </View>
                </View>
              </Card>
            </Pressable>
          );
        })}
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
  courseDesc: { ...Typography.caption, color: Colors.textSecondary, marginBottom: Spacing.xl },
  levelCardWrapper: {
    marginBottom: Spacing.md,
  },
  levelCardWrapperActive: {},
  levelCardWrapperLocked: {},
  levelRow: { flexDirection: "row", alignItems: "center", gap: Spacing.md },
  levelNumber: {
    width: 44, height: 44, borderRadius: 22, backgroundColor: Colors.divider,
    alignItems: "center", justifyContent: "center",
    borderWidth: 1, borderColor: Colors.border,
  },
  levelNumberText: { ...Typography.body, fontWeight: "700", color: Colors.textMuted },
  levelNumberTextActive: { ...Typography.body, fontWeight: "700", color: "#FFFFFF" },
  levelInfo: { flex: 1 },
  levelTitle: { ...Typography.body, fontWeight: "600" },
  levelDesc: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.xs },
  levelMeta: { ...Typography.label, color: Colors.primary, marginTop: Spacing.xs },
  levelStatus: { width: 32, alignItems: "center" },
});
