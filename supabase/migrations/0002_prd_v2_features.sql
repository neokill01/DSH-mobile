-- 词记 WordNest · PRD v2.0 新增功能数据表
-- 词汇量测评、体验课、课程体系、错词池、设备管理

-- ============ 1. assessments：词汇量测评记录 ============
create table public.assessments (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  status text not null default 'in_progress',  -- not_started / in_progress / completed
  band smallint,                -- Band 等级 0~6
  vocabulary_estimate int,      -- 词汇量估计值
  ci_lower int,                 -- 置信区间下限
  ci_upper int,                 -- 置信区间上限
  sem real,                     -- 测量标准误差
  total_questions int not null default 0,
  correct_count int not null default 0,
  accuracy real,                -- 正确率
  recommended_level text,       -- 推荐课程等级 CET4/CET6/KAOYAN
  started_at timestamptz not null default now(),
  completed_at timestamptz,
  created_at timestamptz not null default now()
);
create index idx_assessments_user on public.assessments (user_id, created_at desc);
alter table public.assessments enable row level security;
create policy "own_assessments" on public.assessments
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 2. assessment_questions：测评题目配置 ============
create table public.assessment_questions (
  id uuid primary key default gen_random_uuid(),
  type text not null,           -- real_word / pseudo_word
  word text not null,           -- 题干单词
  options jsonb not null,       -- 选项数组 ["选项1", "选项2", "选项3", "选项4"]
  correct_index smallint not null, -- 正确答案索引
  difficulty real not null default 0.5, -- 题目难度 0~1
  is_active boolean not null default true,
  created_at timestamptz not null default now()
);
alter table public.assessment_questions enable row level security;
create policy "read_questions" on public.assessment_questions for select using (is_active);

-- ============ 3. assessment_answers：测评答题记录 ============
create table public.assessment_answers (
  id bigint generated always as identity primary key,
  assessment_id uuid not null references public.assessments(id) on delete cascade,
  question_id uuid not null references public.assessment_questions(id),
  selected_index smallint not null,
  is_correct boolean not null,
  answered_at timestamptz not null default now()
);
create index idx_assessment_answers on public.assessment_answers (assessment_id);
alter table public.assessment_answers enable row level security;
create policy "own_answers" on public.assessment_answers
  for all using (
    exists (select 1 from public.assessments a where a.id = assessment_id and a.user_id = auth.uid())
  );

-- ============ 4. experience_courses：体验课 ============
create table public.experience_courses (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  title text not null default '3天英语入门体验课',
  description text,
  total_days int not null default 3,
  total_words int not null default 100,
  status text not null default 'not_started', -- not_started / in_progress / completed / expired
  current_day smallint not null default 1,
  daily_progress jsonb not null default '[]',  -- [{day:1, wordsLearned:0, wordsTotal:35, completed:false}]
  started_at timestamptz,
  expires_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create unique index idx_experience_user on public.experience_courses (user_id) where status != 'expired';
alter table public.experience_courses enable row level security;
create policy "own_experience" on public.experience_courses
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 5. experience_words：体验课每日词汇 ============
create table public.experience_words (
  id uuid primary key default gen_random_uuid(),
  course_id uuid not null references public.experience_courses(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  day smallint not null,        -- 第几天 1/2/3
  sort_order int not null default 0
);
create index idx_exp_words_course on public.experience_words (course_id, day);
alter table public.experience_words enable row level security;
create policy "own_exp_words" on public.experience_words
  for all using (
    exists (select 1 from public.experience_courses c where c.id = course_id and c.user_id = auth.uid())
  );

-- ============ 6. courses：正式课程 ============
create table public.courses (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  level text not null,          -- CET4/CET6/KAOYAN/IELTS/TOEFL/GRE
  total_units int not null default 0,
  total_words int not null default 0,
  is_active boolean not null default true,
  created_at timestamptz not null default now()
);
alter table public.courses enable row level security;
create policy "read_courses" on public.courses for select using (is_active);

-- ============ 7. course_levels：课程等级 ============
create table public.course_levels (
  id uuid primary key default gen_random_uuid(),
  course_id uuid not null references public.courses(id) on delete cascade,
  level_number smallint not null,
  title text not null,
  description text,
  unit_count int not null default 0,
  word_count int not null default 0,
  prerequisite_level_id uuid references public.course_levels(id),
  created_at timestamptz not null default now()
);
create index idx_course_levels on public.course_levels (course_id, level_number);
alter table public.course_levels enable row level security;
create policy "read_levels" on public.course_levels for select using (true);

-- ============ 8. course_units：课程单元 ============
create table public.course_units (
  id uuid primary key default gen_random_uuid(),
  level_id uuid not null references public.course_levels(id) on delete cascade,
  unit_number smallint not null,
  title text not null,
  new_word_count int not null default 20,
  review_word_count int not null default 0,
  created_at timestamptz not null default now()
);
create index idx_course_units on public.course_units (level_id, unit_number);
alter table public.course_units enable row level security;
create policy "read_units" on public.course_units for select using (true);

-- ============ 9. course_unit_words：单元词汇关联 ============
create table public.course_unit_words (
  unit_id uuid not null references public.course_units(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  is_new boolean not null default true, -- true=新词 false=复习词
  sort_order int not null default 0,
  primary key (unit_id, word_id)
);
alter table public.course_unit_words enable row level security;
create policy "read_unit_words" on public.course_unit_words for select using (true);

-- ============ 10. user_course_progress：用户课程进度 ============
create table public.user_course_progress (
  user_id uuid not null references auth.users(id) on delete cascade,
  course_id uuid not null references public.courses(id) on delete cascade,
  level_id uuid references public.course_levels(id),
  unit_id uuid references public.course_units(id),
  status text not null default 'locked', -- locked / active / completed
  started_at timestamptz,
  completed_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (user_id, course_id)
);
alter table public.user_course_progress enable row level security;
create policy "own_progress" on public.user_course_progress
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 11. wrong_words：错词池 ============
create table public.wrong_words (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  first_wrong_at timestamptz not null default now(),
  last_wrong_at timestamptz not null default now(),
  wrong_count int not null default 1,
  status text not null default 'new', -- new / learning / mastered / removed
  ai_analysis text,            -- AI 解析缓存
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (user_id, word_id)
);
create index idx_wrong_words_user on public.wrong_words (user_id, status);
alter table public.wrong_words enable row level security;
create policy "own_wrong_words" on public.wrong_words
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 12. devices：设备管理 ============
create table public.devices (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  name text not null,
  model text,
  os text,
  device_id text,              -- 设备唯一标识
  last_active_at timestamptz not null default now(),
  is_current boolean not null default false,
  created_at timestamptz not null default now()
);
create index idx_devices_user on public.devices (user_id);
alter table public.devices enable row level security;
create policy "own_devices" on public.devices
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 索引优化 ============
-- 测评相关索引已创建
-- 错词池状态筛选索引已创建
-- 设备管理用户筛选索引已创建

-- ============ 触发器：自动更新 updated_at ============
create or replace function public.update_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end $$;

drop trigger if exists update_experience_updated_at on public.experience_courses;
create trigger update_experience_updated_at
  before update on public.experience_courses
  for each row execute function public.update_updated_at();

drop trigger if exists update_wrong_words_updated_at on public.wrong_words;
create trigger update_wrong_words_updated_at
  before update on public.wrong_words
  for each row execute function public.update_updated_at();

drop trigger if exists update_course_progress_updated_at on public.user_course_progress;
create trigger update_course_progress_updated_at
  before update on public.user_course_progress
  for each row execute function public.update_updated_at();
