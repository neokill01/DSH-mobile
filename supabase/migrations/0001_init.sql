-- 词记 WordNest · 数据库初始化（与 docs/PRD.md 第 4 节一致）
-- 在 Supabase SQL Editor 中整体执行；RLS 已启用。

-- ============ 1. profiles：用户资料（注册时由触发器自动建行） ============
create table public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  username text,
  daily_goal_new int not null default 20,
  daily_goal_review int not null default 100,
  preferred_book_id uuid,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
alter table public.profiles enable row level security;
create policy "own_profile" on public.profiles
  for all using (auth.uid() = id) with check (auth.uid() = id);

-- ============ 2. word_books：词书（owner_id 为空 = 官方内置） ============
create table public.word_books (
  id uuid primary key default gen_random_uuid(),
  owner_id uuid references auth.users(id) on delete cascade,
  title text not null,
  description text,
  level text not null default 'CUSTOM',  -- CET4/CET6/KAOYAN/IELTS/TOEFL/GRE/CUSTOM
  is_builtin boolean not null default false,
  word_count int not null default 0,
  created_at timestamptz not null default now()
);
alter table public.word_books enable row level security;
create policy "read_word_books" on public.word_books
  for select using (is_builtin or owner_id = auth.uid());
create policy "own_word_books" on public.word_books
  for insert with check (owner_id = auth.uid());
create policy "manage_word_books" on public.word_books
  for update using (owner_id = auth.uid()) with check (owner_id = auth.uid());

-- ============ 3. words：词条 ============
create table public.words (
  id uuid primary key default gen_random_uuid(),
  spelling text not null unique,
  phonetic text,
  pos text,
  definitions jsonb not null default '[]',
  level text,
  is_builtin boolean not null default false,
  created_by uuid references auth.users(id),
  created_at timestamptz not null default now()
);
alter table public.words enable row level security;
create policy "read_words" on public.words
  for select using (is_builtin or created_by = auth.uid());
create policy "own_words" on public.words
  for insert with check (created_by = auth.uid());

-- ============ 4. word_book_items：词书 ↔ 词条 ============
create table public.word_book_items (
  book_id uuid not null references public.word_books(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  sort_order int not null default 0,
  primary key (book_id, word_id)
);
alter table public.word_book_items enable row level security;
create policy "read_book_items" on public.word_book_items
  for select using (
    exists (select 1 from public.word_books b where b.id = book_id and (b.is_builtin or b.owner_id = auth.uid()))
  );
create policy "write_book_items" on public.word_book_items
  for insert with check (
    exists (select 1 from public.word_books b where b.id = book_id and b.owner_id = auth.uid())
  );

-- ============ 5. user_words：用户学习进度（★核心表，与 FSRS Card 字段对齐） ============
create table public.user_words (
  user_id uuid not null references auth.users(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  book_id uuid not null references public.word_books(id) on delete cascade,
  state smallint not null default 0,      -- 0=New 1=Learning 2=Review 3=Relearning
  due timestamptz not null default now(),
  learning_steps smallint not null default 0,  -- Learning 阶段步骤索引
  stability real not null default 0,
  difficulty real not null default 0,
  elapsed_days int not null default 0,
  scheduled_days int not null default 0,
  reps int not null default 0,
  lapses int not null default 0,
  last_review timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (user_id, word_id, book_id)
);
create index idx_user_words_due on public.user_words (user_id, due);
create index idx_user_words_state on public.user_words (user_id, state);
alter table public.user_words enable row level security;
create policy "own_user_words" on public.user_words
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 6. review_logs：复习流水（append-only） ============
create table public.review_logs (
  id bigint generated always as identity primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  word_id uuid not null references public.words(id) on delete cascade,
  book_id uuid not null references public.word_books(id) on delete cascade,
  rating smallint not null,               -- 0=Again 1=Hard 2=Good 3=Easy
  reviewed_at timestamptz not null default now(),
  interval_days int,
  stability real,
  difficulty real,
  client_ts timestamptz not null
);
create index idx_review_logs_user_time on public.review_logs (user_id, reviewed_at);
alter table public.review_logs enable row level security;
create policy "own_review_logs" on public.review_logs
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 7. achievements / user_achievements：成就 ============
create table public.achievements (
  id uuid primary key default gen_random_uuid(),
  code text unique not null,
  title text not null,
  description text,
  icon text
);
alter table public.achievements enable row level security;
create policy "read_achievements" on public.achievements for select using (true);

create table public.user_achievements (
  user_id uuid not null references auth.users(id) on delete cascade,
  achievement_id uuid not null references public.achievements(id) on delete cascade,
  unlocked_at timestamptz not null default now(),
  primary key (user_id, achievement_id)
);
alter table public.user_achievements enable row level security;
create policy "own_user_achievements" on public.user_achievements
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 8. ai_contents：AI 生成缓存（同词同类型只生成一次） ============
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
alter table public.ai_contents enable row level security;
create policy "read_ai_contents" on public.ai_contents for select using (true);
create policy "insert_ai_contents" on public.ai_contents
  for insert with check (auth.role() = 'authenticated');

-- ============ 9. ai_feedback：AI 内容反馈 ============
create table public.ai_feedback (
  id bigint generated always as identity primary key,
  user_id uuid references auth.users(id) on delete cascade,
  content_id uuid not null references public.ai_contents(id) on delete cascade,
  rating smallint not null,   -- -1 / 1
  created_at timestamptz not null default now()
);
alter table public.ai_feedback enable row level security;
create policy "own_ai_feedback" on public.ai_feedback
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- ============ 10. 触发器：注册自动建 profile ============
create or replace function public.handle_new_user()
returns trigger language plpgsql security definer as $$
begin
  insert into public.profiles (id, username)
  values (
    new.id,
    coalesce(new.raw_user_meta_data->>'username', split_part(new.email, '@', 1))
  );
  return new;
end $$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();
