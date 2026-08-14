# Agent 行为规范

本文档定义了 AI Agent 在本项目中的工作规范，所有 Agent 操作必须遵守。

---

## 📅 项目信息

- **当前日期**：2026-08-14
- **Expo 版本**：SDK 57（[版本化文档](https://docs.expo.dev/versions/v57.0.0/)）
- **包管理器**：Yarn Classic (v1)，锁文件 `yarn.lock`

---

## 🔧 代码规范

### TypeScript
- 严格使用 TypeScript，禁止 `any` 类型（除非必要并添加注释说明）
- 使用 `interface` 定义对象类型，`type` 定义联合/交叉类型
- 导出类型使用 `export type`

### React Native
- 函数组件 + Hooks，禁止类组件
- 使用 `StyleSheet.create` 定义样式，禁止内联样式（简单场景除外）
- 遵循 React Native Reanimated 最佳实践

### 文件命名
- 组件文件：`PascalCase.tsx`（如 `WordCard.tsx`）
- 工具函数：`camelCase.ts`（如 `statsUtil.ts`）
- 类型定义：`camelCase.ts`（如 `database.ts`）
- 路由文件：遵循 expo-router 约定（`_layout.tsx`、`index.tsx`）

### 目录结构
```
src/
├── app/           # 路由页面（expo-router）
├── components/    # 可复用 UI 组件
├── constants/     # 常量定义（主题、配置）
├── lib/           # 核心逻辑、工具函数
└── types/         # TypeScript 类型定义
```

---

## 📝 提交规范

### Commit Message 格式
```
<type>(<scope>): <description>

[optional body]
[optional footer]
```

### Type 类型
| 类型 | 说明 |
|---|---|
| `feat` | 新功能 |
| `fix` | Bug 修复 |
| `docs` | 文档更新 |
| `style` | 代码格式（不影响功能） |
| `refactor` | 重构（非新功能、非修复） |
| `perf` | 性能优化 |
| `test` | 测试相关 |
| `chore` | 构建/工具变更 |

### 示例
```
feat(auth): add password strength validation
fix(review): correct FSRS interval calculation
docs(readme): update deployment instructions
```

---

## 🔒 安全约束

### 敏感信息
- ❌ **禁止提交**：`.env`、API 密钥、私钥、证书
- ❌ **禁止硬编码**：密码、Token、Secret
- ✅ **允许提交**：`.env.example`（模板，无真实值）

### 环境变量
- 使用 `EXPO_PUBLIC_` 前缀（Expo 构建时内联）
- 通过 `process.env.EXPO_PUBLIC_*` 访问
- 必须在 `.env.example` 中提供说明

### 认证与授权
- 密码处理依赖 Supabase Auth（HTTPS + bcrypt）
- 客户端不实现自定义加密
- 使用 Row Level Security (RLS) 保护数据

---

## 🧪 测试要求

### 代码变更
- 修改核心逻辑（`src/lib/`）需验证两种模式（本地/云端）
- 修改 UI 组件需检查 iOS/Android 一致性
- 修改类型定义需确保编译通过

### 验证命令
```bash
# 类型检查
npx tsc --noEmit

# Lint 检查
yarn lint

# 启动测试
yarn start
```

---

## 📦 依赖管理

### 添加依赖
```bash
yarn add <package>          # 生产依赖
yarn add -D <package>       # 开发依赖
```

### 版本约束
- Expo SDK 57 兼容的包版本
- 优先使用 Expo 官方包（`expo-*`）
- 避免引入需要原生模块的包（除非必要）

### 更新依赖
- 使用 `npx expo install --fix` 修复版本不兼容
- 不随意升级 Expo SDK 大版本

---

## 🚫 禁止行为

1. **直接修改** `node_modules/` 或 `yarn.lock`（手动）
2. **删除** `.gitignore` 中的忽略规则
3. **提交** 编译产物（`dist/`、`build/`、`ios/`、`android/`）
4. **硬编码** 环境特定的 URL 或配置
5. **绕过** TypeScript 类型检查（`@ts-ignore` 需要注释说明）
6. **引入** 未审查的第三方服务

---

## ✅ 操作检查清单

在执行以下操作前，必须确认：

### 修改代码
- [ ] 阅读相关文件和上下文
- [ ] 确认符合现有代码风格
- [ ] 验证 TypeScript 编译通过
- [ ] 检查是否影响两种运行模式

### 提交代码
- [ ] 检查 `git status`，确认暂存区内容
- [ ] 确认无敏感信息泄露
- [ ] 使用规范的 commit message
- [ ] 确认 `.gitignore` 正确配置

### 推送代码
- [ ] 确认本地测试通过
- [ ] 确认 commit 历史清晰
- [ ] 确认远程分支状态

---

## 📚 参考资源

- [Expo SDK 57 文档](https://docs.expo.dev/versions/v57.0.0/)
- [React Native 文档](https://reactnative.dev/docs/getting-started)
- [Supabase 文档](https://supabase.com/docs)
- [TypeScript 文档](https://www.typescriptlang.org/docs/)
- [FSRS 算法](https://github.com/open-spaced-repetition/ts-fsrs)

---

*最后更新：2026-08-14*
