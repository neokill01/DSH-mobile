# 词记 WordNest · React Native 客户端

英语记单词 App（iOS + Android）的 Expo / React Native 工程。

**📖 文档导航**：[项目介绍](docs/PROJECT_OVERVIEW.md) · [产品需求](docs/PRD.md) · [部署指南](docs/DEPLOYMENT.md)

---

## ✨ 核心特性

- 🧠 **FSRS 间隔重复算法**：基于 ts-fsrs（Anki 同源，FSRS-4.5），智能排期复习
- 📚 **多词书支持**：内置 CET-4/6、考研、雅思等分级词书
- 🎯 **四档评分**：忘记 / 模糊 / 记得 / 轻松，自适应调整复习间隔
- 📊 **学习统计**：进度追踪、连续打卡、今日目标可视化
- 🔌 **双模式架构**：本地演示模式（开箱即用）+ 云端同步模式（Supabase）
- 🗣️ **TTS 发音**：expo-speech 离线语音朗读

---

## 🚀 快速开始

### 环境要求

- Node.js >= 18
- Yarn Classic (v1)
- iOS: Xcode 15+ | Android: Android Studio 2023.1+

### 安装运行

```bash
# 克隆仓库
git clone https://github.com/neokill01/DSH-mobile.git
cd DSH-mobile

# 安装依赖
yarn install

# 启动开发服务器
yarn start
```

启动后按提示操作：
- 按 `i` 打开 iOS 模拟器
- 按 `a` 打开 Android 模拟器
- 或使用 Expo Go 扫码在真机运行

> 💡 默认即**本地演示模式**，无需任何配置，直接体验「选词书 → 学新词 → 到期复习 → 统计」完整闭环。

---

## 🔧 运行模式

| 模式 | 触发条件 | 特点 |
|---|---|---|
| **本地演示模式** | 未配置 `.env` | AsyncStorage 持久化、无需登录、开箱即用 |
| **云端模式** | 配置 `.env` 的 Supabase 变量 | 账号登录、数据云端同步、多设备支持 |

业务代码只依赖 `src/lib/repository.ts` 的 `WordRepository` 接口，由 `getRepository()` 自动选择实现。

### 启用云端模式

1. 到 [supabase.com](https://supabase.com) 创建项目
2. 在 **SQL Editor** 中执行 [`supabase/migrations/0001_init.sql`](supabase/migrations/0001_init.sql)
3. 复制 `.env.example` 为 `.env`，填入 Project URL 与 anon key
4. 重新 `yarn start`

> 📖 详细配置步骤请参考 [部署文档](docs/DEPLOYMENT.md#supabase-后端配置)

---

## 📁 目录结构

```
src/
├── app/                  # expo-router 路由
│   ├── _layout.tsx       # 根布局（AuthProvider）
│   ├── (auth)/           # 登录 / 注册
│   ├── (tabs)/           # 学习 / 统计 / 我的
│   └── review.tsx        # 单词卡复习页
├── components/           # WordCard（翻转卡）、RatingBar（四档评分）
├── constants/            # 演示词书、成就定义、评分文案、主题配置
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

---

## 🏗️ 生产构建

### EAS 云构建（推荐）

```bash
# 安装 EAS CLI
npm install -g eas-cli

# 登录 Expo 账号
eas login

# 构建 iOS / Android
eas build --platform ios --profile production
eas build --platform android --profile production
```

> 📖 完整的构建和发布流程请参考 [部署文档](docs/DEPLOYMENT.md#生产构建)

---

## 🛠️ 技术栈

| 类别 | 技术 |
|---|---|
| 框架 | Expo SDK 57 + React Native 0.86 |
| 语言 | TypeScript |
| 路由 | expo-router |
| 算法 | ts-fsrs (FSRS-4.5) |
| 后端 | Supabase (PostgreSQL + Auth) |
| 存储 | AsyncStorage (本地) |
| 语音 | expo-speech |
| 动画 | React Native Reanimated |

---

## 📚 更多文档

- **[项目介绍](docs/PROJECT_OVERVIEW.md)**：功能特性、技术架构、UI/UX 设计
- **[产品需求文档](docs/PRD.md)**：完整的产品规划和需求说明
- **[部署指南](docs/DEPLOYMENT.md)**：环境搭建、Supabase 配置、应用商店发布

---

## 📄 许可证

Private - 仅供内部使用

---

*最后更新：2026-08-27*
