# 词记 WordNest - 部署文档

## 目录

1. [环境要求](#环境要求)
2. [本地开发环境搭建](#本地开发环境搭建)
3. [Supabase 后端配置](#supabase-后端配置)
4. [应用配置](#应用配置)
5. [本地运行](#本地运行)
6. [生产构建](#生产构建)
7. [应用商店发布](#应用商店发布)
8. [常见问题](#常见问题)

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

### 云构建（可选）
- **EAS CLI**：npm install -g eas-cli
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
    "slug": "wordnest",
    "version": "0.1.0",
    "ios": {
      "bundleIdentifier": "com.yourcompany.wordnest"
    },
    "android": {
      "package": "com.yourcompany.wordnest"
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

## 生产构建

### 方式一：EAS 云构建（推荐）

#### 1. 安装 EAS CLI

```bash
npm install -g eas-cli
```

#### 2. 登录 Expo 账号

```bash
eas login
```

#### 3. 配置构建

首次构建会自动生成 `eas.json`，或手动创建：

```json
{
  "cli": {
    "version": ">= 7.0.0"
  },
  "build": {
    "development": {
      "developmentClient": true,
      "distribution": "internal"
    },
    "preview": {
      "distribution": "internal"
    },
    "production": {
      "autoIncrement": true
    }
  }
}
```

#### 4. 执行构建

```bash
# iOS 生产构建
eas build --platform ios --profile production

# Android 生产构建
eas build --platform android --profile production

# 双平台构建
eas build --platform all --profile production
```

构建完成后，EAS 会提供下载链接。

### 方式二：本地构建

#### iOS 本地构建

```bash
# 生成原生项目
npx expo prebuild --platform ios

# 安装 CocoaPods 依赖
cd ios && pod install && cd ..

# 使用 Xcode 打开并构建
open ios/wordnest.xcworkspace
```

#### Android 本地构建

```bash
# 生成原生项目
npx expo prebuild --platform android

# 使用 Android Studio 打开
open android

# 或命令行构建
cd android && ./gradlew assembleRelease
```

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
# 使用 EAS Submit
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
1. 登录 [Google Play Console](https://play.google.com/console
2. 创建应用并填写信息
3. 上传 AAB 文件
4. 设置内容分级
5. 选择发布国家/地区
6. 提交审核（通常 1-3 天）

---

## 常见问题

### Q: 如何切换本地模式和云端模式？

A: 删除或重命名 `.env` 文件即为本地模式，配置 `.env` 中的 Supabase 变量即为云端模式。重启开发服务器生效。

### Q: 构建时提示 "Expo SDK version mismatch"？

A: 确保使用正确的 Expo SDK 版本：
```bash
npx expo install --fix
```

### Q: iOS 构建失败，提示 CocoaPods 错误？

A: 尝试清理并重新安装：
```bash
cd ios
pod deintegrate
pod install
cd ..
```

### Q: Android 构建失败，提示 JDK 版本错误？

A: 确保使用 JDK 17：
```bash
# macOS (Homebrew)
brew install openjdk@17
export JAVA_HOME=/usr/local/opt/openjdk@17
```

### Q: 如何更新应用版本？

A: 修改 `app.json` 中的 `version` 字段，并更新构建号：
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

### Q: 如何查看应用日志？

A: 使用 Expo 开发工具：
```bash
# 启动并查看日志
yarn start --dev-client

# 或使用 React Native Debugger
# https://github.com/jhen0409/react-native-debugger
```

---

## 技术支持

如遇部署问题，请检查：
1. Node.js 和 Yarn 版本是否符合要求
2. 依赖是否完整安装（`yarn install`）
3. 环境变量是否正确配置
4. 原生项目是否需要清理（`npx expo prebuild --clean`）

---

*文档版本：v1.0*
*最后更新：2026-08-14*
