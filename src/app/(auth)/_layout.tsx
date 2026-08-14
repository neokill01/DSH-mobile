import { Redirect, Stack } from "expo-router";
import { useAuth } from "@/lib/auth";
import { isSupabaseConfigured } from "@/lib/supabase";

export default function AuthLayout() {
  const { user, loading } = useAuth();
  // 已登录用户不再进入登录/注册页（仅云端模式需要登录）
  if (isSupabaseConfigured && !loading && user) return <Redirect href="/" />;
  return <Stack screenOptions={{ headerShown: false }} />;
}
