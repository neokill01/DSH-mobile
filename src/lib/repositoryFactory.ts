import { isSupabaseConfigured } from "./supabase";
import type { WordRepository } from "./repository";

// 仓库工厂：未配置 Supabase → 本地演示模式；已配置 → 云端模式。
// 延迟加载避免循环依赖。
let cached: WordRepository | null = null;

export function getRepository(): WordRepository {
  let impl = cached;
  if (!impl) {
    if (isSupabaseConfigured) {
      // 动态 require 规避顶层循环依赖（repository.ts ↔ 两个实现）
      // eslint-disable-next-line @typescript-eslint/no-var-requires
      const { supabaseRepository } = require("./supabaseRepository") as {
        supabaseRepository: WordRepository;
      };
      impl = supabaseRepository;
    } else {
      // eslint-disable-next-line @typescript-eslint/no-var-requires
      const { localRepository } = require("./localRepository") as {
        localRepository: WordRepository;
      };
      impl = localRepository;
    }
    cached = impl;
  }
  return impl;
}
