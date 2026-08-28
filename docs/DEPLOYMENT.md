# 词记 WordNest - 部署文档

## 目录

1. [环境要求](#环境要求)
2. [本地开发环境搭建](#本地开发环境搭建)
3. [Supabase 后端配置](#supabase-后端配置)
4. [应用配置](#应用配置)
5. [本地运行](#本地运行)
6. [EAS 云构建](#eas-云构建)
7. [EAS Workflows 自动构建](#eas-workflows-自动构建)
8. [应用商店发布](#应用商店发布)
9. [常见问题](#常见问题)

---

## 环境要求

### 开发环境
- **Node.js**：>= 18.x（推荐 LTS）
- **包管理器**：Yarn Classic (v1)
- **操作系统**：macOS（iOS 开发）/ Windows / Linux（Android 开发）

### iOS 开发
- **Xcode**：>= 15.0
- **CocoaPods**：>= 1.14
- **iOS Simulator**：iOS 16.0+

### Android 开发
- **Android Studio**：>= 2023.1
- **Android SDK**：API 33+
- **Java**：JDK 17

### 云构建
- **EAS CLI**：`npm install -g eas-cli`（版本 >= 21.8.0）
- **Expo 账号**：https://expo.dev

---

## 本地开发环境搭建

### 1. 克隆仓库

```bash
git clone https://github.com/neokill01/DSH-mobile.git
cd DSH-mobile
```

### 2. 安装依赖

```bash
yarn install
```

### 3. 环境配置（可选）

如需使用云端模式，复制并配置环境变量：

```bash
cp .env.example .env
```

编辑 `.env` 文件，填入 Supabase 配置（详见下一章节）。

> 💡 **提示**：不配置 `.env` 即为本地演示模式，可直接运行体验。

---

## Supabase 后端配置

### 1. 创建 Supabase 项目

1. 访问 [https://supabase.com](https://supabase.com) 并注册/登录
2. 点击 **New Project** 创建新项目
3. 选择区域（推荐 Southeast Asia 或 Northeast Asia）
4. 设置数据库密码（请妥善保管）

### 2. 获取 API 凭证

1. 进入项目 **Settings** → **API**
2. 复制以下两个值：
   - **Project URL**：形如 `https://xxxx.supabase.co`
   - **anon public key**：形如 `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...`

### 3. 初始化数据库

1. 进入 Supabase Dashboard → **SQL Editor**
2. 点击 **New Query**
3. 复制 [`supabase/migrations/0001_init.sql`](../supabase/migrations/0001_init.sql) 的全部内容
4. 粘贴到编辑器并点击 **Run** 执行

该脚本会创建以下内容：
- 所有数据表（word_books, words, user_words, review_logs 等）
- Row Level Security (RLS) 策略
- 注册触发器（新用户自动创建 profile）

### 4. 导入词书数据（可选）

本地演示模式内置词书数据，云端模式需要手动导入：

```sql
-- 在 SQL Editor 中执行
INSERT INTO word_books (id, title, description, level, word_count) VALUES
('cet4', 'CET-4 核心词汇', '大学英语四级高频词汇', '四级', 2500),
('cet6', 'CET-6 核心词汇', '大学英语六级高频词汇', '六级', 3000),
('kaoyan', '考研英语词汇', '研究生入学考试必备词汇', '考研', 5500);

-- 词汇数据需要根据实际需求导入
```

### 5. 配置环境变量

编辑项目根目录的 `.env` 文件：

```env
EXPO_PUBLIC_SUPABASE_URL=https://your-project-id.supabase.co
EXPO_PUBLIC_SUPABASE_ANON_KEY=your-anon-key-here
```

---

## 应用配置

### 应用信息配置

编辑 `app.json` 修改应用基本信息：

```json
{
  "expo": {
    "name": "词记",
    "slug": "vocabapp",
    "version": "0.1.0",
    "ios": {
      "bundleIdentifier": "com.neokill01.wordnest"
    },
    "android": {
      "package": "com.neokill01.wordnest"
    }
  }
}
```

### 图标和启动屏

替换以下文件：
- `assets/images/icon.png` - 应用图标（1024x1024）
- `assets/images/splash-icon.png` - 启动屏图标
- `assets/images/favicon.png` - Web 端图标
- `assets/images/android-icon-foreground.png` - Android 自适应图标前景

---

## 本地运行

### 启动开发服务器

```bash
yarn start
```

### 平台特定运行

```bash
# iOS 模拟器
yarn ios

# Android 模拟器
yarn android

# Web 浏览器
yarn web
```

### 使用 Expo Go

1. 手机安装 **Expo Go** 应用（iOS / Android）
2. 确保手机和电脑在同一 WiFi 网络
3. 运行 `yarn start`
4. 扫描终端中的二维码

---

## EAS 云构建

### 1. 登录 Expo 账号

```bash
eas login
```

### 2. 构建命令

#### 开发构建

```bash
# iOS 模拟器版本
eas build --platform ios --profile development-simulator

# iOS 真机版本
eas build --platform ios --profile development-device

# Android APK
eas build --platform android --profile development-android
```

#### 预览构建

```bash
# iOS 预览版
eas build --platform ios --profile preview-ios

# Android 预览版
eas build --platform android --profile preview-android
```

#### 生产构建

```bash
# iOS 生产版
eas build --platform ios --profile production-ios

# Android 生产版
eas build --platform android --profile production-android
```

### 3. 下载构建产物

构建完成后，EAS 会提供下载链接：
- **iOS**: `.tar.gz` 包含 `.app` 文件
- **Android**: `.apk` 或 `.aab` 文件

---

## EAS Workflows 自动构建

### 触发条件

项目配置了自动构建 Workflows，当代码推送到特定分支时自动触发：

| Workflow | 触发分支 | 触发条件 |
|----------|----------|----------|
| **Create Development Builds** | `develop`, `feature/**` | push 或 PR |
| **Create Preview Builds** | `main` | push 或 PR |
| **Create Production Builds** | `main` | push |

### 路径过滤

**仅 `src/` 目录的变更会触发构建**，以下文件变更不会触发：
- 以 `.` 开头的文件/目录（`.eas/`, `.github/`, `.env` 等）
- 配置文件（`app.json`, `eas.json`, `package.json`）
- 文档文件（`README.md`, `AGENTS.md`）

### 手动触发

在 Expo 仪表板中可以手动触发任何 Workflow：
1. 访问 https://expo.dev
2. 选择项目
3. 进入 **Workflows** 页面
4. 选择 Workflow 并点击 **Run Workflow**

### 查看构建状态

```bash
# 使用 CLI 查看构建列表
eas build:list

# 查看特定构建详情
eas build:view <build-id>
```

### 构建产物下载

构建完成后，可以通过以下方式下载：
1. **Expo 仪表板**：构建详情页面提供下载链接
2. **CLI**：`eas build:download <build-id>`
3. **直接链接**：格式为 `https://expo.dev/artifacts/eas/<artifact-id>.tar.gz`

---

## 应用商店发布

### iOS App Store

#### 1. 准备材料
- Apple Developer 账号（$99/年）
- 应用截图（6.7 寸、6.5 寸、5.5 寸）
- 应用描述和关键词
- 隐私政策 URL

#### 2. 上传构建

```bash
# 使用 EAS Submit（推荐）
eas submit --platform ios

# 或手动上传
# 1. 在 Xcode 中 Archive
# 2. 通过 Transporter 上传到 App Store Connect
```

#### 3. 提交审核
1. 登录 [App Store Connect](https://appstoreconnect.apple.com)
2. 填写应用信息
3. 上传截图和描述
4. 提交审核（通常 24-48 小时）

### Android Google Play

#### 1. 准备材料
- Google Play Developer 账号（$25 一次性）
- 应用截图（手机、平板、TV 可选）
- 隐私政策
- 内容分级问卷

#### 2. 上传构建

```bash
# 使用 EAS Submit
eas submit --platform android

# 或手动上传 AAB 文件到 Google Play Console
```

#### 3. 发布流程
1. 登录 [Google Play Console](https://play.google.com/console)
2. 创建应用并填写信息
3. 上传 AAB 文件
4. 设置内容分级
5. 选择发布国家/地区
6. 提交审核（通常 1-3 天）

---

## 版本管理

### 自动递增

EAS Build 支持自动递增版本号：

| 平台 | 字段 | 递增方式 |
|------|------|----------|
| iOS | `buildNumber` | 每次构建 +1 |
| Android | `versionCode` | 每次构建 +1 |

配置方式（`eas.json`）：

```json
{
  "build": {
    "production": {
      "autoIncrement": true
    },
    "production-ios": {
      "autoIncrement": true,
      "ios": {
        "autoIncrement": "buildNumber"
      }
    },
    "production-android": {
      "autoIncrement": true,
      "android": {
        "autoIncrement": "versionCode"
      }
    }
  }
}
```

### 手动更新版本

修改 `app.json` 中的版本信息：

```json
{
  "expo": {
    "version": "0.2.0",
    "ios": {
      "buildNumber": "2"
    },
    "android": {
      "versionCode": 2
    }
  }
}
```

---

## 常见问题

### Q: 如何切换本地模式和云端模式？

A: 删除或重命名 `.env` 文件即为本地模式，配置 `.env` 中的 Supabase 变量即为云端模式。重启开发服务器生效。

### Q: 构建时提示 "Expo SDK version mismatch"？

A: 确保使用正确的 Expo SDK 版本：
```bash
npx expo install --fix
```

### Q: iOS 构建失败，提示 "expo-dev-client not installed"？

A: 开发构建需要安装 expo-dev-client：
```bash
yarn add expo-dev-client
```

### Q: 构建失败，提示 "Invalid workflow definition"？

A: 确保 `workflow_dispatch` 配置正确：
```yaml
on:
  workflow_dispatch: {}  # 必须是空对象，不能是 null
```

### Q: 如何只构建特定平台？

A: 使用 `--platform` 参数：
```bash
# 仅 iOS
eas build --platform ios --profile production-ios

# 仅 Android
eas build --platform android --profile production-android
```

### Q: 如何查看构建日志？

A: 使用 CLI 或 Expo 仪表板：
```bash
# CLI 查看日志
eas build:view <build-id>

# 或访问 Expo 仪表板的构建详情页面
```

### Q: 如何取消正在运行的构建？

A: 使用 CLI 或 Expo 仪表板：
```bash
# CLI 取消构建
eas build:cancel <build-id>
```

### Q: 构建时间太长怎么办？

A: 优化建议：
1. 使用缓存（EAS 默认启用）
2. 减少依赖数量
3. 使用 `--non-interactive` 跳过交互提示
4. 考虑使用本地构建进行快速测试

---

## 技术支持

如遇部署问题，请检查：
1. Node.js 和 Yarn 版本是否符合要求
2. 依赖是否完整安装（`yarn install`）
3. 环境变量是否正确配置
4. EAS CLI 版本是否 >= 21.8.0
5. Expo 账号是否已登录（`eas whoami`）

---

*文档版本：v1.1*
*最后更新：2026-08-27*
