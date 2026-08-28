// 登录页（云端模式）。本地演示模式显示提示，按钮禁用。
// 青春活力风格：渐变按钮、更圆润输入框

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
import { Colors, Typography, Spacing, Radius, Shadow } from "@/constants/theme";

export default function LoginScreen() {
  const insets = useSafeAreaInsets();
  const { signIn } = useAuth();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  const submit = async () => {
    if (busy) return;
    setBusy(true);
    setError(null);
    const { error: err } = await signIn(email.trim(), password);
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
      <View style={styles.logoWrap}>
        <Ionicons name="book" size={36} color={Colors.white} />
      </View>
      <Text style={styles.title}>词记</Text>
      <Text style={styles.subtitle}>科学间隔重复 · 记住每一个单词</Text>

      {!isSupabaseConfigured && (
        <View style={styles.notice}>
          <Ionicons name="information-circle" size={18} color={Colors.orange} />
          <Text style={styles.noticeText}>
            当前为本地演示模式，无需登录
          </Text>
        </View>
      )}

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
        <View style={styles.inputWrap}>
          <Ionicons name="lock-closed-outline" size={18} color={Colors.textMuted} style={styles.inputIcon} />
          <TextInput
            style={styles.input}
            placeholder="密码"
            placeholderTextColor={Colors.textMuted}
            secureTextEntry
            value={password}
            onChangeText={setPassword}
          />
        </View>
      </View>

      {error ? (
        <View style={styles.errorBox}>
          <Ionicons name="alert-circle" size={14} color={Colors.danger} />
          <Text style={styles.error}>{error}</Text>
        </View>
      ) : null}

      {/* 登录按钮 */}
      <Pressable
        style={[
          styles.btn,
          (busy || !isSupabaseConfigured) && styles.btnDisabled,
          busy || !isSupabaseConfigured ? {} : styles.btnPrimary,
        ]}
        onPress={submit}
        disabled={busy || !isSupabaseConfigured}
      >
        <Text style={styles.btnText}>{busy ? "登录中…" : "登 录"}</Text>
      </Pressable>

      <Link href="/register" style={styles.link}>
        还没有账号？立即注册
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
    backgroundColor: Colors.primary,
    alignItems: "center",
    justifyContent: "center",
    alignSelf: "center",
    marginBottom: Spacing.lg,
    ...Shadow.button,
  },
  title: {
    fontSize: 32,
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
  notice: {
    flexDirection: "row",
    alignItems: "center",
    gap: Spacing.sm,
    backgroundColor: Colors.orangeBg,
    borderRadius: Radius.md,
    borderWidth: 1,
    borderColor: Colors.orange,
    padding: Spacing.md,
    marginBottom: Spacing.md,
  },
  noticeText: {
    ...Typography.caption,
    color: Colors.orange,
    flex: 1,
    fontWeight: "500",
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
    paddingVertical: Spacing.md,
    alignItems: "center",
    backgroundColor: Colors.textMuted,
    ...Shadow.button,
  },
  btnPrimary: {
    backgroundColor: Colors.primary,
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
