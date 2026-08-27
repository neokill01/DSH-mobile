// 设备管理页：查看和移除已登录设备

import { useCallback, useEffect, useState } from "react";
import {
  ActivityIndicator,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
  Alert,
} from "react-native";
import { router } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";
import { getRepository } from "@/lib/repository";
import type { Device } from "@/types/database";

const MAX_DEVICES = 2;

export default function DeviceManagementScreen() {
  const insets = useSafeAreaInsets();
  const [devices, setDevices] = useState<Device[]>([]);
  const [loading, setLoading] = useState(true);

  const loadDevices = useCallback(async () => {
    try {
      const repo = getRepository();
      const d = await repo.getDevices();
      setDevices(d);
    } catch (e) {
      console.error(e);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    loadDevices();
  }, [loadDevices]);

  const removeDevice = async (device: Device) => {
    Alert.alert(
      "移除设备",
      `确定要移除设备「${device.name}」吗？移除后该设备将无法登录。`,
      [
        { text: "取消", style: "cancel" },
        {
          text: "移除",
          style: "destructive",
          onPress: async () => {
            try {
              const repo = getRepository();
              await repo.removeDevice(device.id);
              loadDevices();
            } catch (e) {
              console.error(e);
            }
          },
        },
      ],
    );
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
          <Text style={styles.topTitle}>设备管理</Text>
          <View style={{ width: 40 }} />
        </View>

        {/* 设备限制说明 */}
        <View style={styles.infoCard}>
          <Ionicons name="information-circle" size={20} color={Colors.primary} />
          <Text style={styles.infoText}>
            账号最多可登录 {MAX_DEVICES} 台设备。当前已使用 {devices.length}/{MAX_DEVICES} 个设备位。
          </Text>
        </View>

        {/* 设备列表 */}
        {devices.map((device) => (
          <View key={device.id} style={styles.deviceCard}>
            <View style={styles.deviceRow}>
              <View style={[styles.deviceIcon, device.isCurrent && styles.deviceIconCurrent]}>
                <Ionicons
                  name={device.os === "iOS" ? "phone-portrait" : "phone-landscape"}
                  size={24}
                  color={device.isCurrent ? "#FFFFFF" : Colors.primary}
                />
              </View>
              <View style={styles.deviceInfo}>
                <Text style={styles.deviceName}>
                  {device.name}
                  {device.isCurrent && " (当前设备)"}
                </Text>
                <Text style={styles.deviceMeta}>
                  {device.model} · {device.os}
                </Text>
                <Text style={styles.deviceTime}>
                  最后活跃: {new Date(device.lastActiveAt).toLocaleDateString("zh-CN")}
                </Text>
              </View>
            </View>
            {!device.isCurrent && (
              <Pressable style={styles.removeBtn} onPress={() => removeDevice(device)}>
                <Text style={styles.removeBtnText}>移除</Text>
              </Pressable>
            )}
          </View>
        ))}
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
  infoCard: {
    flexDirection: "row", backgroundColor: Colors.primaryBg, borderRadius: Radius.lg,
    padding: Spacing.lg, gap: Spacing.md, marginBottom: Spacing.xl,
  },
  infoText: { flex: 1, ...Typography.caption, color: Colors.textSecondary, lineHeight: 20 },
  deviceCard: {
    backgroundColor: Colors.surface, borderRadius: Radius.lg, padding: Spacing.lg,
    marginBottom: Spacing.md, ...Shadow.soft,
  },
  deviceRow: { flexDirection: "row", alignItems: "center", gap: Spacing.md },
  deviceIcon: {
    width: 48, height: 48, borderRadius: 24, backgroundColor: Colors.primaryBg,
    alignItems: "center", justifyContent: "center",
  },
  deviceIconCurrent: { backgroundColor: Colors.primary },
  deviceInfo: { flex: 1 },
  deviceName: { ...Typography.body, fontWeight: "600" },
  deviceMeta: { ...Typography.caption, color: Colors.textMuted, marginTop: Spacing.xs },
  deviceTime: { ...Typography.label, color: Colors.textTertiary, marginTop: Spacing.xs },
  removeBtn: {
    marginTop: Spacing.md, paddingVertical: Spacing.sm, paddingHorizontal: Spacing.lg,
    borderRadius: Radius.sm, borderWidth: 1, borderColor: Colors.danger, alignSelf: "flex-end",
  },
  removeBtnText: { ...Typography.label, color: Colors.danger, fontWeight: "600" },
});
