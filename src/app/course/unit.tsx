// 单元页：显示等级下的单元列表和进度

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
import type { CourseUnit as UnitType } from "@/types/database";

export default function CourseUnitScreen() {
  const insets = useSafeAreaInsets();
  const params = useLocalSearchParams<{ levelId?: string }>();
  const levelId = params.levelId ?? "";

  const [units, setUnits] = useState<UnitType[]>([]);
  const [loading, setLoading] = useState(true);

  const loadUnits = useCallback(async () => {
    try {
      const repo = getRepository();
      const u = await repo.getLevelUnits(levelId);
      setUnits(u);
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  }, [levelId]);

  useEffect(() => {
    loadUnits();
  }, [loadUnits]);

  if (loading) {
    return (
      <View style={[styles.center, { paddingTop: insets.top }]}>
        <ActivityIndicator size="large" color={Colors.primary} />
      </View>
    );
  }

  const completedUnits = units.filter((u) => u.status === "completed").length;

  return (
    <View style={[styles.container, { paddingTop: insets.top + Spacing.lg, paddingBottom: insets.bottom + Spacing.lg }]}>
      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={styles.content}>
        {/* 顶部导航 */}
        <View style={styles.topRow}>
          <Pressable style={styles.backBtn} onPress={() => router.back()} hitSlop={10}>
            <Ionicons name="arrow-back" size={24} color={Colors.text} />
          </Pressable>
          <Text style={styles.topTitle}>单元列表</Text>
          <View style={{ width: 40 }} />
        </View>

        {/* 总进度 */}
        <View style={styles.progressSummary}>
          <Text style={styles.progressLabel}>已完成 {completedUnits}/{units.length} 单元</Text>
          <View style={styles.progressTrack}>
            <View style={[styles.progressFill, { width: `${(completedUnits / units.length) * 100}%` }]} />
          </View>
        </View>

        {/* 单元列表 */}
        {units.map((unit) => {
          const isActive = unit.status === "active";
          const isLocked = unit.status === "locked";

          return (
            <Pressable
              key={unit.id}
              style={[styles.unitCard, isActive && styles.unitCardActive, isLocked && styles.unitCardLocked]}
              onPress={() => !isLocked && router.push(`/review?mode=new&unitId=${unit.id}`)}
              disabled={isLocked}
            >
              <View style={styles.unitRow}>
                <View style={[styles.unitNumber, isActive && styles.unitNumberActive]}>
                  <Text style={[styles.unitNumberText, isActive && styles.unitNumberTextActive]}>
                    {unit.unitNumber}
                  </Text>
                </View>
                <View style={styles.unitInfo}>
                  <Text style={styles.unitTitle}>{unit.title}</Text>
                  <Text style={styles.unitMeta}>
                    新词 {unit.newWordCount} + 复习 {unit.reviewWordCount}
                  </Text>
                </View>
                <View style={styles.unitStatus}>
                  {isLocked && <Ionicons name="lock-closed" size={18} color={Colors.textMuted} />}
                  {isActive && <Ionicons name="play-circle" size={22} color={Colors.primary} />}
                  {unit.status === "completed" && <Ionicons name="checkmark-circle" size={22} color={Colors.success} />}
                </View>
              </View>
              {/* 进度条 */}
              {isActive && (
                <View style={styles.unitProgress}>
                  <View style={[styles.unitProgressFill, { width: "30%" }]} />
                </View>
              )}
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
    width: 40, height: 40, borderRadius: 20, backgroundColor: Colors.surface,
    alignItems: "center", justifyContent: "center", ...Shadow.soft,
  },
  topTitle: { ...Typography.h3 },
  progressSummary: { marginBottom: Spacing.xl },
  progressLabel: { ...Typography.caption, color: Colors.textMuted, marginBottom: Spacing.sm },
  progressTrack: { height: 8, borderRadius: Radius.pill, backgroundColor: Colors.divider, overflow: "hidden" },
  progressFill: { height: "100%", borderRadius: Radius.pill, backgroundColor: Colors.primary },
  unitCard: {
    backgroundColor: Colors.surface, borderRadius: Radius.lg, padding: Spacing.lg,
    marginBottom: Spacing.md, ...Shadow.soft,
  },
  unitCardActive: { borderWidth: 2, borderColor: Colors.primary },
  unitCardLocked: { opacity: 0.6 },
  unitRow: { flexDirection: "row", alignItems: "center", gap: Spacing.md },
  unitNumber: {
    width: 40, height: 40, borderRadius: 20, backgroundColor: Colors.divider,
    alignItems: "center", justifyContent: "center",
  },
  unitNumberActive: { backgroundColor: Colors.primary },
  unitNumberText: { ...Typography.body, fontWeight: "700", color: Colors.textMuted },
  unitNumberTextActive: { color: "#FFFFFF" },
  unitInfo: { flex: 1 },
  unitTitle: { ...Typography.body, fontWeight: "600" },
  unitMeta: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.xs },
  unitStatus: { width: 32, alignItems: "center" },
  unitProgress: { height: 4, borderRadius: Radius.pill, backgroundColor: Colors.divider, overflow: "hidden", marginTop: Spacing.md },
  unitProgressFill: { height: "100%", borderRadius: Radius.pill, backgroundColor: Colors.primary },
});
