// 认证上下文：云端模式（已配置 Supabase）管理登录会话；
// 本地演示模式（未配置）直接放行，user 恒为 null。

import {
  createContext,
  useContext,
  useEffect,
  useMemo,
  useState,
  type ReactNode,
} from "react";
import type { Session, User } from "@supabase/supabase-js";
import { isSupabaseConfigured, getSupabase } from "./supabase";

interface AuthContextValue {
  user: User | null;
  loading: boolean;
  /** local = 未配置 Supabase（本地演示模式） */
  mode: "local" | "supabase";
  signIn: (email: string, password: string) => Promise<{ error: string | null }>;
  signUp: (email: string, password: string) => Promise<{ error: string | null }>;
  signOut: () => Promise<void>;
}

const AuthContext = createContext<AuthContextValue | null>(null);

// 认证超时时间（5秒）
const AUTH_TIMEOUT_MS = 5000;

export function AuthProvider({ children }: { children: ReactNode }) {
  const [session, setSession] = useState<Session | null>(null);
  const [loading, setLoading] = useState(isSupabaseConfigured);

  useEffect(() => {
    if (!isSupabaseConfigured) {
      setLoading(false);
      return;
    }

    let mounted = true;
    const supabase = getSupabase();

    // 创建超时 Promise
    const timeoutPromise = new Promise<boolean>((resolve) => {
      setTimeout(() => {
        if (mounted) {
          console.warn("Auth session check timed out, proceeding without session");
          resolve(true);
        }
      }, AUTH_TIMEOUT_MS);
    });

    // 获取会话
    const sessionPromise = supabase.auth
      .getSession()
      .then(({ data }) => {
        if (mounted) {
          setSession(data.session);
          return false; // 未超时
        }
        return false;
      })
      .catch(() => {
        if (mounted) {
          return false;
        }
        return false;
      });

    // 竞争：会话获取 vs 超时
    Promise.race([sessionPromise, timeoutPromise]).then((timedOut) => {
      if (mounted && timedOut) {
        // 超时，继续加载 UI
        setLoading(false);
      } else if (mounted) {
        // 正常完成
        setLoading(false);
      }
    });

    const { data: sub } = supabase.auth.onAuthStateChange((_event, s) => {
      if (mounted) setSession(s);
    });

    return () => {
      mounted = false;
      sub.subscription.unsubscribe();
    };
  }, []);

  const value = useMemo<AuthContextValue>(
    () => ({
      user: session?.user ?? null,
      loading,
      mode: isSupabaseConfigured ? "supabase" : "local",
      signIn: async (email, password) => {
        if (!isSupabaseConfigured) return { error: "Supabase 未配置" };
        const supabase = getSupabase();
        const { error } = await supabase.auth.signInWithPassword({ email, password });
        return { error: error?.message ?? null };
      },
      signUp: async (email, password) => {
        if (!isSupabaseConfigured) return { error: "Supabase 未配置" };
        const supabase = getSupabase();
        const { error } = await supabase.auth.signUp({ email, password });
        return { error: error?.message ?? null };
      },
      signOut: async () => {
        if (isSupabaseConfigured) {
          const supabase = getSupabase();
          await supabase.auth.signOut();
        }
      },
    }),
    [session, loading],
  );

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth(): AuthContextValue {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error("useAuth 必须在 <AuthProvider> 内使用");
  return ctx;
}
