# 词记 WordNest · React Native 客户端

英语记单词 App（iOS + Android）的 Expo / React Native 工程。完整产品规划见 [`../docs/PRD.md`](../docs/PRD.md)。

## 两种运行模式

| 模式 | 触发条件 | 行为 |
|---|---|---|
| **本地演示模式** | 未配置 `.env` | 内置演示词书 + AsyncStorage 持久化 + FSRS 全流程，**开箱即用**，无需登录 |
| **云端模式** | 配置了 `.env` 的 Supabase 变量 | 账号登录 + 数据落库（word_books / user_words / review_logs 等） |

业务代码只依赖 `src/lib/repository.ts` 的 `WordRepository` 接口，由 `getRepository()` 自动选择实现。

## 快速开始

```bash
yarn install
yarn start        # 然后按 i 开 iOS 模拟器 / a 开 Android 模拟器，或扫码用 Expo Go
```

> 包管理器统一使用 **yarn（classic v1）**，锁文件为 `yarn.lock`。

默认即本地演示模式：直接体验「选词书 → 学新词 → 到期复习 → 统计」完整闭环。

## 启用云端模式（Supabase）

1. 到 [supabase.com](https://supabase.com) 创建项目
2. 在 **SQL Editor** 中整体执行 [`supabase/migrations/0001_init.sql`](supabase/migrations/0001_init.sql)（建表 + RLS + 注册触发器）
3. 复制 `.env.example` 为 `.env`，填入 Project URL 与 anon key
4. 重新 `yarn start`

> 内置词书数据（words / word_books / word_book_items）需要按 PRD 第 4 节 schema 导入，
> 或先自行插入少量数据用于联调；本地演示模式不受影响。

## 目录结构

```
src/
├── app/                  # expo-router 路由
│   ├── _layout.tsx       # 根布局（AuthProvider）
│   ├── (auth)/           # 登录 / 注册
│   ├── (tabs)/           # 学习 / 统计 / 我的
│   └── review.tsx        # 单词卡复习页
├── components/           # WordCard（翻转卡）、RatingBar（四档评分）
├── constants/            # 演示词书、成就定义、评分文案
├── lib/
│   ├── supabase.ts       # 客户端（env 检测 → 双模式开关）
│   ├── auth.tsx          # 认证上下文
│   ├── fsrs.ts           # ts-fsrs 封装（FSRS-4.5）
│   ├── repository.ts     # WordRepository 接口
│   ├── repositoryFactory.ts
│   ├── localRepository.ts      # 本地模式实现
│   ├── supabaseRepository.ts   # 云端实现
│   └── statsUtil.ts      # 统计纯函数（两模式共用）
├── types/database.ts     # 与数据库 schema 对应的类型
└── supabase/migrations/  # 数据库初始化 SQL
```

## 上架构建（EAS）

```bash
npm install -g eas-cli
eas login
eas build --platform ios     # 或 android；云构建无需本地 Xcode/Android SDK
```

## 技术要点

- **FSRS 间隔重复**：`ts-fsrs`（Anki 同源，FSRS-4.5），排期计算在客户端（离线可用、打分纯函数），复习流水记录打分前后快照
- **评分**：忘记(Again) / 模糊(Hard) / 记得(Good) / 轻松(Easy)
- **离线同步**：review_logs 只增不改（append-only），user_words 后写胜
- **TTS 发音**：expo-speech
- 环境变量使用 Expo 的 `EXPO_PUBLIC_*` 前缀（构建时内联）
