# 英语记单词 App · 产品需求文档（PRD）

> 工作名：**词记 WordNest**（占位名，可随时改）
> 版本：v0.1（MVP 规划）
> 平台：iOS + Android（React Native + Expo 跨端一套代码）
> 目标周期：3 个月交付双端上架

---

## 1. 产品概述

### 1.1 一句话定位
一款基于**间隔重复算法（FSRS）**的英语单词记忆 App，内置分级词书、支持自定义词库导入，通过游戏化打卡与 AI 生成例句/助记，帮助用户科学、高效、有动力地背单词。

### 1.2 核心价值
| 用户痛点 | 产品解法 |
|---|---|
| 背了忘、忘了背，没有科学复习节奏 | FSRS 间隔重复算法自动排期，只复习"该复习的" |
| 坚持不下来 | 打卡、连击、成就、每日目标 |
| 死记硬背无语境 | AI 生成语境例句、词根词缀拆解、助记联想 |
| 现成词书不匹配需求 | 内置分级词书 + CSV 导入自定义词书 |
| 学没学、学了多少心里没数 | 学习统计：进度曲线、热力图、复习率 |

### 1.3 目标用户
- 大学生 / 考研、四六级备考人群（主用户群）
- 有出国计划、备考雅思托福的人群
- 工作后想保持/提升英语的自学者

### 1.4 竞品参照
墨墨背单词、不背单词、Anki、百词斩、欧路词典。差异化点：**FSRS 算法（比传统艾宾浩斯更准）+ AI 原生内容生成 + 干净无广告的付费模式**。

---

## 2. 功能需求

优先级：**P0**（MVP 必须）/ **P1**（MVP 应该，可延后到 V1.x）/ **P2**（后续版本）

### 2.1 账号体系（P0）
- 邮箱 + 密码注册/登录（Supabase Auth 内置）
- 会话保持（本地持久化 token）、登出
- 个人资料：昵称、每日目标（新词数、复习数）、默认词书
- P1：第三方登录（Google/Apple）、忘记密码邮件

### 2.2 背单词核心（P0）
- 词卡学习流：新词学习（正面：单词/音标/发音，背面：释义/例句）→ 复习（4 档自评：忘记/模糊/记得/轻松）
- **FSRS 间隔重复排期**（见第 5 节），复习队列按"到期时间"排序
- 学习模式：英→中、中→英、听音辨义（TTS）、拼写（P1）
- 发音：离线词库 TTS（expo-speech）优先，联网可用更高质量音源（P1）
- 支持"稍后复习/标记已掌握/移出词书"

### 2.3 词库管理（P0）
- 内置词书：CET-4、CET-6、考研、雅思、托福、GRE（按词频分级）
- 选择/切换词书，一词可属于多本词书
- **CSV 导入/导出自定义词书**（列：单词,音标,词性,释义,例句）
- P1：云端词书搜索、分享词书链接、批量选词（按词频/字母/随机抽词）

### 2.4 游戏化（P0 精简版）
- 每日打卡（连续天数）、每日目标完成度
- 经验值 + 等级、成就徽章（首日打卡 / 连续 7 天 / 累计 100 / 500 / 1000 词…）
- P1：补卡（花钱/看激励视频）、排行榜（好友榜、全国榜）
- P2：PK 对战、单词对战游戏（消消乐/猜词竞速）

### 2.5 学习统计（P0）
- 今日概览：新学数、复习数、目标进度环
- 学习曲线：近 7/30 天每日学习量
- **热力图**（GitHub 风格年视图）
- 词书完成度、已掌握词数、复习及时率
- 数据来源：全部由 `review_logs` 聚合，无额外埋点

### 2.6 AI 功能（P1，MVP 后期）
- AI 生成（按词条缓存，非实时流式）：语境例句、词根词缀拆解、近反义词、助记联想
- 生成队列：用户触发或后台批量预生成，**结果缓存进 `ai_contents`，同一词条不重复生成**
- 用户可对 AI 内容点赞/点踩，形成质量反馈闭环
- 技术：Supabase Edge Function → DeepSeek API，批量 prompt（每批 20~50 词），成本极低
- P2：AI 生成长文语境段落、"AI 出题"（选词填空/匹配）

### 2.7 离线与同步（P0）
- **本地优先**：SRS 排期、复习操作完全在本地执行（AsyncStorage），无网络也能背
- 联网后增量同步：复习记录（append-only）上传，进度（user_words）双向合并（last-write-wins by updated_at）
- 词书数据：内置词书随 App 打包；用户自定义词书按需拉取

---

## 3. 技术架构

### 3.1 总览

```
┌──────────────────────────────────────────────┐
│ React Native (Expo) 客户端                     │
│ ┌───────────┐ ┌──────────┐ ┌───────────────┐ │
│ │ 背单词引擎 │ │ 游戏化模块 │ │ 统计报表        │ │
│ │ FSRS 本地  │ └──────────┘ └───────────────┘ │
│ └───────────┘ ┌──────────┐ ┌───────────────┐ │
│ ┌───────────┐ │ 词库管理  │ │ AI 内容展示/反馈 │ │
│ │ 本地缓存    │ └──────────┘ └───────────────┘ │
│ │ AsyncStorage│                               │
│ └───────────┘                                 │
└──────────────┬───────────────────────────────┘
               │ 增量同步（联网时）
┌──────────────▼───────────────────────────────┐
│ Supabase：Postgres + Auth + RLS + Storage     │
│ Edge Functions：AI 批量生成 / CSV 导入         │
└──────────────┬───────────────────────────────┘
               │ HTTPS
┌──────────────▼───────────────────────────────┐
│ DeepSeek API（AI 例句/释义/助记生成）           │
└──────────────────────────────────────────────┘
```

### 3.2 技术选型

| 层 | 选型 | 说明 |
|---|---|---|
| 跨端框架 | React Native + **Expo**（SDK 52+，expo-router） | 一套代码双端；EAS Build 云构建上架 |
| 后端 BaaS | **Supabase** | Postgres + Auth + RLS + Storage + Edge Functions，免费额度够 MVP |
| 本地存储 | @react-native-async-storage/async-storage | 离线队列 + 会话 token（上架前升级 expo-secure-store 存 token） |
| SRS 算法 | **ts-fsrs**（FSRS-4.5 官方 TS 实现） | Anki 同款算法，开源，纯 TS 无原生依赖 |
| AI | DeepSeek API（deepseek-chat） | 质量/价格比最优 |
| 导航 | expo-router（文件路由） | 官方推荐，类型安全 |
| 图表 | victory-native 或 react-native-svg 自绘 | 统计页 |
| TTS | expo-speech | 发音 |

### 3.3 目录结构（mobile/）

```
mobile/
├── app/                     # expo-router 路由
│   ├── _layout.tsx          # 根布局：AuthProvider + 路由守卫
│   ├── (auth)/              # 未登录分组
│   │   ├── login.tsx
│   │   └── register.tsx
│   ├── (tabs)/              # 已登录主界面
│   │   ├── _layout.tsx      # 底部 Tab：学习 / 统计 / 我的
│   │   ├── index.tsx        # 学习首页（选词书 + 今日任务 + 开始复习）
│   │   ├── stats.tsx        # 统计
│   │   └── profile.tsx      # 我的（目标设置、成就、词书管理入口）
│   └── review.tsx           # 单词卡复习页（全屏）
├── src/
│   ├── lib/
│   │   ├── supabase.ts      # Supabase 客户端（env 配置检测）
│   │   ├── auth.tsx         # AuthProvider（会话状态）
│   │   ├── repository.ts    # WordRepository 接口 + 工厂
│   │   ├── localRepository.ts  # 本地模式实现（演示词书 + AsyncStorage + FSRS）
│   │   ├── supabaseRepository.ts # 云端实现（Supabase 表）
│   │   └── fsrs.ts          # ts-fsrs 封装（卡片序列化）
│   ├── components/
│   │   ├── WordCard.tsx     # 词卡翻转组件
│   │   └── RatingBar.tsx    # 忘记/模糊/记得/轻松 四档按钮
│   ├── constants/
│   │   └── demoBooks.ts     # 演示词书（本地模式开箱即用）
│   └── types/
│       └── database.ts      # 数据库类型（手写，对应第 4 节 schema）
├── .env.example             # EXPO_PUBLIC_SUPABASE_URL / ANON_KEY
└── app.json
```

### 3.4 环境模式设计（重要）
**本地演示模式 / 云端模式双模运行**：
- 未配置 `EXPO_PUBLIC_SUPABASE_URL` → 本地模式：内置演示词书 + AsyncStorage 持久化 + FSRS 全流程可用，**开箱即跑，便于先体验产品**。
- 配置了 Supabase 环境变量 → 云端模式：登录 + 数据落库 + 同步。
- 通过 `src/lib/repository.ts` 的工厂函数切换，业务代码无感知（依赖注入）。

---

## 4. 数据模型（PostgreSQL / Supabase）

> 所有表均开启 **RLS（行级安全）**，原则：用户只能读写自己的行；内置词书（is_builtin）所有人可读。

```sql
-- 1. profiles：用户资料（Auth 用户创建时由触发器自动建行）
create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  username text,
  daily_goal_new int not null default 20,      -- 每日新词目标
  daily_goal_review int not null default 100,  -- 每日复习目标
  preferred_book_id uuid references public.word_books(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- 2. word_books：词书（owner_id 为空 = 官方内置）
create table public.word_books (
  id uuid primary key default gen_random_uuid(),
  owner_id uuid references auth.users(id) on delete cascade,
  title text not null,
  description text,
  level text,                          -- CET4/CET6/KAOYAN/IELTS/TOEFL/GRE/CUSTOM
  is_builtin boolean not null default false,
  word_count int not null default 0,
  created_at timestamptz not null default now()
);

-- 3. words：词条（全局词库，内置 + 用户自建）
create table public.words (
  id uuid primary key default gen_random_uuid(),
  spelling text not null unique,
  phonetic text,                       -- 音标
  pos text,                            -- 词性：noun/verb/adj/adv/...
  definitions jsonb not null default '[]',
  -- [{"pos":"n.","meaning":"能力；才能","example":"She has a gift for music."}]
  level text,
  created_by uuid references auth.users(id),
  created_at timestamptz not null default now()
);

-- 4. word_book_items：词书 ↔ 词条 多对多
create table public.word_book_items (
  book_id uuid not null references public.word_books(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  sort_order int not null default 0,
  primary key (book_id, word_id)
);

-- 5. user_words：用户学习进度（★核心表，字段与 FSRS Card 对齐）
create table public.user_words (
  user_id uuid not null references auth.users(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  book_id uuid not null references public.word_books(id) on delete cascade,
  state smallint not null default 0,      -- 0=New 1=Learning 2=Review 3=Relearning
  due timestamptz not null default now(), -- 下次到期时间
  learning_steps smallint not null default 0, -- Learning 阶段步骤索引
  stability real not null default 0,      -- FSRS 稳定性 S
  difficulty real not null default 0,     -- FSRS 难度 D
  elapsed_days int not null default 0,    -- 距上次复习天数
  scheduled_days int not null default 0,  -- 本次排期天数
  reps int not null default 0,            -- 总复习次数
  lapses int not null default 0,          -- 遗忘次数
  last_review timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (user_id, word_id, book_id)
);
create index idx_user_words_due   on public.user_words (user_id, due);
create index idx_user_words_state on public.user_words (user_id, state);

-- 6. review_logs：复习流水（统计 + 算法快照 + 同步基础）
create table public.review_logs (
  id bigint generated always as identity primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  book_id uuid not null references public.word_books(id) on delete cascade,
  rating smallint not null,               -- 0=Again 1=Hard 2=Good 3=Easy
  reviewed_at timestamptz not null default now(),
  interval_days int,                      -- 排到的间隔（天）
  stability real,                         -- 打分后 S 快照
  difficulty real,                        -- 打分后 D 快照
  client_ts timestamptz not null          -- 客户端时间（离线补传用）
);
create index idx_review_logs_user_time on public.review_logs (user_id, reviewed_at);

-- 7. achievements / user_achievements：成就
create table public.achievements (
  id uuid primary key default gen_random_uuid(),
  code text unique not null,   -- first_day / streak_7 / words_100 ...
  title text not null,
  description text,
  icon text
);
create table public.user_achievements (
  user_id uuid not null references auth.users(id) on delete cascade,
  achievement_id uuid not null references public.achievements(id) on delete cascade,
  unlocked_at timestamptz not null default now(),
  primary key (user_id, achievement_id)
);

-- 8. ai_contents：AI 生成缓存（同一词条同类型只生成一次）
create table public.ai_contents (
  id uuid primary key default gen_random_uuid(),
  word_id uuid not null references public.words(id) on delete cascade,
  kind text not null,          -- example / mnemonic / root_affix / syn_ant
  content jsonb not null,
  model text not null default 'deepseek-chat',
  quality smallint not null default 0,  -- -1 差 / 0 无反馈 / 1 好
  created_at timestamptz not null default now(),
  unique (word_id, kind)
);

-- 9. ai_feedback：AI 内容反馈流水（质量闭环）
create table public.ai_feedback (
  id bigint generated always as identity primary key,
  user_id uuid references auth.users(id) on delete cascade,
  content_id uuid not null references public.ai_contents(id) on delete cascade,
  rating smallint not null,   -- -1 / 1
  created_at timestamptz not null default now()
);

-- 10. 触发器：注册自动建 profile
create or replace function public.handle_new_user()
returns trigger language plpgsql security definer as $$
begin
  insert into public.profiles (id, username)
  values (new.id, coalesce(new.raw_user_meta_data->>'username', split_part(new.email,'@',1)));
  return new;
end $$;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();
```

### 4.1 RLS 策略要点（示例）

```sql
-- user_words：只能操作自己的行
alter table public.user_words enable row level security;
create policy "own_words" on public.user_words
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- words / word_books：内置词书所有人可读，自建词书仅本人
alter table public.words enable row level security;
create policy "read_builtin" on public.words
  for select using (is_builtin or created_by = auth.uid());

-- review_logs：只能读写自己的流水（append-only，禁止 update/delete）
alter table public.review_logs enable row level security;
create policy "own_logs" on public.review_logs
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);
```

---

## 5. 间隔重复算法：FSRS 说明

### 5.1 为什么不用传统艾宾浩斯/SM-2
传统 SM-2 只根据"对/错"调整间隔，且间隔是固定的 1/6/15 天等比数列，**对每个人的记忆差异不敏感**。FSRS（Free Spaced Repetition Scheduler，Anki 2023 年起内置的默认算法）用**可学习的三维参数模型**刻画每张卡：

| 参数 | 含义 | 直观理解 |
|---|---|---|
| **S (Stability)** | 记忆稳定性 | 这张卡能保持多久不忘（单位：天） |
| **D (Difficulty)** | 卡片难度 | 0~10，越难越接近 10 |
| **R (Retrievability)** | 回忆概率 | 当前时刻能回忆起来的概率 |
| **DR (Desired Retention)** | 目标保持率 | 产品设定（默认 0.9，即到期时 90% 概率还记得） |

核心公式（FSRS-4.5）：

```
R(t, S) = (1 + FACTOR · t / S)^DECAY        # 回忆概率随时间衰减
下一次间隔 interval = S' · ln(DR) / ln(FACTOR)   # 由目标保持率反推
S' 与 D' 由 4 档打分（Again/Hard/Good/Easy）和 10+ 个全局参数 w0..w13 更新
```

**对产品的好处**：每个用户、每个词条都有自己的 S/D 轨迹；你设定"到期时 90% 记得住"，算法就自动算出每个人的复习间隔，**学得快的间隔长、学得慢的间隔短**，复习效率显著高于固定间隔。

### 5.2 客户端集成方式
- 使用官方 TS 实现 **`ts-fsrs`**（open-spaced-repetition 项目，与 Anki 同源），纯 JS 无原生依赖，可直接在 RN 中运行。
- **决策：SRS 计算放客户端**（本地优先架构），理由：
  1. 离线也能复习排期；
  2. 避免每次打分都等网络；
  3. 打分是纯函数（输入 card + rating + now → 输出新 card），天然可测。
- 客户端计算后：更新 `user_words` 行（最新状态）+ 追加 `review_logs`（带打分前/后快照，用于日后换算法参数可回溯重算）。
- **参数训练（P1+）**：FSRS 支持用历史 review_logs 训练个人参数 w0..w13（`fsrs-optimizer`），提升到一定复习量（约 1000 条）后在服务端定时训练下发。

### 5.3 四档打分定义（产品文案）
| Rating | 值 | 用户语义 | 算法效果 |
|---|---|---|---|
| 忘记 Again | 0 | 完全没想起来 | S 大幅下降，D 上升，短期重排（如 1-10 分钟） |
| 模糊 Hard | 1 | 想起来了但很勉强 | S 小幅增长，间隔较短 |
| 记得 Good | 2 | 正常回忆 | S 按期望增长 |
| 轻松 Easy | 3 | 秒答、很熟 | S 大幅增长，间隔最长 |

---

## 6. 后端 API 设计

### 6.1 原则
- **RLS-first**：绝大多数读写走 Supabase 客户端 SDK 直接查表（Auth + RLS 已保证权限），**不写 REST 层**。
- Edge Functions 只承载 3 类逻辑：AI 生成、CSV 导入、内置词书下发。

### 6.2 接口清单

| 接口 | 方式 | 说明 | 实现 |
|---|---|---|---|
| 注册/登录/登出/改密 | 内置 | Supabase Auth（email+password） | SDK |
| 查询到期复习队列 | 客户端直查 | `user_words where user_id=? and due<=now()` | SDK + RLS |
| 提交一次复习 | 客户端直查 | 事务：update user_words + insert review_logs | SDK |
| 拉取内置词书 | 客户端直查 | `word_books is_builtin` + 词条 | SDK（也可随包） |
| `generate-ai-contents` | POST | 批量生成例句/助记，结果写 ai_contents，幂等（已存在跳过） | **Edge Function → DeepSeek** |
| `feedback-ai-content` | POST | 点赞/点踩 → ai_feedback + 更新 quality | Edge Function |
| `import-wordbook` | POST multipart | 解析 CSV（utf-8/bom）→ 建词书 + 词条 | Edge Function |
| `export-wordbook` | GET | 导出 CSV | Edge Function |
| `train-fsrs-params` | 定时（P1+） | 聚合 review_logs 训练 w 参数 | pg_cron / 独立 job |

### 6.3 AI Edge Function 伪代码

```ts
// supabase/functions/generate-ai-contents/index.ts
Deno.serve(async (req) => {
  const { wordIds, kinds } = await req.json();   // 每批 ≤ 50
  // 1. 过滤已有缓存（ai_contents 幂等）
  // 2. 取词条 → 组装批量 prompt（JSON 输出约束）
  // 3. 调 DeepSeek chat completions（max_tokens 适中，temperature 0.7）
  // 4. 解析 JSON → upsert ai_contents
  // 5. 失败重试 1 次，最终失败返回部分成功
});
```

Prompt 要点（以例句为例）：
```
你是英语教学专家。为以下单词各生成 1 个地道例句（词汇难度匹配该词水平），
输出严格 JSON 数组：[{"word":"ability","example":"...","translation":"..."}]
单词列表：...
```

**成本控制**：每词约 30~60 token，50 词/批 ≈ 3k token/批；DeepSeek 定价约 ¥1-2/百万输入 token，**1 万用户 × 1 万词 ≈ 几元人民币量级**，可忽略。

---

## 7. 里程碑计划（3 个月）

| 阶段 | 周期 | 内容 | 验收标准 |
|---|---|---|---|
| **M0 准备** | 第 1 周 | 账号注册（Apple ¥688/年 + Google $25）、**启动软著申请**、**域名 + ICP 备案流程启动**、Supabase 项目初始化 | 备案材料已提交，软著已受理 |
| **M1 核心闭环** | 第 2-5 周 | 项目骨架、登录注册、词卡复习（FSRS 本地跑通）、内置词书（1 本先跑通全链路）、本地模式 | 双端跑通"选词书→学新词→到期复习→统计有数" |
| **M2 体验完整** | 第 6-9 周 | 数据同步（离线补传）、打卡/成就、统计页（曲线+热力图）、CSV 导入、UI 打磨 | 断网背单词→联网自动同步；日常使用无崩溃 |
| **M3 AI + 上架** | 第 10-13 周 | AI 生成流水线、隐私政策页、测试（真机 + 自动化冒烟）、商店素材、提审 | App Store / Google Play 过审 |
| V1.1+ | 后续 | 排行榜、第三方登录、FSRS 参数训练、听写模式、词书分享 | — |

---

## 8. 合规与上架（中国开发者）

| 事项 | 说明 | 周期 | 成本 |
|---|---|---|---|
| Apple 开发者账号 | 上架必须 | 即时 | ¥688/年 |
| Google Play 账号 | 一次性 | 即时 | $25 |
| **软件著作权** | 国内应用商店/部分审核必需；自行申请 30-60 工作日，建议 M0 启动 | 1-2 月（并行） | ¥0-800 |
| **ICP 备案** | 中国区 App 上架必备备案号，需境内服务器/域名；Supabase 无法备案，用独立域名指向自建轻量转发或备案域名 | 1-4 周 | ¥0-100 |
| 隐私政策 | 含账号、AI、统计分析，必须 | — | ¥0 |
| **AI 生成内容标识** | 依《生成式人工智能服务管理暂行办法》，AI 内容需显著标识（页面上标"AI 生成"）+ 用户反馈入口 | — | ¥0 |
| 苹果审核演示账号 | 提供可登录的测试账号 | — | ¥0 |
| 年龄分级 | 教育类通常 4+ | — | ¥0 |

**首年成本估算**：¥1,000~2,000（账号 + 软著加急 + 域名）+ Supabase 免费版（超量后 Pro $25/月）+ DeepSeek API（量级极小）。

---

## 9. 风险与对策

| 风险 | 等级 | 对策 |
|---|---|---|
| 备案/软著周期不可控，卡上架 | 高 | **M0 就启动**，与开发并行；先上 Google Play 验证，中国区后补 |
| FSRS 参数不合理 → 复习体验差 | 中 | 用 ts-fsrs 官方默认参数起步；review_logs 快照保底可回算；后期训练个人参数 |
| AI 成本/滥用失控 | 中 | 缓存幂等 + 每日限额 + 批量流水线；质量反馈数据反哺 prompt |
| 离线同步冲突 | 中 | review_logs 只增不改；user_words 用 updated_at 后写胜；客户端时间戳统一 UTC |
| 苹果审核被拒（AI 功能） | 中 | 注明 AI 生成机制 + 标识 + 反馈入口 + 内容审核兜底 |
| Expo 云构建排队/失败 | 低 | 本地配好环境可随时 EAS local build 兜底 |
| 单人 3 个月全功能超负荷 | 高 | 严守 P0 优先级；排行榜、AI 生成放 P1/P2，先上核心 |

---

## 10. 验收标准（MVP 定义完成）

1. iOS + Android 双端可安装运行，注册登录流畅
2. 任一内置词书完成"新词 → 到期复习"闭环，间隔由 FSRS 计算且合理
3. 断网可背单词，联网后复习记录自动同步不丢失
4. 打卡连续计算正确、至少 5 个成就可解锁
5. 统计页展示今日/7 日/热力图，数据与操作一致
6. CSV 导入一本自定义词书并可用
7. AI 例句生成可用，带"AI 生成"标识与反馈按钮，同词不重复生成
8. 通过 App Store / Google Play 审核
