// Supabase 客户端（懒加载版本）
// 环境变量留空时进入「本地演示模式」：不创建客户端、不要求登录，开箱即用。
//
// 配置方法：
//   1. 到 https://supabase.com 创建项目
//   2. 项目 Settings → API 复制 Project URL 与 anon public key
//   3. 复制 .env.example 为 .env 并填入（Expo 会自动读取 .env 中的 EXPO_PUBLIC_* 变量）

import AsyncStorage from "@react-native-async-storage/async-storage";
import { createClient, type SupabaseClient } from "@supabase/supabase-js";

const url = process.env.EXPO_PUBLIC_SUPABASE_URL ?? "";
const anonKey = process.env.EXPO_PUBLIC_SUPABASE_ANON_KEY ?? "";

/** 是否已配置 Supabase（配置后才会启用云端模式） */
export const isSupabaseConfigured = Boolean(
  url &&
    anonKey &&
    /^https?:\/\/[^/]+$/i.test(url) && // URL 必须形如 https://xxx.supabase.co，防止配置错误导致崩溃
    anonKey.startsWith("eyJ"), // anon key 是 JWT，eyJ 开头
);

// 懒加载 Supabase 客户端
let _supabase: SupabaseClient | null = null;
let _initialized = false;

function createSafeClient(): SupabaseClient | null {
  try {
    // 延迟加载 URL polyfill，仅在需要时初始化
    require("react-native-url-polyfill/auto");
    return createClient(url, anonKey, {
      auth: {
        storage: AsyncStorage,
        autoRefreshToken: true,
        persistSession: true,
        detectSessionInUrl: false,
      },
    });
  } catch {
    // 配置异常时降级为本地演示模式，而不是让 App 崩溃
    return null;
  }
}

/** 获取 Supabase 客户端（懒加载） */
export function getSupabase(): SupabaseClient {
  if (!_initialized) {
    _supabase = isSupabaseConfigured ? createSafeClient() : null;
    _initialized = true;
  }
  if (!_supabase) {
    throw new Error("Supabase 未配置：请先在 .env 中设置 EXPO_PUBLIC_SUPABASE_URL / ANON_KEY");
  }
  return _supabase;
}

/** 尝试获取 Supabase 客户端（不抛错） */
export function tryGetSupabase(): SupabaseClient | null {
  if (!_initialized) {
    _supabase = isSupabaseConfigured ? createSafeClient() : null;
    _initialized = true;
  }
  return _supabase;
}
