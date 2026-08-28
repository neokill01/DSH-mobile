// 注册页（云端模式）
// 青春活力风格：渐变按钮、密码强度指示器

import { useState } from "react";
import {
  KeyboardAvoidingView,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from "react-native";
import { Link, router } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Ionicons } from "@expo/vector-icons";
import { useAuth } from "@/lib/auth";
import { isSupabaseConfigured } from "@/lib/supabase";
import { Colors, Spacing, Radius, Shadow, Typography } from "@/constants/theme";

const getPasswordStrength = (pw: string): { level: number; color: string; label: string } => {
  if (pw.length === 0) return { level: 0, color: Colors.divider, label: "" };
  if (pw.length < 6) return { level: 1, color: Colors.danger, label: "弱" };
  if (pw.length < 10) return { level: 2, color: Colors.gold, label: "中" };
  return { level: 3, color: Colors.success, label: "强" };
};

export default function RegisterScreen() {
  const insets = useSafeAreaInsets();
  const { signUp } = useAuth();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirm, setConfirm] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  const strength = getPasswordStrength(password);

  const submit = async () => {
    if (busy) return;
    if (password.length < 6) {
      setError("密码至少 6 位");
      return;
    }
    if (password !== confirm) {
      setError("两次输入的密码不一致");
      return;
    }
    setBusy(true);
    setError(null);
    const { error: err } = await signUp(email.trim(), password);
    setBusy(false);
    if (err) setError(err);
    else router.replace("/");
  };

  return (
    <KeyboardAvoidingView
      behavior={Platform.OS === "ios" ? "padding" : undefined}
      style={[styles.container, { paddingTop: insets.top + Spacing.xxl }]}
    >
      {/* Logo */}
      <View
        style={[styles.logoWrap, { backgroundColor: Colors.purple }]}
      >
        <Ionicons name="person-add" size={32} color={Colors.white} />
      </View>
      <Text style={styles.title}>创建账号</Text>
      <Text style={styles.subtitle}>注册后学习进度将同步到云端</Text>

      {/* 输入框 */}
      <View style={styles.inputGroup}>
        <View style={styles.inputWrap}>
          <Ionicons name="mail-outline" size={18} color={Colors.textMuted} style={styles.inputIcon} />
          <TextInput
            style={styles.input}
            placeholder="邮箱"
            placeholderTextColor={Colors.textMuted}
            autoCapitalize="none"
            autoCorrect={false}
            keyboardType="email-address"
            value={email}
            onChangeText={setEmail}
          />
        </View>
        <View>
          <View style={styles.inputWrap}>
            <Ionicons name="lock-closed-outline" size={18} color={Colors.textMuted} style={styles.inputIcon} />
            <TextInput
              style={styles.input}
              placeholder="密码（至少 6 位）"
              placeholderTextColor={Colors.textMuted}
              secureTextEntry
              value={password}
              onChangeText={setPassword}
            />
          </View>
          {/* 密码强度指示器 */}
          {password.length > 0 && (
            <View style={styles.strengthRow}>
              <View style={styles.strengthBars}>
                {[1, 2, 3].map((i) => (
                  <View
                    key={i}
                    style={[
                      styles.strengthBar,
                      {
                        backgroundColor: i <= strength.level ? strength.color : Colors.divider,
                      },
                    ]}
                  />
                ))}
              </View>
              <Text style={[styles.strengthLabel, { color: strength.color }]}>
                {strength.label}
              </Text>
            </View>
          )}
        </View>
        <View style={styles.inputWrap}>
          <Ionicons name="shield-checkmark-outline" size={18} color={Colors.textMuted} style={styles.inputIcon} />
          <TextInput
            style={styles.input}
            placeholder="确认密码"
            placeholderTextColor={Colors.textMuted}
            secureTextEntry
            value={confirm}
            onChangeText={setConfirm}
          />
        </View>
      </View>

      {error ? (
        <View style={styles.errorBox}>
          <Ionicons name="alert-circle" size={14} color={Colors.danger} />
          <Text style={styles.error}>{error}</Text>
        </View>
      ) : null}

      {/* 注册按钮 */}
      <Pressable
        style={[styles.btn, (busy || !isSupabaseConfigured) && styles.btnDisabled]}
        onPress={submit}
        disabled={busy || !isSupabaseConfigured}
      >
        <View
          style={[styles.btnGradient, { backgroundColor: busy || !isSupabaseConfigured ? Colors.textMuted : Colors.purple }]}
        >
          <Text style={styles.btnText}>{busy ? "注册中…" : "注 册"}</Text>
        </View>
      </Pressable>

      <Link href="/login" style={styles.link}>
        已有账号？去登录
      </Link>
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    padding: Spacing.xxl,
    backgroundColor: Colors.background,
  },
  logoWrap: {
    width: 72,
    height: 72,
    borderRadius: 24,
    borderWidth: 1,
    borderColor: Colors.primary,
    alignItems: "center",
    justifyContent: "center",
    alignSelf: "center",
    marginBottom: Spacing.lg,
    ...Shadow.button,
  },
  title: {
    fontSize: 28,
    fontWeight: "800",
    color: Colors.text,
    textAlign: "center",
    letterSpacing: -0.5,
  },
  subtitle: {
    ...Typography.caption,
    textAlign: "center",
    marginTop: Spacing.sm,
    marginBottom: Spacing.xxl,
  },
  inputGroup: {
    gap: Spacing.md,
    marginBottom: Spacing.sm,
  },
  inputWrap: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: Colors.surface,
    borderRadius: Radius.lg,
    borderWidth: 1,
    borderColor: Colors.border,
    paddingHorizontal: Spacing.md,
  },
  inputIcon: {
    marginRight: Spacing.sm,
  },
  input: {
    flex: 1,
    paddingVertical: Spacing.md,
    fontSize: 16,
    color: Colors.text,
  },
  strengthRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
    marginTop: Spacing.sm,
    paddingHorizontal: Spacing.xs,
  },
  strengthBars: {
    flexDirection: "row",
    gap: Spacing.xs,
    flex: 1,
  },
  strengthBar: {
    height: 4,
    flex: 1,
    borderRadius: 2,
  },
  strengthLabel: {
    ...Typography.badge,
  },
  errorBox: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.xs,
    marginTop: Spacing.sm,
    marginBottom: Spacing.xs,
  },
  error: {
    ...Typography.caption,
    color: Colors.danger,
  },
  btn: {
    borderRadius: Radius.pill,
    marginTop: Spacing.md,
    overflow: "hidden",
    ...Shadow.button,
  },
  btnGradient: {
    paddingVertical: Spacing.md,
    alignItems: "center",
    borderRadius: Radius.pill,
  },
  btnDisabled: {
    opacity: 0.6,
  },
  btnText: {
    color: Colors.white,
    fontSize: 17,
    fontWeight: "700",
  },
  link: {
    textAlign: "center",
    marginTop: Spacing.lg,
    color: Colors.primary,
    fontSize: 14,
    fontWeight: "500",
  },
});
