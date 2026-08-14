# 词记 WordNest - 项目交付介绍文档

## 项目概述

**词记 WordNest** 是一款基于间隔重复算法（FSRS）的英语词汇学习应用，支持 iOS 和 Android 双平台。应用采用现代化的移动开发技术栈，提供智能化的词汇记忆体验。

- **项目名称**：词记 WordNest
- **版本**：v0.1.0
- **技术栈**：Expo SDK 57 + React Native + TypeScript
- **支持平台**：iOS / Android

---

## 核心功能

### 1. 智能复习系统
- **FSRS 间隔重复算法**：采用 ts-fsrs 库（FSRS-4.5），与 Anki 同源算法
- **四档评分**：忘记 (Again) / 模糊 (Hard) / 记得 (Good) / 轻松 (Easy)
- **自适应排期**：根据用户评分自动调整下次复习时间
- **离线可用**：排期计算在客户端完成，无需网络

### 2. 词书管理
- **多词书支持**：内置多个分级词书（CET-4/6、考研、雅思等）
- **词书切换**：一键切换当前学习词书
- **进度追踪**：实时显示已学/掌握/剩余词汇数量

### 3. 学习模式
- **学习新词**：每日新词目标（默认 20 词/天）
- **到期复习**：每日复习目标（默认 100 词/天）
- **翻转卡片**：点击查看释义、例句、发音

### 4. 统计分析
- **学习进度**：总词汇量、已掌握、学习中
- **连续打卡**：每日学习 streak 统计
- **今日目标**：新词/复习进度可视化
- **7天趋势图**：柱状图展示学习趋势

### 5. 用户系统
- **本地演示模式**：无需注册，开箱即用
- **云端同步**：Supabase 认证 + 数据持久化
- **多设备同步**：登录后数据云端同步

### 6. 成就系统
- **7种成就**：第一天、连续打卡、词汇里程碑
- **解锁动画**：成就解锁时的视觉反馈

---

## 技术架构

### 前端架构
```
src/
├── app/                  # expo-router 路由
│   ├── _layout.tsx       # 根布局（AuthProvider）
│   ├── (auth)/           # 认证模块（登录/注册）
│   ├── (tabs)/           # 主界面（首页/统计/个人）
│   │   ├── index.tsx     # 首页
│   │   ├── stats.tsx     # 统计页
│   │   └── profile.tsx   # 个人中心
│   └── review.tsx        # 复习核心页面
├── components/           # UI 组件
│   ├── WordCard.tsx      # 翻转单词卡片
│   ├── RatingBar.tsx     # 四档评分栏
│   ├── StatCard.tsx      # 统计卡片
│   ├── AchievementGrid.tsx # 成就网格
│   ├── WeeklyChart.tsx   # 周趋势图表
│   ├── ProgressCard.tsx  # 进度卡片
│   └── Icon.tsx          # 图标组件
├── constants/            # 常量定义
│   ├── theme.ts          # 设计系统（颜色/字体/间距）
│   ├── icons.ts          # 图标映射
│   ├── demoBooks.ts      # 演示词书数据
│   ├── achievements.ts   # 成就系统
│   └── ratings.ts        # 评分文案
├── lib/                  # 核心逻辑
│   ├── repository.ts     # 数据仓库接口
│   ├── localRepository.ts    # 本地存储实现
│   ├── supabaseRepository.ts # Supabase 实现
│   ├── fsrs.ts           # FSRS 算法封装
│   ├── auth.tsx          # 认证上下文
│   └── statsUtil.ts      # 统计工具函数
└── types/                # TypeScript 类型
    └── database.ts       # 数据库类型定义
```

### 设计系统（墨韵书卷风格）

#### 色彩系统
| 角色 | 名称 | 色值 | 用途 |
|------|------|------|------|
| 主色 | 墨韵蓝 | `#1E3A5F` | 主要按钮、标题、强调 |
| 辅色 | 朱砂红 | `#C85A4A` | 成就、激励、重要标记 |
| 点缀 | 琥珀金 | `#D4A853` | 进度、奖励、高亮 |
| 成功 | 青玉绿 | `#2D8B6F` | 掌握、正确、完成 |
| 背景 | 宣纸白 | `#F8F6F1` | 页面背景 |

#### 字体系统
| 角色 | 字号 | 字重 |
|------|------|------|
| 大标题 | 28px | 700 |
| 标题 | 22px | 600 |
| 副标题 | 18px | 500 |
| 正文 | 16px | 400 |
| 辅助 | 14px | 400 |
| 标签 | 12px | 500 |

#### 间距系统
```
xs: 4px    sm: 8px    md: 12px
lg: 16px   xl: 20px   xxl: 24px
xxxl: 32px section: 40px
```

### 双模式架构
应用支持两种运行模式，通过环境变量自动切换：

| 模式 | 触发条件 | 特点 |
|---|---|---|
| **本地演示模式** | 未配置 `.env` | AsyncStorage 持久化、无需登录、开箱即用 |
| **云端模式** | 配置 Supabase 变量 | 账号登录、数据云端同步、多设备支持 |

### 核心依赖
- **Expo SDK 57**：跨平台开发框架
- **React Native 0.86**：移动端 UI 框架
- **expo-router**：文件系统路由
- **ts-fsrs**：FSRS 间隔重复算法
- **@supabase/supabase-js**：后端服务
- **AsyncStorage**：本地数据持久化
- **expo-speech**：TTS 语音发音
- **@expo/vector-icons**：Ionicons 图标库

---

## 数据库设计

### 核心表结构
- **word_books**：词书定义
- **words**：词汇表（单词、释义、音标、例句）
- **word_book_items**：词书-词汇关联
- **user_words**：用户学习状态（下次复习时间、难度、稳定性）
- **review_logs**：复习记录（只增不改，append-only）

### 数据安全
- **Row Level Security (RLS)**：用户只能访问自己的数据
- **注册触发器**：新用户自动创建 profile
- **离线优先**：本地模式数据存储在设备，云端模式数据加密传输

---

## UI/UX 设计

### 设计语言
- **风格**：墨韵书卷风格，融合东方书法美学与现代极简设计
- **配色**：墨韵蓝 + 朱砂红 + 琥珀金
- **图标**：统一使用 Ionicons 图标库

### 交互设计
- **翻转卡片**：3D Y轴旋转动画，duration: 600ms
- **进度可视化**：进度条、柱状图、统计卡片
- **即时反馈**：评分后立即显示下一卡片
- **按钮交互**：按压缩放动画 (scale: 0.95)

### 组件库
| 组件 | 功能 | 文件 |
|------|------|------|
| WordCard | 翻转单词卡片 | `src/components/WordCard.tsx` |
| RatingBar | 四档评分栏 | `src/components/RatingBar.tsx` |
| StatCard | 统计卡片 | `src/components/StatCard.tsx` |
| AchievementGrid | 成就网格 | `src/components/AchievementGrid.tsx` |
| WeeklyChart | 周趋势图表 | `src/components/WeeklyChart.tsx` |
| ProgressCard | 进度卡片 | `src/components/ProgressCard.tsx` |
| Icon | 图标组件 | `src/components/Icon.tsx` |

---

## 构建配置

### EAS Build Profiles
| Profile | 用途 | 自动递增 |
|---------|------|----------|
| development | 开发构建 | ✅ |
| development-simulator | iOS 模拟器 | ✅ buildNumber |
| development-device | iOS 真机 | ✅ buildNumber |
| development-android | Android APK | ✅ versionCode |
| preview | 预览构建 | ✅ |
| preview-ios | iOS 预览 | ✅ buildNumber |
| preview-android | Android 预览 | ✅ versionCode |
| production | 生产构建 | ✅ |
| production-ios | iOS 生产 | ✅ buildNumber |
| production-android | Android 生产 | ✅ versionCode |

### 触发条件
- **Development**: push 到 `develop` 或 `feature/**` 分支
- **Preview/Production**: push 到 `main` 分支
- **路径过滤**: 仅 `src/` 目录变更触发构建
- **忽略**: 以 `.` 开头的文件/目录

---

## 交付物清单

### 代码仓库
- ✅ 完整源代码（TypeScript）
- ✅ 数据库迁移脚本
- ✅ 环境配置模板（.env.example）
- ✅ 项目文档（README、本文档、部署文档）

### 功能模块
- ✅ 认证流程（登录/注册）
- ✅ 词书选择与管理
- ✅ 新词学习流程
- ✅ 间隔重复复习系统
- ✅ 统计与进度追踪
- ✅ 个人中心
- ✅ 成就系统

### 技术特性
- ✅ TypeScript 类型安全
- ✅ 文件系统路由（expo-router）
- ✅ 双模式架构（本地/云端）
- ✅ 离线优先设计
- ✅ 响应式 UI
- ✅ 设计系统（墨韵书卷风格）
- ✅ Ionicons 图标库

---

## 后续扩展建议

### 功能扩展
- [ ] 词汇导入/导出（CSV、Anki 格式）
- [ ] 自定义词书创建
- [ ] 学习提醒推送
- [ ] 社交功能（排行榜、学习小组）
- [ ] AI 例句生成
- [ ] 离线语音包

### 技术优化
- [ ] 性能监控（Sentry）
- [ ] 单元测试覆盖
- [ ] E2E 测试（Detox）
- [ ] CI/CD 流水线
- [ ] 国际化（i18n）

---

## 联系方式

如有技术问题或需求变更，请联系开发团队。

---

*文档版本：v1.1*
*最后更新：2026-08-14*
