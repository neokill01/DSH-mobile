// 注册页（云端模式）

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
import { Colors, Spacing, Radius, Shadow } from "@/constants/theme";

export default function RegisterScreen() {
  const insets = useSafeAreaInsets();
  const { signUp } = useAuth();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirm, setConfirm] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

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
      <View style={styles.logoWrap}>
        <Ionicons name="person-add" size={32} color={Colors.primary} />
      </View>
      <Text style={styles.title}>创建账号</Text>
      <Text style={styles.subtitle}>注册后学习进度将同步到云端</Text>

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
            placeholder="密码（至少 6 位）"
            placeholderTextColor={Colors.textMuted}
            secureTextEntry
            value={password}
            onChangeText={setPassword}
          />
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

      <Pressable
        style={[styles.btn, (busy || !isSupabaseConfigured) && styles.btnDisabled]}
        onPress={submit}
        disabled={busy || !isSupabaseConfigured}
      >
        <Text style={styles.btnText}>{busy ? "注册中…" : "注 册"}</Text>
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
    width: 64,
    height: 64,
    borderRadius: 20,
    backgroundColor: Colors.primaryBg,
    alignItems: "center",
    justifyContent: "center",
    alignSelf: "center",
    marginBottom: 16,
  },
  title: {
    fontSize: 28,
    fontWeight: "800",
    color: Colors.text,
    textAlign: "center",
    letterSpacing: -0.5,
  },
  subtitle: {
    fontSize: 14,
    color: Colors.textTertiary,
    textAlign: "center",
    marginTop: 6,
    marginBottom: 32,
  },
  inputGroup: {
    gap: 12,
    marginBottom: 4,
  },
  inputWrap: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: Colors.surface,
    borderRadius: Radius.md,
    borderWidth: 1.5,
    borderColor: Colors.border,
    paddingHorizontal: 14,
  },
  inputIcon: {
    marginRight: 8,
  },
  input: {
    flex: 1,
    paddingVertical: 14,
    fontSize: 16,
    color: Colors.text,
  },
  errorBox: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
    marginTop: 8,
    marginBottom: 4,
  },
  error: {
    color: Colors.danger,
    fontSize: 13,
  },
  btn: {
    backgroundColor: Colors.primary,
    borderRadius: Radius.md,
    paddingVertical: 15,
    alignItems: "center",
    marginTop: 12,
    ...Shadow.card,
  },
  btnDisabled: {
    opacity: 0.5,
  },
  btnText: {
    color: "#FFFFFF",
    fontSize: 17,
    fontWeight: "600",
  },
  link: {
    textAlign: "center",
    marginTop: 20,
    color: Colors.primary,
    fontSize: 14,
  },
});
