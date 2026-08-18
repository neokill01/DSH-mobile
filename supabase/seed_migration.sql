-- Seed data migration
-- Generated: 2026-08-15T01:42:19.838Z
-- Run this in Supabase SQL Editor

BEGIN;

INSERT INTO word_books (id, title, description, level, is_builtin, word_count) VALUES
  ('a0000000-0000-0000-0000-000000000001', '大学英语四级核心词汇', 'College English Test Band 4 core vocabulary', 'CET4', true, 300)
;

INSERT INTO word_books (id, title, description, level, is_builtin, word_count) VALUES
  ('a0000000-0000-0000-0000-000000000002', '大学英语六级核心词汇', 'College English Test Band 6 core vocabulary', 'CET6', true, 299)
;

INSERT INTO word_books (id, title, description, level, is_builtin, word_count) VALUES
  ('a0000000-0000-0000-0000-000000000003', '考研英语核心词汇', 'Graduate entrance exam English core vocabulary', 'KAOYAN', true, 300)
;

INSERT INTO word_books (id, title, description, level, is_builtin, word_count) VALUES
  ('a0000000-0000-0000-0000-000000000004', '雅思核心词汇', 'IELTS core vocabulary', 'IELTS', true, 300)
;

INSERT INTO word_books (id, title, description, level, is_builtin, word_count) VALUES
  ('a0000000-0000-0000-0000-000000000005', '托福核心词汇', 'TOEFL core vocabulary', 'TOEFL', true, 300)
;

INSERT INTO word_books (id, title, description, level, is_builtin, word_count) VALUES
  ('a0000000-0000-0000-0000-000000000006', 'GRE 核心词汇', 'GRE core vocabulary', 'GRE', true, 299)
;


INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000000-ce14-0000-0000-000000000000', 'abandon', '/əˈbændən/', 'v.', '[{"pos": "v.", "meaning": "放弃；抛弃", "example": "They had to abandon the plan due to lack of funding.", "translation": "由于缺乏资金，他们不得不放弃这个计划。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000001-ce14-0000-0000-000000000000', 'ability', '/əˈbɪləti/', 'n.', '[{"pos": "n.", "meaning": "能力；才能", "example": "She has the ability to solve complex problems.", "translation": "她有解决复杂问题的能力。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000002-ce14-0000-0000-000000000000', 'absent', '/ˈæbsənt/', 'adj.', '[{"pos": "adj.", "meaning": "缺席的；不在的", "example": "He was absent from school yesterday.", "translation": "他昨天没来上学。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000003-ce14-0000-0000-000000000000', 'absorb', '/əbˈzɔːrb/', 'v.', '[{"pos": "v.", "meaning": "吸收；吸引", "example": "Plants absorb water through their roots.", "translation": "植物通过根部吸收水分。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000004-ce14-0000-0000-000000000000', 'abstract', '/ˈæbstrækt/', 'adj.', '[{"pos": "adj.", "meaning": "抽象的", "example": "The concept of beauty is abstract.", "translation": "美的概念是抽象的。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000005-ce14-0000-0000-000000000000', 'abundant', '/əˈbʌndənt/', 'adj.', '[{"pos": "adj.", "meaning": "丰富的；充裕的", "example": "The region has abundant natural resources.", "translation": "该地区拥有丰富的自然资源。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000006-ce14-0000-0000-000000000000', 'academic', '/ˌækəˈdemɪk/', 'adj.', '[{"pos": "adj.", "meaning": "学术的；学业的", "example": "His academic performance has improved significantly.", "translation": "他的学业成绩有了显著提高。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000007-ce14-0000-0000-000000000000', 'accelerate', '/əkˈseləreɪt/', 'v.', '[{"pos": "v.", "meaning": "加速；促进", "example": "The car accelerated quickly on the highway.", "translation": "汽车在高速公路上迅速加速。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000008-ce14-0000-0000-000000000000', 'accept', '/əkˈsept/', 'v.', '[{"pos": "v.", "meaning": "接受；承认", "example": "She accepted the job offer with pleasure.", "translation": "她愉快地接受了工作邀请。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000009-ce14-0000-0000-000000000000', 'access', '/ˈækses/', 'n.', '[{"pos": "n.", "meaning": "进入；通道；访问", "example": "Students have access to the library 24 hours a day.", "translation": "学生可以全天24小时使用图书馆。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000010-ce14-0000-0000-000000000000', 'accident', '/ˈæksɪdənt/', 'n.', '[{"pos": "n.", "meaning": "事故；意外", "example": "There was a serious car accident on the highway.", "translation": "高速公路上发生了一起严重的车祸。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000011-ce14-0000-0000-000000000000', 'accommodate', '/əˈkɒmədeɪt/', 'v.', '[{"pos": "v.", "meaning": "容纳；提供住宿", "example": "The hotel can accommodate up to 500 guests.", "translation": "这家酒店最多可容纳500位客人。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000012-ce14-0000-0000-000000000000', 'accompany', '/əˈkʌmpəni/', 'v.', '[{"pos": "v.", "meaning": "陪伴；伴随", "example": "She accompanied her friend to the hospital.", "translation": "她陪朋友去了医院。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000013-ce14-0000-0000-000000000000', 'accomplish', '/əˈkʌmplɪʃ/', 'v.', '[{"pos": "v.", "meaning": "完成；实现", "example": "He accomplished his goal of running a marathon.", "translation": "他完成了跑马拉松的目标。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000014-ce14-0000-0000-000000000000', 'account', '/əˈkaʊnt/', 'n.', '[{"pos": "n.", "meaning": "账户；描述", "example": "I need to open a bank account.", "translation": "我需要开一个银行账户。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000015-ce14-0000-0000-000000000000', 'accumulate', '/əˈkjuːmjəleɪt/', 'v.', '[{"pos": "v.", "meaning": "积累；积聚", "example": "Dust accumulates quickly on the shelves.", "translation": "架子上很快就积满了灰尘。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000016-ce14-0000-0000-000000000000', 'accurate', '/ˈækjərət/', 'adj.', '[{"pos": "adj.", "meaning": "精确的；准确的", "example": "The weather forecast was surprisingly accurate.", "translation": "天气预报出奇地准确。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000017-ce14-0000-0000-000000000000', 'accuse', '/əˈkjuːz/', 'v.', '[{"pos": "v.", "meaning": "指控；谴责", "example": "He was accused of stealing the money.", "translation": "他被指控偷了那笔钱。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000018-ce14-0000-0000-000000000000', 'achieve', '/əˈtʃiːv/', 'v.', '[{"pos": "v.", "meaning": "实现；达到", "example": "She achieved great success in her career.", "translation": "她在事业上取得了巨大成功。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000019-ce14-0000-0000-000000000000', 'acknowledge', '/əkˈnɒlɪdʒ/', 'v.', '[{"pos": "v.", "meaning": "承认；感谢", "example": "He acknowledged his mistake and apologized.", "translation": "他承认了自己的错误并道歉。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000020-ce14-0000-0000-000000000000', 'acquire', '/əˈkwaɪər/', 'v.', '[{"pos": "v.", "meaning": "获得；习得", "example": "She acquired a new skill through practice.", "translation": "她通过练习获得了一项新技能。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000021-ce14-0000-0000-000000000000', 'adapt', '/əˈdæpt/', 'v.', '[{"pos": "v.", "meaning": "适应；改编", "example": "It took him a while to adapt to the new environment.", "translation": "他花了一段时间才适应新环境。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000022-ce14-0000-0000-000000000000', 'adequate', '/ˈædɪkwət/', 'adj.', '[{"pos": "adj.", "meaning": "足够的；充分的", "example": "Make sure you get adequate sleep every night.", "translation": "确保每晚获得充足的睡眠。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000023-ce14-0000-0000-000000000000', 'adjust', '/əˈdʒʌst/', 'v.', '[{"pos": "v.", "meaning": "调整；适应", "example": "Please adjust the volume to a comfortable level.", "translation": "请把音量调到舒适的水平。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000024-ce14-0000-0000-000000000000', 'admire', '/ədˈmaɪər/', 'v.', '[{"pos": "v.", "meaning": "钦佩；欣赏", "example": "I admire her courage and determination.", "translation": "我钦佩她的勇气和决心。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000025-ce14-0000-0000-000000000000', 'admit', '/ədˈmɪt/', 'v.', '[{"pos": "v.", "meaning": "承认；准许进入", "example": "He admitted that he had made a mistake.", "translation": "他承认自己犯了一个错误。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000026-ce14-0000-0000-000000000000', 'adopt', '/əˈdɒpt/', 'v.', '[{"pos": "v.", "meaning": "采用；收养", "example": "The company decided to adopt a new strategy.", "translation": "公司决定采用新战略。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000027-ce14-0000-0000-000000000000', 'advance', '/ədˈvɑːns/', 'v.', '[{"pos": "v.", "meaning": "前进；推进", "example": "Technology continues to advance rapidly.", "translation": "科技继续快速发展。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000028-ce14-0000-0000-000000000000', 'advantage', '/ədˈvɑːntɪdʒ/', 'n.', '[{"pos": "n.", "meaning": "优势；有利条件", "example": "Being bilingual is a great advantage in today''s job market.", "translation": "在当今就业市场上，会两种语言是一个很大的优势。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000029-ce14-0000-0000-000000000000', 'advertise', '/ˈædvərtaɪz/', 'v.', '[{"pos": "v.", "meaning": "做广告；宣传", "example": "They advertise their products on social media.", "translation": "他们在社交媒体上宣传产品。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000030-ce14-0000-0000-000000000000', 'advice', '/ədˈvaɪs/', 'n.', '[{"pos": "n.", "meaning": "建议；忠告", "example": "She gave me some useful advice about studying.", "translation": "她给了我一些关于学习的有用建议。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000031-ce14-0000-0000-000000000000', 'advocate', '/ˈædvəkeɪt/', 'v.', '[{"pos": "v.", "meaning": "提倡；主张", "example": "Many scientists advocate for renewable energy.", "translation": "许多科学家提倡使用可再生能源。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000032-ce14-0000-0000-000000000000', 'affect', '/əˈfekt/', 'v.', '[{"pos": "v.", "meaning": "影响；感动", "example": "The weather can affect our mood.", "translation": "天气会影响我们的心情。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000033-ce14-0000-0000-000000000000', 'afford', '/əˈfɔːrd/', 'v.', '[{"pos": "v.", "meaning": "买得起；负担得起", "example": "I can''t afford to buy a new car right now.", "translation": "我现在买不起新车。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000034-ce14-0000-0000-000000000000', 'aggressive', '/əˈɡresɪv/', 'adj.', '[{"pos": "adj.", "meaning": "好斗的；有进取心的", "example": "He took an aggressive approach to business.", "translation": "他在生意上采取了积极进取的方式。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000035-ce14-0000-0000-000000000000', 'agriculture', '/ˈæɡrɪkʌltʃər/', 'n.', '[{"pos": "n.", "meaning": "农业", "example": "Agriculture is the backbone of many developing countries.", "translation": "农业是许多发展中国家的支柱。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000036-ce14-0000-0000-000000000000', 'aim', '/eɪm/', 'v.', '[{"pos": "v.", "meaning": "瞄准；目的在于", "example": "She aims to become a doctor in the future.", "translation": "她的目标是将来成为一名医生。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000037-ce14-0000-0000-000000000000', 'alarm', '/əˈlɑːrm/', 'n.', '[{"pos": "n.", "meaning": "警报；惊恐", "example": "The fire alarm went off in the middle of the night.", "translation": "半夜火警响了。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000038-ce14-0000-0000-000000000000', 'alert', '/əˈlɜːrt/', 'adj.', '[{"pos": "adj.", "meaning": "警觉的；机敏的", "example": "You need to stay alert while driving at night.", "translation": "夜间驾驶时你需要保持警觉。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000039-ce14-0000-0000-000000000000', 'allocate', '/ˈæləkeɪt/', 'v.', '[{"pos": "v.", "meaning": "分配；拨出", "example": "The government allocated funds for education.", "translation": "政府拨出了教育经费。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000040-ce14-0000-0000-000000000000', 'allow', '/əˈlaʊ/', 'v.', '[{"pos": "v.", "meaning": "允许；准许", "example": "Smoking is not allowed in this building.", "translation": "这栋楼内不允许吸烟。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000041-ce14-0000-0000-000000000000', 'alter', '/ˈɔːltər/', 'v.', '[{"pos": "v.", "meaning": "改变；修改", "example": "We need to alter our plans due to the bad weather.", "translation": "由于天气不好，我们需要改变计划。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000042-ce14-0000-0000-000000000000', 'alternative', '/ɔːlˈtɜːrnətɪv/', 'n.', '[{"pos": "n.", "meaning": "替代品；备选方案", "example": "We need to find an alternative solution.", "translation": "我们需要找到一个替代方案。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000043-ce14-0000-0000-000000000000', 'amaze', '/əˈmeɪz/', 'v.', '[{"pos": "v.", "meaning": "使惊奇；使惊叹", "example": "The magician''s tricks amazed the audience.", "translation": "魔术师的表演让观众惊叹不已。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000044-ce14-0000-0000-000000000000', 'ambition', '/æmˈbɪʃn/', 'n.', '[{"pos": "n.", "meaning": "雄心；抱负", "example": "Her ambition is to become a successful writer.", "translation": "她的抱负是成为一名成功的作家。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000045-ce14-0000-0000-000000000000', 'amount', '/əˈmaʊnt/', 'n.', '[{"pos": "n.", "meaning": "数量；总额", "example": "A large amount of money was spent on the project.", "translation": "大量资金被投入了这个项目。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000046-ce14-0000-0000-000000000000', 'amuse', '/əˈmjuːz/', 'v.', '[{"pos": "v.", "meaning": "逗乐；给...提供娱乐", "example": "The clown amused the children at the party.", "translation": "小丑在派对上逗乐了孩子们。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000047-ce14-0000-0000-000000000000', 'analyse', '/ˈænəlaɪz/', 'v.', '[{"pos": "v.", "meaning": "分析", "example": "Scientists analysed the data from the experiment.", "translation": "科学家分析了实验数据。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000048-ce14-0000-0000-000000000000', 'ancestor', '/ˈænsestər/', 'n.', '[{"pos": "n.", "meaning": "祖先；祖宗", "example": "Our ancestors lived in small villages.", "translation": "我们的祖先住在小村庄里。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000049-ce14-0000-0000-000000000000', 'ancient', '/ˈeɪnʃənt/', 'adj.', '[{"pos": "adj.", "meaning": "古代的；古老的", "example": "They discovered ancient ruins in the desert.", "translation": "他们在沙漠中发现了古代遗迹。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000050-ce14-0000-0000-000000000000', 'announce', '/əˈnaʊns/', 'v.', '[{"pos": "v.", "meaning": "宣布；通知", "example": "The company announced a new product launch.", "translation": "公司宣布了新产品发布。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000051-ce14-0000-0000-000000000000', 'annual', '/ˈænjuəl/', 'adj.', '[{"pos": "adj.", "meaning": "年度的；每年的", "example": "The company holds an annual meeting in December.", "translation": "公司在十二月举行年度会议。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000052-ce14-0000-0000-000000000000', 'anticipate', '/ænˈtɪsɪpeɪt/', 'v.', '[{"pos": "v.", "meaning": "预期；期望", "example": "We anticipate a increase in sales next quarter.", "translation": "我们预计下个季度销售额会增长。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000053-ce14-0000-0000-000000000000', 'anxiety', '/æŋˈzaɪəti/', 'n.', '[{"pos": "n.", "meaning": "焦虑；忧虑", "example": "She felt a lot of anxiety before the exam.", "translation": "考试前她感到非常焦虑。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000054-ce14-0000-0000-000000000000', 'apart', '/əˈpɑːrt/', 'adv.', '[{"pos": "adv.", "meaning": "分开地；相距", "example": "The two cities are 100 miles apart.", "translation": "这两座城市相距100英里。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000055-ce14-0000-0000-000000000000', 'apparent', '/əˈpærənt/', 'adj.', '[{"pos": "adj.", "meaning": "明显的；表面上的", "example": "It was apparent that he was not telling the truth.", "translation": "很明显他没有说实话。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000056-ce14-0000-0000-000000000000', 'appeal', '/əˈpiːl/', 'v.', '[{"pos": "v.", "meaning": "呼吁；吸引", "example": "The idea of working abroad appeals to many young people.", "translation": "出国工作的想法吸引了很多年轻人。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000057-ce14-0000-0000-000000000000', 'appetite', '/ˈæpɪtaɪt/', 'n.', '[{"pos": "n.", "meaning": "食欲；胃口", "example": "Exercise can increase your appetite.", "translation": "运动可以增加食欲。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000058-ce14-0000-0000-000000000000', 'apply', '/əˈplaɪ/', 'v.', '[{"pos": "v.", "meaning": "申请；应用", "example": "She applied for a scholarship to study abroad.", "translation": "她申请了出国留学的奖学金。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000059-ce14-0000-0000-000000000000', 'appoint', '/əˈpɔɪnt/', 'v.', '[{"pos": "v.", "meaning": "任命；指定", "example": "He was appointed as the new manager.", "translation": "他被任命为新经理。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000060-ce14-0000-0000-000000000000', 'appreciate', '/əˈpriːʃieɪt/', 'v.', '[{"pos": "v.", "meaning": "感激；欣赏", "example": "I really appreciate your help with this project.", "translation": "我非常感谢你在这个项目上的帮助。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000061-ce14-0000-0000-000000000000', 'approach', '/əˈprəʊtʃ/', 'v.', '[{"pos": "v.", "meaning": "接近；处理", "example": "We need to approach this problem carefully.", "translation": "我们需要谨慎处理这个问题。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000062-ce14-0000-0000-000000000000', 'appropriate', '/əˈprəʊpriət/', 'adj.', '[{"pos": "adj.", "meaning": "适当的；合适的", "example": "Please wear appropriate clothing for the interview.", "translation": "面试时请穿着得体。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000063-ce14-0000-0000-000000000000', 'approve', '/əˈpruːv/', 'v.', '[{"pos": "v.", "meaning": "批准；赞成", "example": "The committee approved the new budget.", "translation": "委员会批准了新预算。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000064-ce14-0000-0000-000000000000', 'arise', '/əˈraɪz/', 'v.', '[{"pos": "v.", "meaning": "出现；产生", "example": "Problems may arise during the project.", "translation": "项目期间可能会出现问题。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000065-ce14-0000-0000-000000000000', 'arrange', '/əˈreɪndʒ/', 'v.', '[{"pos": "v.", "meaning": "安排；整理", "example": "She arranged the flowers in a vase.", "translation": "她把花插在花瓶里。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000066-ce14-0000-0000-000000000000', 'arrest', '/əˈrest/', 'v.', '[{"pos": "v.", "meaning": "逮捕；阻止", "example": "The police arrested the suspect last night.", "translation": "警察昨晚逮捕了嫌疑人。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000067-ce14-0000-0000-000000000000', 'artificial', '/ˌɑːrtɪˈfɪʃl/', 'adj.', '[{"pos": "adj.", "meaning": "人造的；人工的", "example": "Artificial intelligence is changing many industries.", "translation": "人工智能正在改变许多行业。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000068-ce14-0000-0000-000000000000', 'assess', '/əˈses/', 'v.', '[{"pos": "v.", "meaning": "评估；评定", "example": "Teachers assess students'' progress regularly.", "translation": "老师定期评估学生的进步。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000069-ce14-0000-0000-000000000000', 'assign', '/əˈsaɪn/', 'v.', '[{"pos": "v.", "meaning": "分配；指派", "example": "The teacher assigned homework to the students.", "translation": "老师给学生布置了作业。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000070-ce14-0000-0000-000000000000', 'assist', '/əˈsɪst/', 'v.', '[{"pos": "v.", "meaning": "帮助；协助", "example": "Can you assist me with this task?", "translation": "你能帮我完成这项任务吗？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000071-ce14-0000-0000-000000000000', 'associate', '/əˈsəʊʃieɪt/', 'v.', '[{"pos": "v.", "meaning": "联想；联系", "example": "People often associate summer with vacation.", "translation": "人们常常把夏天和假期联系在一起。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000072-ce14-0000-0000-000000000000', 'assume', '/əˈsjuːm/', 'v.', '[{"pos": "v.", "meaning": "假定；承担", "example": "I assume you have read the instructions.", "translation": "我假定你已经看过说明书了。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000073-ce14-0000-0000-000000000000', 'assure', '/əˈʃʊər/', 'v.', '[{"pos": "v.", "meaning": "保证；使确信", "example": "I assure you that everything will be fine.", "translation": "我向你保证一切都会好的。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000074-ce14-0000-0000-000000000000', 'atmosphere', '/ˈætməsfɪər/', 'n.', '[{"pos": "n.", "meaning": "大气；气氛", "example": "The restaurant has a warm and friendly atmosphere.", "translation": "这家餐厅有一种温馨友好的氛围。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000075-ce14-0000-0000-000000000000', 'attach', '/əˈtætʃ/', 'v.', '[{"pos": "v.", "meaning": "附上；系上", "example": "Please attach your photo to the application form.", "translation": "请在申请表上贴上你的照片。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000076-ce14-0000-0000-000000000000', 'attain', '/əˈteɪn/', 'v.', '[{"pos": "v.", "meaning": "获得；达到", "example": "She attained the highest score in the class.", "translation": "她获得了班级最高分。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000077-ce14-0000-0000-000000000000', 'attempt', '/əˈtempt/', 'v.', '[{"pos": "v.", "meaning": "尝试；企图", "example": "He attempted to climb the mountain alone.", "translation": "他试图独自攀登那座山。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000078-ce14-0000-0000-000000000000', 'attend', '/əˈtend/', 'v.', '[{"pos": "v.", "meaning": "参加；照料", "example": "Over 200 people attended the conference.", "translation": "200多人参加了这次会议。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000079-ce14-0000-0000-000000000000', 'attitude', '/ˈætɪtjuːd/', 'n.', '[{"pos": "n.", "meaning": "态度；看法", "example": "She has a positive attitude towards life.", "translation": "她对生活持积极态度。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000080-ce14-0000-0000-000000000000', 'attract', '/əˈtrækt/', 'v.', '[{"pos": "v.", "meaning": "吸引；引起", "example": "The beautiful scenery attracts many tourists.", "translation": "美丽的风景吸引了许多游客。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000081-ce14-0000-0000-000000000000', 'audience', '/ˈɔːdiəns/', 'n.', '[{"pos": "n.", "meaning": "观众；听众", "example": "The audience gave the performers a standing ovation.", "translation": "观众们起立为表演者鼓掌。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000082-ce14-0000-0000-000000000000', 'authority', '/ɔːˈθɒrəti/', 'n.', '[{"pos": "n.", "meaning": "权威；当局", "example": "The local authority approved the construction plan.", "translation": "地方政府批准了建设计划。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000083-ce14-0000-0000-000000000000', 'automatic', '/ˌɔːtəˈmætɪk/', 'adj.', '[{"pos": "adj.", "meaning": "自动的", "example": "The doors have an automatic opening system.", "translation": "这些门有自动开启系统。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000084-ce14-0000-0000-000000000000', 'available', '/əˈveɪləbl/', 'adj.', '[{"pos": "adj.", "meaning": "可用的；有空的", "example": "Is this seat available?", "translation": "这个座位有人吗？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000085-ce14-0000-0000-000000000000', 'avoid', '/əˈvɔɪd/', 'v.', '[{"pos": "v.", "meaning": "避免；避开", "example": "You should avoid eating too much sugar.", "translation": "你应该避免吃太多糖。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000086-ce14-0000-0000-000000000000', 'aware', '/əˈweər/', 'adj.', '[{"pos": "adj.", "meaning": "意识到的；知道的", "example": "Are you aware of the risks involved?", "translation": "你意识到所涉及的风险了吗？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000087-ce14-0000-0000-000000000000', 'awkward', '/ˈɔːkwərd/', 'adj.', '[{"pos": "adj.", "meaning": "尴尬的；笨拙的", "example": "There was an awkward silence after his comment.", "translation": "他的评论之后是一阵尴尬的沉默。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000088-ce14-0000-0000-000000000000', 'balance', '/ˈbæləns/', 'n.', '[{"pos": "n.", "meaning": "平衡；余额", "example": "It''s important to maintain a balance between work and life.", "translation": "保持工作与生活的平衡很重要。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000089-ce14-0000-0000-000000000000', 'ban', '/bæn/', 'v.', '[{"pos": "v.", "meaning": "禁止；取缔", "example": "The government banned smoking in public places.", "translation": "政府禁止在公共场所吸烟。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000090-ce14-0000-0000-000000000000', 'barrier', '/ˈbæriər/', 'n.', '[{"pos": "n.", "meaning": "障碍；屏障", "example": "Language can be a barrier to communication.", "translation": "语言可能成为沟通的障碍。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000091-ce14-0000-0000-000000000000', 'basis', '/ˈbeɪsɪs/', 'n.', '[{"pos": "n.", "meaning": "基础；根据", "example": "The theory has no scientific basis.", "translation": "这个理论没有科学依据。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000092-ce14-0000-0000-000000000000', 'behavior', '/bɪˈheɪvjər/', 'n.', '[{"pos": "n.", "meaning": "行为；举止", "example": "His behavior at the meeting was unacceptable.", "translation": "他在会议上的行为是不可接受的。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000093-ce14-0000-0000-000000000000', 'believe', '/bɪˈliːv/', 'v.', '[{"pos": "v.", "meaning": "相信；认为", "example": "I believe that education is the key to success.", "translation": "我相信教育是成功的关键。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000094-ce14-0000-0000-000000000000', 'belong', '/bɪˈlɒŋ/', 'v.', '[{"pos": "v.", "meaning": "属于；适合", "example": "This book belongs to the library.", "translation": "这本书是图书馆的。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000095-ce14-0000-0000-000000000000', 'benefit', '/ˈbenɪfɪt/', 'n.', '[{"pos": "n.", "meaning": "利益；好处", "example": "Regular exercise has many health benefits.", "translation": "定期锻炼有许多健康益处。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000096-ce14-0000-0000-000000000000', 'besides', '/bɪˈsaɪdz/', 'prep.', '[{"pos": "prep.", "meaning": "除...之外（还）", "example": "Besides English, she also speaks French.", "translation": "除了英语，她还会说法语。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000097-ce14-0000-0000-000000000000', 'blame', '/bleɪm/', 'v.', '[{"pos": "v.", "meaning": "责备；归咎于", "example": "Don''t blame others for your own mistakes.", "translation": "不要把自己的错误归咎于别人。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000098-ce14-0000-0000-000000000000', 'blank', '/blæŋk/', 'adj.', '[{"pos": "adj.", "meaning": "空白的；茫然的", "example": "She stared at the blank page, unable to write.", "translation": "她盯着空白的页面，写不出东西。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000099-ce14-0000-0000-000000000000', 'blast', '/blɑːst/', 'n.', '[{"pos": "n.", "meaning": "爆炸；一阵（风）", "example": "A blast of cold air hit them when they opened the door.", "translation": "他们打开门时，一股冷空气袭来。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000100-ce14-0000-0000-000000000000', 'blend', '/blend/', 'v.', '[{"pos": "v.", "meaning": "混合；融合", "example": "Blend the ingredients together until smooth.", "translation": "将原料混合搅拌至顺滑。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000101-ce14-0000-0000-000000000000', 'block', '/blɒk/', 'v.', '[{"pos": "v.", "meaning": "阻塞；阻止", "example": "The fallen tree blocked the road.", "translation": "倒下的树挡住了道路。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000102-ce14-0000-0000-000000000000', 'board', '/bɔːrd/', 'n.', '[{"pos": "n.", "meaning": "板；董事会", "example": "The board of directors made the final decision.", "translation": "董事会做出了最终决定。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000103-ce14-0000-0000-000000000000', 'bold', '/bəʊld/', 'adj.', '[{"pos": "adj.", "meaning": "大胆的；醒目的", "example": "She made a bold decision to start her own business.", "translation": "她大胆决定自己创业。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000104-ce14-0000-0000-000000000000', 'bond', '/bɒnd/', 'n.', '[{"pos": "n.", "meaning": "纽带；债券", "example": "The bond between mother and child is very strong.", "translation": "母子之间的纽带非常牢固。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000105-ce14-0000-0000-000000000000', 'boost', '/buːst/', 'v.', '[{"pos": "v.", "meaning": "促进；增强", "example": "Coffee can help boost your energy levels.", "translation": "咖啡可以帮助提升你的能量水平。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000106-ce14-0000-0000-000000000000', 'border', '/ˈbɔːrdər/', 'n.', '[{"pos": "n.", "meaning": "边界；边缘", "example": "They crossed the border into the next country.", "translation": "他们越过边界进入了另一个国家。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000107-ce14-0000-0000-000000000000', 'bore', '/bɔːr/', 'v.', '[{"pos": "v.", "meaning": "使厌烦；钻孔", "example": "The long lecture bored the students.", "translation": "冗长的讲座让学生们感到厌烦。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000108-ce14-0000-0000-000000000000', 'boundary', '/ˈbaʊndri/', 'n.', '[{"pos": "n.", "meaning": "边界；界限", "example": "The river forms a natural boundary between the two countries.", "translation": "这条河形成了两国之间的天然边界。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000109-ce14-0000-0000-000000000000', 'branch', '/brɑːntʃ/', 'n.', '[{"pos": "n.", "meaning": "分支；树枝", "example": "The company has branches all over the world.", "translation": "这家公司在世界各地都有分支机构。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000110-ce14-0000-0000-000000000000', 'brand', '/brænd/', 'n.', '[{"pos": "n.", "meaning": "品牌；商标", "example": "This is a well-known brand of electronics.", "translation": "这是一个知名的电子产品品牌。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000111-ce14-0000-0000-000000000000', 'breakthrough', '/ˈbreɪkθruː/', 'n.', '[{"pos": "n.", "meaning": "突破；重大进展", "example": "Scientists made a breakthrough in cancer research.", "translation": "科学家在癌症研究方面取得了突破。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000112-ce14-0000-0000-000000000000', 'breed', '/briːd/', 'v.', '[{"pos": "v.", "meaning": "繁殖；培育", "example": "They breed horses on their farm.", "translation": "他们在农场里养马。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000113-ce14-0000-0000-000000000000', 'brief', '/briːf/', 'adj.', '[{"pos": "adj.", "meaning": "简短的；简洁的", "example": "He gave a brief summary of the report.", "translation": "他对报告做了简短的总结。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000114-ce14-0000-0000-000000000000', 'brilliant', '/ˈbrɪliənt/', 'adj.', '[{"pos": "adj.", "meaning": "杰出的；灿烂的", "example": "She is a brilliant scientist.", "translation": "她是一位杰出的科学家。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000115-ce14-0000-0000-000000000000', 'broad', '/brɔːd/', 'adj.', '[{"pos": "adj.", "meaning": "宽阔的；广泛的", "example": "The road is very broad and easy to drive on.", "translation": "这条路很宽，很容易行驶。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000116-ce14-0000-0000-000000000000', 'budget', '/ˈbʌdʒɪt/', 'n.', '[{"pos": "n.", "meaning": "预算", "example": "We need to stick to our budget this month.", "translation": "这个月我们需要严格控制预算。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000117-ce14-0000-0000-000000000000', 'burden', '/ˈbɜːrdn/', 'n.', '[{"pos": "n.", "meaning": "负担；重担", "example": "The financial burden was too much for the family.", "translation": "经济负担对这个家庭来说太重了。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000118-ce14-0000-0000-000000000000', 'burst', '/bɜːrst/', 'v.', '[{"pos": "v.", "meaning": "爆裂；突然发生", "example": "The balloon burst with a loud bang.", "translation": "气球砰的一声爆了。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000119-ce14-0000-0000-000000000000', 'calculate', '/ˈkælkjəleɪt/', 'v.', '[{"pos": "v.", "meaning": "计算；估计", "example": "Can you calculate the total cost of the project?", "translation": "你能计算一下项目的总成本吗？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000120-ce14-0000-0000-000000000000', 'campaign', '/kæmˈpeɪn/', 'n.', '[{"pos": "n.", "meaning": "运动；战役", "example": "The advertising campaign was very successful.", "translation": "这次广告活动非常成功。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000121-ce14-0000-0000-000000000000', 'cancel', '/ˈkænsl/', 'v.', '[{"pos": "v.", "meaning": "取消；撤销", "example": "The flight was cancelled due to bad weather.", "translation": "航班因天气恶劣被取消了。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000122-ce14-0000-0000-000000000000', 'candidate', '/ˈkændɪdət/', 'n.', '[{"pos": "n.", "meaning": "候选人；应试者", "example": "There are five candidates for the position.", "translation": "这个职位有五名候选人。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000123-ce14-0000-0000-000000000000', 'capable', '/ˈkeɪpəbl/', 'adj.', '[{"pos": "adj.", "meaning": "有能力的；能干的", "example": "She is capable of handling difficult situations.", "translation": "她有能力处理困难情况。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000124-ce14-0000-0000-000000000000', 'capacity', '/kəˈpæsəti/', 'n.', '[{"pos": "n.", "meaning": "容量；能力", "example": "The stadium has a capacity of 50,000 seats.", "translation": "这个体育场可容纳5万个座位。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000125-ce14-0000-0000-000000000000', 'capture', '/ˈkæptʃər/', 'v.', '[{"pos": "v.", "meaning": "捕获；拍摄", "example": "The photographer captured the beautiful sunset.", "translation": "摄影师拍下了美丽的日落。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000126-ce14-0000-0000-000000000000', 'career', '/kəˈrɪər/', 'n.', '[{"pos": "n.", "meaning": "职业；事业", "example": "She has had a successful career in medicine.", "translation": "她在医学领域有着成功的职业生涯。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000127-ce14-0000-0000-000000000000', 'casual', '/ˈkæʒuəl/', 'adj.', '[{"pos": "adj.", "meaning": "随意的；非正式的", "example": "The dress code for the party is casual.", "translation": "派对着装要求是休闲风格。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000128-ce14-0000-0000-000000000000', 'category', '/ˈkætəɡɔːri/', 'n.', '[{"pos": "n.", "meaning": "类别；种类", "example": "The books are arranged by category.", "translation": "书籍按类别排列。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000129-ce14-0000-0000-000000000000', 'celebrate', '/ˈselɪbreɪt/', 'v.', '[{"pos": "v.", "meaning": "庆祝；赞美", "example": "They celebrated their anniversary with a dinner.", "translation": "他们用一顿晚餐来庆祝纪念日。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000130-ce14-0000-0000-000000000000', 'challenge', '/ˈtʃælɪndʒ/', 'n.', '[{"pos": "n.", "meaning": "挑战", "example": "Learning a new language is a real challenge.", "translation": "学习一门新语言是一个真正的挑战。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000131-ce14-0000-0000-000000000000', 'champion', '/ˈtʃæmpiən/', 'n.', '[{"pos": "n.", "meaning": "冠军；拥护者", "example": "She became the world champion in swimming.", "translation": "她成为了游泳世界冠军。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000132-ce14-0000-0000-000000000000', 'channel', '/ˈtʃænl/', 'n.', '[{"pos": "n.", "meaning": "频道；渠道", "example": "The TV channel broadcasts news 24 hours a day.", "translation": "这个电视频道全天24小时播报新闻。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000133-ce14-0000-0000-000000000000', 'chapter', '/ˈtʃæptər/', 'n.', '[{"pos": "n.", "meaning": "章节", "example": "Please read the first chapter of the book.", "translation": "请阅读这本书的第一章。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000134-ce14-0000-0000-000000000000', 'character', '/ˈkærəktər/', 'n.', '[{"pos": "n.", "meaning": "性格；角色；字符", "example": "She has a strong character and never gives up.", "translation": "她性格坚强，从不放弃。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000135-ce14-0000-0000-000000000000', 'charge', '/tʃɑːrdʒ/', 'v.', '[{"pos": "v.", "meaning": "收费；充电；指控", "example": "How much do you charge for delivery?", "translation": "你们送货收费多少？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000136-ce14-0000-0000-000000000000', 'charity', '/ˈtʃærəti/', 'n.', '[{"pos": "n.", "meaning": "慈善；慈善机构", "example": "She donated money to a local charity.", "translation": "她向当地一家慈善机构捐了款。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000137-ce14-0000-0000-000000000000', 'chemical', '/ˈkemɪkl/', 'adj.', '[{"pos": "adj.", "meaning": "化学的", "example": "The factory produces various chemical products.", "translation": "这家工厂生产各种化学产品。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000138-ce14-0000-0000-000000000000', 'cherish', '/ˈtʃerɪʃ/', 'v.', '[{"pos": "v.", "meaning": "珍爱；怀念", "example": "She cherishes the memories of her childhood.", "translation": "她珍视童年的回忆。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000139-ce14-0000-0000-000000000000', 'circulate', '/ˈsɜːrkjəleɪt/', 'v.', '[{"pos": "v.", "meaning": "循环；流通", "example": "Blood circulates through the body.", "translation": "血液在体内循环。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000140-ce14-0000-0000-000000000000', 'circumstance', '/ˈsɜːrkəmstæns/', 'n.', '[{"pos": "n.", "meaning": "环境；情况", "example": "Under no circumstances should you lie.", "translation": "在任何情况下你都不应该撒谎。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000141-ce14-0000-0000-000000000000', 'citizen', '/ˈsɪtɪzn/', 'n.', '[{"pos": "n.", "meaning": "市民；公民", "example": "Every citizen has the right to vote.", "translation": "每个公民都有投票权。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000142-ce14-0000-0000-000000000000', 'civil', '/ˈsɪvl/', 'adj.', '[{"pos": "adj.", "meaning": "公民的；文明的", "example": "Civil rights are protected by law.", "translation": "公民权利受法律保护。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000143-ce14-0000-0000-000000000000', 'claim', '/kleɪm/', 'v.', '[{"pos": "v.", "meaning": "声称；索取", "example": "He claims to be an expert in the field.", "translation": "他声称自己是该领域的专家。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000144-ce14-0000-0000-000000000000', 'clarify', '/ˈklærɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "澄清；阐明", "example": "Could you clarify what you mean by that?", "translation": "你能澄清一下你那句话的意思吗？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000145-ce14-0000-0000-000000000000', 'classify', '/ˈklæsɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "分类；归类", "example": "Animals are classified into different species.", "translation": "动物被分为不同的物种。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000146-ce14-0000-0000-000000000000', 'climate', '/ˈklaɪmət/', 'n.', '[{"pos": "n.", "meaning": "气候", "example": "The climate in this region is warm and humid.", "translation": "这个地区的气候温暖湿润。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000147-ce14-0000-0000-000000000000', 'coincide', '/ˌkəʊɪnˈsaɪd/', 'v.', '[{"pos": "v.", "meaning": "同时发生；一致", "example": "My birthday coincides with Christmas this year.", "translation": "今年我的生日恰好在圣诞节。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000148-ce14-0000-0000-000000000000', 'collapse', '/kəˈlæps/', 'v.', '[{"pos": "v.", "meaning": "倒塌；崩溃", "example": "The old building collapsed during the earthquake.", "translation": "那栋旧建筑在地震中倒塌了。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000149-ce14-0000-0000-000000000000', 'colleague', '/ˈkɒliːɡ/', 'n.', '[{"pos": "n.", "meaning": "同事", "example": "She gets along well with her colleagues.", "translation": "她和同事们相处得很好。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000150-ce14-0000-0000-000000000000', 'combine', '/kəmˈbaɪn/', 'v.', '[{"pos": "v.", "meaning": "结合；联合", "example": "We need to combine our efforts to finish the project.", "translation": "我们需要齐心协力完成这个项目。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000151-ce14-0000-0000-000000000000', 'command', '/kəˈmɑːnd/', 'v.', '[{"pos": "v.", "meaning": "命令；指挥", "example": "The officer commanded his soldiers to advance.", "translation": "军官命令士兵们前进。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000152-ce14-0000-0000-000000000000', 'comment', '/ˈkɒment/', 'n.', '[{"pos": "n.", "meaning": "评论；意见", "example": "She made a helpful comment about my essay.", "translation": "她对我的文章提出了有益的意见。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000153-ce14-0000-0000-000000000000', 'commit', '/kəˈmɪt/', 'v.', '[{"pos": "v.", "meaning": "犯（罪）；承诺", "example": "He committed himself to finishing the work on time.", "translation": "他承诺按时完成工作。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000154-ce14-0000-0000-000000000000', 'communicate', '/kəˈmjuːnɪkeɪt/', 'v.', '[{"pos": "v.", "meaning": "交流；传达", "example": "It''s important to communicate clearly with your team.", "translation": "与团队清晰地沟通很重要。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000155-ce14-0000-0000-000000000000', 'community', '/kəˈmjuːnəti/', 'n.', '[{"pos": "n.", "meaning": "社区；群体", "example": "The local community organized a charity event.", "translation": "当地社区组织了一场慈善活动。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000156-ce14-0000-0000-000000000000', 'companion', '/kəmˈpæniən/', 'n.', '[{"pos": "n.", "meaning": "同伴；伙伴", "example": "The dog has been a loyal companion for years.", "translation": "这只狗多年来一直是一个忠诚的伙伴。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000157-ce14-0000-0000-000000000000', 'compare', '/kəmˈpeər/', 'v.', '[{"pos": "v.", "meaning": "比较；对比", "example": "Compare the prices before you buy anything.", "translation": "买东西之前先比较一下价格。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000158-ce14-0000-0000-000000000000', 'compel', '/kəmˈpel/', 'v.', '[{"pos": "v.", "meaning": "强迫；迫使", "example": "The evidence compelled him to change his mind.", "translation": "证据迫使他改变了主意。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000159-ce14-0000-0000-000000000000', 'compensate', '/ˈkɒmpənseɪt/', 'v.', '[{"pos": "v.", "meaning": "补偿；赔偿", "example": "The company compensated the workers for their overtime.", "translation": "公司对工人的加班进行了补偿。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000160-ce14-0000-0000-000000000000', 'compete', '/kəmˈpiːt/', 'v.', '[{"pos": "v.", "meaning": "竞争；比赛", "example": "Several companies are competing for the contract.", "translation": "几家公司正在竞争这份合同。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000161-ce14-0000-0000-000000000000', 'complain', '/kəmˈpleɪn/', 'v.', '[{"pos": "v.", "meaning": "抱怨；投诉", "example": "Customers often complain about the poor service.", "translation": "顾客经常抱怨服务质量差。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000162-ce14-0000-0000-000000000000', 'complex', '/ˈkɒmpleks/', 'adj.', '[{"pos": "adj.", "meaning": "复杂的", "example": "The human brain is extremely complex.", "translation": "人脑是极其复杂的。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000163-ce14-0000-0000-000000000000', 'component', '/kəmˈpəʊnənt/', 'n.', '[{"pos": "n.", "meaning": "组成部分；零件", "example": "Each component of the machine must be checked.", "translation": "机器的每个部件都必须检查。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000164-ce14-0000-0000-000000000000', 'compose', '/kəmˈpəʊz/', 'v.', '[{"pos": "v.", "meaning": "组成；创作", "example": "The team is composed of experts from different fields.", "translation": "该团队由来自不同领域的专家组成。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000165-ce14-0000-0000-000000000000', 'comprehend', '/ˌkɒmprɪˈhend/', 'v.', '[{"pos": "v.", "meaning": "理解；领会", "example": "It''s hard to comprehend the scale of the universe.", "translation": "很难理解宇宙的规模。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000166-ce14-0000-0000-000000000000', 'concentrate', '/ˈkɒnsntreɪt/', 'v.', '[{"pos": "v.", "meaning": "集中；专注", "example": "I need to concentrate on my studies.", "translation": "我需要专注于学习。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000167-ce14-0000-0000-000000000000', 'concept', '/ˈkɒnsept/', 'n.', '[{"pos": "n.", "meaning": "概念；观念", "example": "The concept of freedom means different things to different people.", "translation": "自由的概念对不同的人有不同的含义。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000168-ce14-0000-0000-000000000000', 'concern', '/kənˈsɜːrn/', 'n.', '[{"pos": "n.", "meaning": "关心；担忧", "example": "There is growing concern about climate change.", "translation": "人们对气候变化的担忧日益增加。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000169-ce14-0000-0000-000000000000', 'conclude', '/kənˈkluːd/', 'v.', '[{"pos": "v.", "meaning": "结束；得出结论", "example": "The researchers concluded that the drug was effective.", "translation": "研究人员得出结论，该药物是有效的。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000170-ce14-0000-0000-000000000000', 'concrete', '/ˈkɒŋkriːt/', 'adj.', '[{"pos": "adj.", "meaning": "具体的；实在的", "example": "Can you give me a concrete example?", "translation": "你能给我一个具体的例子吗？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000171-ce14-0000-0000-000000000000', 'conduct', '/kənˈdʌkt/', 'v.', '[{"pos": "v.", "meaning": "进行；引导", "example": "The scientist conducted an experiment in the lab.", "translation": "科学家在实验室进行了一项实验。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000172-ce14-0000-0000-000000000000', 'confident', '/ˈkɒnfɪdənt/', 'adj.', '[{"pos": "adj.", "meaning": "自信的；确信的", "example": "She feels confident about passing the exam.", "translation": "她对通过考试很有信心。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000173-ce14-0000-0000-000000000000', 'confirm', '/kənˈfɜːrm/', 'v.', '[{"pos": "v.", "meaning": "确认；证实", "example": "Please confirm your reservation by email.", "translation": "请通过电子邮件确认您的预订。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000174-ce14-0000-0000-000000000000', 'conflict', '/ˈkɒnflɪkt/', 'n.', '[{"pos": "n.", "meaning": "冲突；矛盾", "example": "There is a conflict between the two countries.", "translation": "两国之间存在冲突。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000175-ce14-0000-0000-000000000000', 'confuse', '/kənˈfjuːz/', 'v.', '[{"pos": "v.", "meaning": "使困惑；混淆", "example": "The instructions confused most of the students.", "translation": "说明让大多数学生感到困惑。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000176-ce14-0000-0000-000000000000', 'connect', '/kəˈnekt/', 'v.', '[{"pos": "v.", "meaning": "连接；联系", "example": "Connect the cable to the computer.", "translation": "把电缆连接到电脑上。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000177-ce14-0000-0000-000000000000', 'conscious', '/ˈkɒnʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "有意识的；自觉的", "example": "She was conscious of the need to save money.", "translation": "她意识到需要存钱。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000178-ce14-0000-0000-000000000000', 'consequence', '/ˈkɒnsɪkwəns/', 'n.', '[{"pos": "n.", "meaning": "结果；后果", "example": "You must face the consequences of your actions.", "translation": "你必须面对你行为的后果。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000179-ce14-0000-0000-000000000000', 'conservative', '/kənˈsɜːrvətɪv/', 'adj.', '[{"pos": "adj.", "meaning": "保守的；守旧的", "example": "He holds very conservative views on education.", "translation": "他对教育持非常保守的观点。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000180-ce14-0000-0000-000000000000', 'consider', '/kənˈsɪdər/', 'v.', '[{"pos": "v.", "meaning": "考虑；认为", "example": "Please consider all the options before deciding.", "translation": "做决定前请考虑所有选择。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000181-ce14-0000-0000-000000000000', 'consist', '/kənˈsɪst/', 'v.', '[{"pos": "v.", "meaning": "由...组成", "example": "The team consists of 12 members.", "translation": "这个团队由12名成员组成。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000182-ce14-0000-0000-000000000000', 'constant', '/ˈkɒnstənt/', 'adj.', '[{"pos": "adj.", "meaning": "持续的；不变的", "example": "The machine operates at a constant speed.", "translation": "这台机器以恒定速度运行。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000183-ce14-0000-0000-000000000000', 'construct', '/kənˈstrʌkt/', 'v.', '[{"pos": "v.", "meaning": "建造；构建", "example": "They plan to construct a new bridge across the river.", "translation": "他们计划在河上建造一座新桥。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000184-ce14-0000-0000-000000000000', 'consult', '/kənˈsʌlt/', 'v.', '[{"pos": "v.", "meaning": "咨询；查阅", "example": "You should consult a doctor about your symptoms.", "translation": "你应该就你的症状咨询医生。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000185-ce14-0000-0000-000000000000', 'consume', '/kənˈsjuːm/', 'v.', '[{"pos": "v.", "meaning": "消耗；消费", "example": "The project consumed a lot of time and energy.", "translation": "这个项目消耗了大量的时间和精力。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000186-ce14-0000-0000-000000000000', 'contact', '/ˈkɒntækt/', 'n.', '[{"pos": "n.", "meaning": "联系；接触", "example": "Please contact me if you have any questions.", "translation": "如有任何问题，请联系我。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000187-ce14-0000-0000-000000000000', 'contain', '/kənˈteɪn/', 'v.', '[{"pos": "v.", "meaning": "包含；容纳", "example": "This book contains useful information about health.", "translation": "这本书包含了有用的健康信息。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000188-ce14-0000-0000-000000000000', 'contemporary', '/kənˈtempərəri/', 'adj.', '[{"pos": "adj.", "meaning": "当代的；同时代的", "example": "The museum displays contemporary art.", "translation": "这家博物馆展示当代艺术。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000189-ce14-0000-0000-000000000000', 'content', '/ˈkɒntent/', 'n.', '[{"pos": "n.", "meaning": "内容；满足", "example": "The content of the lecture was very interesting.", "translation": "讲座的内容非常有趣。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000190-ce14-0000-0000-000000000000', 'contest', '/ˈkɒntest/', 'n.', '[{"pos": "n.", "meaning": "比赛；竞争", "example": "She won first prize in the speech contest.", "translation": "她在演讲比赛中获得了一等奖。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000191-ce14-0000-0000-000000000000', 'context', '/ˈkɒntekst/', 'n.', '[{"pos": "n.", "meaning": "背景；语境", "example": "You need to understand the context of the conversation.", "translation": "你需要理解对话的语境。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000192-ce14-0000-0000-000000000000', 'contract', '/ˈkɒntrækt/', 'n.', '[{"pos": "n.", "meaning": "合同；契约", "example": "They signed a three-year contract with the company.", "translation": "他们与公司签订了三年的合同。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000193-ce14-0000-0000-000000000000', 'contradict', '/ˌkɒntrəˈdɪkt/', 'v.', '[{"pos": "v.", "meaning": "反驳；矛盾", "example": "The evidence contradicts his statement.", "translation": "证据与他的陈述相矛盾。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000194-ce14-0000-0000-000000000000', 'contribute', '/kənˈtrɪbjuːt/', 'v.', '[{"pos": "v.", "meaning": "贡献；投稿", "example": "Everyone should contribute to protecting the environment.", "translation": "每个人都应该为保护环境做出贡献。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000195-ce14-0000-0000-000000000000', 'control', '/kənˈtrəʊl/', 'v.', '[{"pos": "v.", "meaning": "控制；管理", "example": "You need to learn to control your temper.", "translation": "你需要学会控制自己的脾气。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000196-ce14-0000-0000-000000000000', 'controversy', '/ˈkɒntrəvɜːsi/', 'n.', '[{"pos": "n.", "meaning": "争论；争议", "example": "The new policy caused a lot of controversy.", "translation": "新政策引起了很多争议。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000197-ce14-0000-0000-000000000000', 'convenient', '/kənˈviːniənt/', 'adj.', '[{"pos": "adj.", "meaning": "方便的；便利的", "example": "The hotel is in a very convenient location.", "translation": "这家酒店位置非常方便。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000198-ce14-0000-0000-000000000000', 'conventional', '/kənˈvenʃənl/', 'adj.', '[{"pos": "adj.", "meaning": "传统的；常规的", "example": "She prefers conventional methods of teaching.", "translation": "她更喜欢传统的教学方法。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000199-ce14-0000-0000-000000000000', 'convince', '/kənˈvɪns/', 'v.', '[{"pos": "v.", "meaning": "说服；使信服", "example": "I convinced him to join our team.", "translation": "我说服他加入了我们的团队。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000200-ce14-0000-0000-000000000000', 'cooperate', '/kəʊˈɒpəreɪt/', 'v.', '[{"pos": "v.", "meaning": "合作；配合", "example": "The two companies agreed to cooperate on the project.", "translation": "两家公司同意在该项目上合作。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000201-ce14-0000-0000-000000000000', 'cope', '/kəʊp/', 'v.', '[{"pos": "v.", "meaning": "应对；处理", "example": "She learned to cope with stress through meditation.", "translation": "她学会了通过冥想来应对压力。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000202-ce14-0000-0000-000000000000', 'corporate', '/ˈkɔːrpərət/', 'adj.', '[{"pos": "adj.", "meaning": "公司的；企业的", "example": "The corporate culture values teamwork and innovation.", "translation": "企业文化重视团队合作和创新。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000203-ce14-0000-0000-000000000000', 'correspond', '/ˌkɒrɪˈspɒnd/', 'v.', '[{"pos": "v.", "meaning": "通信；相当", "example": "She corresponded with her pen pal for many years.", "translation": "她和笔友通信多年。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000204-ce14-0000-0000-000000000000', 'corrupt', '/kəˈrʌpt/', 'adj.', '[{"pos": "adj.", "meaning": "腐败的；堕落的", "example": "The corrupt official was arrested for taking bribes.", "translation": "那个腐败的官员因受贿被逮捕了。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000205-ce14-0000-0000-000000000000', 'counsel', '/ˈkaʊnsl/', 'n.', '[{"pos": "n.", "meaning": "建议；律师", "example": "She sought counsel from her mentor.", "translation": "她向导师寻求建议。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000206-ce14-0000-0000-000000000000', 'count', '/kaʊnt/', 'v.', '[{"pos": "v.", "meaning": "计算；重要", "example": "Every vote counts in an election.", "translation": "选举中每一票都很重要。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000207-ce14-0000-0000-000000000000', 'couple', '/ˈkʌpl/', 'n.', '[{"pos": "n.", "meaning": "一对；夫妇", "example": "The couple celebrated their 50th wedding anniversary.", "translation": "这对夫妇庆祝了他们结婚50周年。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000208-ce14-0000-0000-000000000000', 'courage', '/ˈkʌrɪdʒ/', 'n.', '[{"pos": "n.", "meaning": "勇气；胆量", "example": "It takes courage to stand up for what is right.", "translation": "为正义挺身而出需要勇气。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000209-ce14-0000-0000-000000000000', 'crash', '/kræʃ/', 'v.', '[{"pos": "v.", "meaning": "碰撞；崩溃", "example": "The computer crashed and we lost all our data.", "translation": "电脑崩溃了，我们丢失了所有数据。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000210-ce14-0000-0000-000000000000', 'creative', '/kriˈeɪtɪv/', 'adj.', '[{"pos": "adj.", "meaning": "创造性的；有创意的", "example": "She is very creative and always has new ideas.", "translation": "她很有创造力，总是有新点子。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000211-ce14-0000-0000-000000000000', 'credit', '/ˈkredɪt/', 'n.', '[{"pos": "n.", "meaning": "信用；学分", "example": "You need 120 credits to graduate.", "translation": "你需要修满120个学分才能毕业。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000212-ce14-0000-0000-000000000000', 'criminal', '/ˈkrɪmɪnl/', 'n.', '[{"pos": "n.", "meaning": "罪犯", "example": "The criminal was sentenced to ten years in prison.", "translation": "罪犯被判处十年监禁。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000213-ce14-0000-0000-000000000000', 'crisis', '/ˈkraɪsɪs/', 'n.', '[{"pos": "n.", "meaning": "危机", "example": "The country is facing an economic crisis.", "translation": "该国正面临经济危机。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000214-ce14-0000-0000-000000000000', 'critical', '/ˈkrɪtɪkl/', 'adj.', '[{"pos": "adj.", "meaning": "批评的；关键的", "example": "Critical thinking is an important skill for students.", "translation": "批判性思维是学生的一项重要技能。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000215-ce14-0000-0000-000000000000', 'crowd', '/kraʊd/', 'n.', '[{"pos": "n.", "meaning": "人群；群众", "example": "A large crowd gathered in the square.", "translation": "一大群人聚集在广场上。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000216-ce14-0000-0000-000000000000', 'crucial', '/ˈkruːʃl/', 'adj.', '[{"pos": "adj.", "meaning": "关键的；决定性的", "example": "This is a crucial moment in the negotiations.", "translation": "这是谈判中的关键时刻。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000217-ce14-0000-0000-000000000000', 'cultivate', '/ˈkʌltɪveɪt/', 'v.', '[{"pos": "v.", "meaning": "培养；耕种", "example": "We should cultivate good reading habits.", "translation": "我们应该培养良好的阅读习惯。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000218-ce14-0000-0000-000000000000', 'cure', '/kjʊər/', 'v.', '[{"pos": "v.", "meaning": "治愈；治疗", "example": "Scientists are working to find a cure for the disease.", "translation": "科学家们正在努力寻找这种疾病的治疗方法。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000219-ce14-0000-0000-000000000000', 'curious', '/ˈkjʊəriəs/', 'adj.', '[{"pos": "adj.", "meaning": "好奇的", "example": "Children are naturally curious about the world.", "translation": "孩子们天生对世界充满好奇。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000220-ce14-0000-0000-000000000000', 'current', '/ˈkʌrənt/', 'adj.', '[{"pos": "adj.", "meaning": "当前的；流行的", "example": "The current situation requires immediate action.", "translation": "当前形势需要立即采取行动。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000221-ce14-0000-0000-000000000000', 'curriculum', '/kəˈrɪkjələm/', 'n.', '[{"pos": "n.", "meaning": "课程；课程设置", "example": "The school has updated its curriculum this year.", "translation": "学校今年更新了课程设置。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000222-ce14-0000-0000-000000000000', 'customer', '/ˈkʌstəmər/', 'n.', '[{"pos": "n.", "meaning": "顾客；客户", "example": "Customer satisfaction is our top priority.", "translation": "客户满意度是我们的首要任务。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000223-ce14-0000-0000-000000000000', 'debate', '/dɪˈbeɪt/', 'n.', '[{"pos": "n.", "meaning": "辩论；讨论", "example": "There was a heated debate about education reform.", "translation": "关于教育改革有一场激烈的辩论。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000224-ce14-0000-0000-000000000000', 'decay', '/dɪˈkeɪ/', 'v.', '[{"pos": "v.", "meaning": "腐烂；衰退", "example": "The wooden house began to decay after years of neglect.", "translation": "木屋在多年无人照管后开始腐烂。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000225-ce14-0000-0000-000000000000', 'deceive', '/dɪˈsiːv/', 'v.', '[{"pos": "v.", "meaning": "欺骗；蒙骗", "example": "He tried to deceive everyone with his lies.", "translation": "他试图用谎言欺骗所有人。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000226-ce14-0000-0000-000000000000', 'decent', '/ˈdiːsnt/', 'adj.', '[{"pos": "adj.", "meaning": "体面的；相当好的", "example": "He earns a decent salary.", "translation": "他挣一份体面的工资。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000227-ce14-0000-0000-000000000000', 'declare', '/dɪˈkleər/', 'v.', '[{"pos": "v.", "meaning": "宣布；声明", "example": "The country declared its independence.", "translation": "该国宣布独立。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000228-ce14-0000-0000-000000000000', 'decline', '/dɪˈklaɪn/', 'v.', '[{"pos": "v.", "meaning": "下降；拒绝", "example": "Sales have declined by 10% this year.", "translation": "今年销售额下降了10%。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000229-ce14-0000-0000-000000000000', 'decorate', '/ˈdekəreɪt/', 'v.', '[{"pos": "v.", "meaning": "装饰；装修", "example": "They decorated the room with balloons and flowers.", "translation": "他们用气球和鲜花装饰了房间。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000230-ce14-0000-0000-000000000000', 'decrease', '/dɪˈkriːs/', 'v.', '[{"pos": "v.", "meaning": "减少；下降", "example": "The number of accidents has decreased significantly.", "translation": "事故数量已显著减少。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000231-ce14-0000-0000-000000000000', 'dedicate', '/ˈdedɪkeɪt/', 'v.', '[{"pos": "v.", "meaning": "致力于；奉献", "example": "She dedicated her life to helping the poor.", "translation": "她一生致力于帮助穷人。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000232-ce14-0000-0000-000000000000', 'defeat', '/dɪˈfiːt/', 'v.', '[{"pos": "v.", "meaning": "击败；战胜", "example": "Our team defeated the champions in the final.", "translation": "我们的队伍在决赛中击败了冠军队。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000233-ce14-0000-0000-000000000000', 'defend', '/dɪˈfend/', 'v.', '[{"pos": "v.", "meaning": "保卫；辩护", "example": "The lawyer defended his client in court.", "translation": "律师在法庭上为他的当事人辩护。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000234-ce14-0000-0000-000000000000', 'define', '/dɪˈfaɪn/', 'v.', '[{"pos": "v.", "meaning": "定义；限定", "example": "How do you define success?", "translation": "你如何定义成功？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000235-ce14-0000-0000-000000000000', 'definite', '/ˈdefɪnət/', 'adj.', '[{"pos": "adj.", "meaning": "明确的；确定的", "example": "We need a definite answer by tomorrow.", "translation": "我们明天之前需要一个明确的答案。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000236-ce14-0000-0000-000000000000', 'delay', '/dɪˈleɪ/', 'v.', '[{"pos": "v.", "meaning": "推迟；延误", "example": "The flight was delayed for two hours.", "translation": "航班延误了两个小时。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000237-ce14-0000-0000-000000000000', 'deliberate', '/dɪˈlɪbərət/', 'adj.', '[{"pos": "adj.", "meaning": "故意的；深思熟虑的", "example": "It was a deliberate attempt to mislead the public.", "translation": "这是一次蓄意误导公众的尝试。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000238-ce14-0000-0000-000000000000', 'delicate', '/ˈdelɪkət/', 'adj.', '[{"pos": "adj.", "meaning": "精致的；脆弱的", "example": "The vase is very delicate, so handle it with care.", "translation": "这个花瓶非常精致，要小心轻放。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000239-ce14-0000-0000-000000000000', 'deliver', '/dɪˈlɪvər/', 'v.', '[{"pos": "v.", "meaning": "递送；发表", "example": "The postman delivers mail every morning.", "translation": "邮递员每天早上送信。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000240-ce14-0000-0000-000000000000', 'demand', '/dɪˈmɑːnd/', 'n.', '[{"pos": "n.", "meaning": "需求；要求", "example": "There is a high demand for skilled workers.", "translation": "对技术工人的需求很高。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000241-ce14-0000-0000-000000000000', 'demonstrate', '/ˈdemənstreɪt/', 'v.', '[{"pos": "v.", "meaning": "证明；演示", "example": "The experiment demonstrates the effects of gravity.", "translation": "这个实验演示了重力的效果。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000242-ce14-0000-0000-000000000000', 'deny', '/dɪˈnaɪ/', 'v.', '[{"pos": "v.", "meaning": "否认；拒绝", "example": "He denied any involvement in the crime.", "translation": "他否认与犯罪有任何牵连。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000243-ce14-0000-0000-000000000000', 'depart', '/dɪˈpɑːrt/', 'v.', '[{"pos": "v.", "meaning": "离开；出发", "example": "The train departs at 8:00 a.m.", "translation": "火车早上8点出发。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000244-ce14-0000-0000-000000000000', 'depend', '/dɪˈpend/', 'v.', '[{"pos": "v.", "meaning": "依赖；取决于", "example": "The result depends on your effort.", "translation": "结果取决于你的努力。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000245-ce14-0000-0000-000000000000', 'deposit', '/dɪˈpɒzɪt/', 'n.', '[{"pos": "n.", "meaning": "存款；押金", "example": "You need to pay a deposit when you rent an apartment.", "translation": "租公寓时需要支付押金。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000246-ce14-0000-0000-000000000000', 'depress', '/dɪˈpres/', 'v.', '[{"pos": "v.", "meaning": "使沮丧；使萧条", "example": "The bad news depressed everyone in the office.", "translation": "坏消息让办公室里的每个人都很沮丧。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000247-ce14-0000-0000-000000000000', 'derive', '/dɪˈraɪv/', 'v.', '[{"pos": "v.", "meaning": "获得；起源", "example": "She derives great pleasure from reading.", "translation": "她从阅读中获得极大的乐趣。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000248-ce14-0000-0000-000000000000', 'describe', '/dɪˈskraɪb/', 'v.', '[{"pos": "v.", "meaning": "描述；形容", "example": "Can you describe what happened yesterday?", "translation": "你能描述一下昨天发生了什么吗？"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000249-ce14-0000-0000-000000000000', 'deserve', '/dɪˈzɜːrv/', 'v.', '[{"pos": "v.", "meaning": "值得；应得", "example": "She deserves a promotion for her hard work.", "translation": "她因辛勤工作而应得到晋升。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000250-ce14-0000-0000-000000000000', 'design', '/dɪˈzaɪn/', 'v.', '[{"pos": "v.", "meaning": "设计；计划", "example": "She designed a beautiful logo for the company.", "translation": "她为公司设计了一个漂亮的标志。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000251-ce14-0000-0000-000000000000', 'desire', '/dɪˈzaɪər/', 'n.', '[{"pos": "n.", "meaning": "渴望；欲望", "example": "He has a strong desire to succeed.", "translation": "他有强烈的成功欲望。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000252-ce14-0000-0000-000000000000', 'desperate', '/ˈdespərət/', 'adj.', '[{"pos": "adj.", "meaning": "绝望的；不顾一切的", "example": "She was desperate to find a job.", "translation": "她迫切地想找一份工作。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000253-ce14-0000-0000-000000000000', 'destination', '/ˌdestɪˈneɪʃn/', 'n.', '[{"pos": "n.", "meaning": "目的地", "example": "Paris is a popular tourist destination.", "translation": "巴黎是一个受欢迎的旅游目的地。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000254-ce14-0000-0000-000000000000', 'detect', '/dɪˈtekt/', 'v.', '[{"pos": "v.", "meaning": "发现；探测", "example": "The sensor can detect changes in temperature.", "translation": "传感器可以检测温度变化。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000255-ce14-0000-0000-000000000000', 'determine', '/dɪˈtɜːrmɪn/', 'v.', '[{"pos": "v.", "meaning": "决定；确定", "example": "Hard work determines your success.", "translation": "努力工作决定了你的成功。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000256-ce14-0000-0000-000000000000', 'develop', '/dɪˈveləp/', 'v.', '[{"pos": "v.", "meaning": "发展；开发", "example": "The company plans to develop new products.", "translation": "公司计划开发新产品。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000257-ce14-0000-0000-000000000000', 'device', '/dɪˈvaɪs/', 'n.', '[{"pos": "n.", "meaning": "设备；装置", "example": "This device can measure air quality.", "translation": "这个设备可以测量空气质量。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000258-ce14-0000-0000-000000000000', 'devote', '/dɪˈvəʊt/', 'v.', '[{"pos": "v.", "meaning": "奉献；致力于", "example": "He devoted his career to medical research.", "translation": "他将职业生涯奉献给了医学研究。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000259-ce14-0000-0000-000000000000', 'digest', '/daɪˈdʒest/', 'v.', '[{"pos": "v.", "meaning": "消化；理解", "example": "It takes time to digest such complex information.", "translation": "消化如此复杂的信息需要时间。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000260-ce14-0000-0000-000000000000', 'dilemma', '/dɪˈlemə/', 'n.', '[{"pos": "n.", "meaning": "困境；进退两难", "example": "She faced a dilemma between career and family.", "translation": "她面临事业和家庭之间的两难境地。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000261-ce14-0000-0000-000000000000', 'dimension', '/daɪˈmenʃn/', 'n.', '[{"pos": "n.", "meaning": "维度；尺寸", "example": "The room''s dimensions are 5 meters by 3 meters.", "translation": "房间的尺寸是5米乘3米。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000262-ce14-0000-0000-000000000000', 'diminish', '/dɪˈmɪnɪʃ/', 'v.', '[{"pos": "v.", "meaning": "减少；缩小", "example": "His influence has diminished over the years.", "translation": "这些年来他的影响力已经减弱了。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000263-ce14-0000-0000-000000000000', 'diplomat', '/ˈdɪpləmæt/', 'n.', '[{"pos": "n.", "meaning": "外交官", "example": "The diplomat negotiated a peace agreement.", "translation": "外交官谈判达成了和平协议。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000264-ce14-0000-0000-000000000000', 'discipline', '/ˈdɪsɪplɪn/', 'n.', '[{"pos": "n.", "meaning": "纪律；学科", "example": "Self-discipline is essential for success.", "translation": "自律对成功至关重要。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000265-ce14-0000-0000-000000000000', 'discount', '/ˈdɪskaʊnt/', 'n.', '[{"pos": "n.", "meaning": "折扣", "example": "The store offers a 20% discount on all items.", "translation": "商店所有商品打八折。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000266-ce14-0000-0000-000000000000', 'discourage', '/dɪsˈkʌrɪdʒ/', 'v.', '[{"pos": "v.", "meaning": "使气馁；劝阻", "example": "Don''t be discouraged by failure.", "translation": "不要因失败而气馁。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000267-ce14-0000-0000-000000000000', 'discover', '/dɪˈskʌvər/', 'v.', '[{"pos": "v.", "meaning": "发现", "example": "Columbus discovered America in 1492.", "translation": "哥伦布于1492年发现了美洲。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000268-ce14-0000-0000-000000000000', 'discrimination', '/dɪˌskrɪmɪˈneɪʃn/', 'n.', '[{"pos": "n.", "meaning": "歧视；辨别", "example": "Racial discrimination is illegal in many countries.", "translation": "种族歧视在许多国家是违法的。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000269-ce14-0000-0000-000000000000', 'dismiss', '/dɪˈsmɪs/', 'v.', '[{"pos": "v.", "meaning": "解雇；驳回", "example": "The manager dismissed the employee for misconduct.", "translation": "经理因行为不当解雇了那名员工。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000270-ce14-0000-0000-000000000000', 'display', '/dɪˈspleɪ/', 'v.', '[{"pos": "v.", "meaning": "展示；显示", "example": "The museum displays ancient artifacts.", "translation": "博物馆展出古代文物。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000271-ce14-0000-0000-000000000000', 'distinct', '/dɪˈstɪŋkt/', 'adj.', '[{"pos": "adj.", "meaning": "不同的；明显的", "example": "There are two distinct approaches to this problem.", "translation": "这个问题有两种不同的处理方式。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000272-ce14-0000-0000-000000000000', 'distinguish', '/dɪˈstɪŋɡwɪʃ/', 'v.', '[{"pos": "v.", "meaning": "区分；辨别", "example": "It''s hard to distinguish between the two products.", "translation": "很难区分这两种产品。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000273-ce14-0000-0000-000000000000', 'distribute', '/dɪˈstrɪbjuːt/', 'v.', '[{"pos": "v.", "meaning": "分配；分发", "example": "The teacher distributed the test papers to the students.", "translation": "老师把试卷分发给学生。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000274-ce14-0000-0000-000000000000', 'diverse', '/daɪˈvɜːrs/', 'adj.', '[{"pos": "adj.", "meaning": "多样的；不同的", "example": "The city has a diverse population.", "translation": "这个城市有多样化的人口。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000275-ce14-0000-0000-000000000000', 'document', '/ˈdɒkjumənt/', 'n.', '[{"pos": "n.", "meaning": "文件；文档", "example": "Please bring all the necessary documents to the meeting.", "translation": "请带齐所有必要的文件参加会议。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000276-ce14-0000-0000-000000000000', 'domestic', '/dəˈmestɪk/', 'adj.', '[{"pos": "adj.", "meaning": "国内的；家庭的", "example": "Domestic flights are usually cheaper than international ones.", "translation": "国内航班通常比国际航班便宜。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000277-ce14-0000-0000-000000000000', 'donate', '/dəʊˈneɪt/', 'v.', '[{"pos": "v.", "meaning": "捐赠；捐献", "example": "She donated blood to the hospital.", "translation": "她向医院献血。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000278-ce14-0000-0000-000000000000', 'dormitory', '/ˈdɔːrmɪtri/', 'n.', '[{"pos": "n.", "meaning": "宿舍", "example": "Most freshmen live in the dormitory.", "translation": "大多数大一新生住在宿舍里。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000279-ce14-0000-0000-000000000000', 'draft', '/drɑːft/', 'n.', '[{"pos": "n.", "meaning": "草稿；草案", "example": "I need to finish the first draft of my essay.", "translation": "我需要完成论文的初稿。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000280-ce14-0000-0000-000000000000', 'dramatic', '/drəˈmætɪk/', 'adj.', '[{"pos": "adj.", "meaning": "戏剧性的；显著的", "example": "There has been a dramatic increase in sales.", "translation": "销售额出现了显著增长。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000281-ce14-0000-0000-000000000000', 'drought', '/draʊt/', 'n.', '[{"pos": "n.", "meaning": "干旱", "example": "The drought destroyed many crops this year.", "translation": "今年的干旱毁坏了许多庄稼。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000282-ce14-0000-0000-000000000000', 'dump', '/dʌmp/', 'v.', '[{"pos": "v.", "meaning": "倾倒；丢弃", "example": "It''s illegal to dump waste in the river.", "translation": "向河里倾倒废物是违法的。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000283-ce14-0000-0000-000000000000', 'durable', '/ˈdjʊərəbl/', 'adj.', '[{"pos": "adj.", "meaning": "耐用的；持久的", "example": "This material is very durable and long-lasting.", "translation": "这种材料非常耐用且持久。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000284-ce14-0000-0000-000000000000', 'duty', '/ˈdjuːti/', 'n.', '[{"pos": "n.", "meaning": "责任；职责", "example": "It is our duty to protect the environment.", "translation": "保护环境是我们的责任。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000285-ce14-0000-0000-000000000000', 'economy', '/ɪˈkɒnəmi/', 'n.', '[{"pos": "n.", "meaning": "经济；节约", "example": "The country''s economy is growing rapidly.", "translation": "该国经济正在快速增长。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000286-ce14-0000-0000-000000000000', 'edition', '/ɪˈdɪʃn/', 'n.', '[{"pos": "n.", "meaning": "版本；版次", "example": "This is the third edition of the textbook.", "translation": "这是这本教科书的第三版。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000287-ce14-0000-0000-000000000000', 'educate', '/ˈedʒukeɪt/', 'v.', '[{"pos": "v.", "meaning": "教育；培养", "example": "Parents play an important role in educating their children.", "translation": "父母在教育孩子方面起着重要作用。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000288-ce14-0000-0000-000000000000', 'effect', '/ɪˈfekt/', 'n.', '[{"pos": "n.", "meaning": "效果；影响", "example": "The medicine had a positive effect on the patient.", "translation": "这种药物对病人产生了积极的效果。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000289-ce14-0000-0000-000000000000', 'efficient', '/ɪˈfɪʃnt/', 'adj.', '[{"pos": "adj.", "meaning": "高效的；有效率的", "example": "We need a more efficient way to complete this task.", "translation": "我们需要一种更高效的方式来完成这项任务。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000290-ce14-0000-0000-000000000000', 'elaborate', '/ɪˈlæbərət/', 'adj.', '[{"pos": "adj.", "meaning": "精心制作的；详尽的", "example": "She prepared an elaborate plan for the event.", "translation": "她为活动准备了一个详尽的计划。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000291-ce14-0000-0000-000000000000', 'elect', '/ɪˈlekt/', 'v.', '[{"pos": "v.", "meaning": "选举；选择", "example": "The people elected a new president.", "translation": "人民选举了一位新总统。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000292-ce14-0000-0000-000000000000', 'element', '/ˈelɪmənt/', 'n.', '[{"pos": "n.", "meaning": "元素；要素", "example": "Oxygen is an essential element for life.", "translation": "氧气是生命的基本元素。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000293-ce14-0000-0000-000000000000', 'eliminate', '/ɪˈlɪmɪneɪt/', 'v.', '[{"pos": "v.", "meaning": "消除；淘汰", "example": "We need to eliminate unnecessary expenses.", "translation": "我们需要消除不必要的开支。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000294-ce14-0000-0000-000000000000', 'embrace', '/ɪmˈbreɪs/', 'v.', '[{"pos": "v.", "meaning": "拥抱；接受", "example": "She embraced the opportunity to study abroad.", "translation": "她欣然接受了出国留学的机会。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000295-ce14-0000-0000-000000000000', 'emerge', '/ɪˈmɜːrdʒ/', 'v.', '[{"pos": "v.", "meaning": "出现；浮现", "example": "New problems emerged during the project.", "translation": "项目期间出现了新问题。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000296-ce14-0000-0000-000000000000', 'emergency', '/ɪˈmɜːrdʒənsi/', 'n.', '[{"pos": "n.", "meaning": "紧急情况", "example": "In case of emergency, call 120 immediately.", "translation": "遇到紧急情况，请立即拨打120。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000297-ce14-0000-0000-000000000000', 'emit', '/ɪˈmɪt/', 'v.', '[{"pos": "v.", "meaning": "发出；排放", "example": "The factory emits harmful gases into the air.", "translation": "工厂向空气中排放有害气体。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000298-ce14-0000-0000-000000000000', 'emotion', '/ɪˈməʊʃn/', 'n.', '[{"pos": "n.", "meaning": "情感；情绪", "example": "She couldn''t hide her emotions during the speech.", "translation": "演讲时她无法掩饰自己的情感。"}]'::jsonb, 'CET4', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000299-ce14-0000-0000-000000000000', 'emphasis', '/ˈemfəsɪs/', 'n.', '[{"pos": "n.", "meaning": "强调；重点", "example": "The school puts great emphasis on reading.", "translation": "学校非常重视阅读。"}]'::jsonb, 'CET4', true)
;

INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000300-ce16-0000-0000-000000000000', 'voluntary', '/ˈvɒləntəri/', 'adj.', '[{"pos": "adj.", "meaning": "自愿的，志愿的", "example": "Participation in the survey is entirely voluntary.", "translation": "参与这项调查完全是自愿的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000301-ce16-0000-0000-000000000000', 'voracious', '/vəˈreɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "贪婪的，贪吃的", "example": "She is a voracious reader who devours books in days.", "translation": "她是一个贪婪的阅读者，几天内就能读完几本书。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000302-ce16-0000-0000-000000000000', 'warrant', '/ˈwɒrənt/', 'n./v.', '[{"pos": "n.", "meaning": "授权令，正当理由", "example": "The police obtained a warrant to search the premises.", "translation": "警察获得了搜查房屋的授权令。"}, {"pos": "v.", "meaning": "保证，保证有", "example": "Nothing can warrant such drastic action.", "translation": "没有什么能为如此激烈的行动提供正当理由。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000303-ce16-0000-0000-000000000000', 'wary', '/ˈweəri/', 'adj.', '[{"pos": "adj.", "meaning": "谨慎的，警惕的", "example": "Investors are wary of putting money into the volatile market.", "translation": "投资者对把钱投入动荡的市场持谨慎态度。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000304-ce16-0000-0000-000000000000', 'wholesale', '/ˈhoʊlseɪl/', 'adj./n.', '[{"pos": "adj.", "meaning": "批发的，大规模的", "example": "The company offers wholesale discounts to retailers.", "translation": "该公司向零售商提供批发折扣。"}, {"pos": "n.", "meaning": "批发", "example": "Buying in wholesale can significantly reduce costs.", "translation": "批量购买可以显著降低成本。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000305-ce16-0000-0000-000000000000', 'wield', '/wiːld/', 'v.', '[{"pos": "v.", "meaning": "使用，行使", "example": "The prime minister wielded considerable influence over policy.", "translation": "首相对政策拥有相当大的影响力。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000306-ce16-0000-0000-000000000000', 'zealous', '/ˈzeləs/', 'adj.', '[{"pos": "adj.", "meaning": "热情的，积极的", "example": "The zealous campaigner dedicated years to the cause.", "translation": "这位热心的活动家为这项事业奉献了多年。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000307-ce16-0000-0000-000000000000', 'abolish', '/əˈbɒlɪʃ/', 'v.', '[{"pos": "v.", "meaning": "废除，取消", "example": "The government decided to abolish the outdated law.", "translation": "政府决定废除过时的法律。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000308-ce16-0000-0000-000000000000', 'abstraction', '/æbˈstrækʃən/', 'n.', '[{"pos": "n.", "meaning": "抽象，抽象概念", "example": "Justice is an abstraction that is difficult to define precisely.", "translation": "正义是一个难以精确定义的抽象概念。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000309-ce16-0000-0000-000000000000', 'acquisition', '/ˌækwɪˈzɪʃən/', 'n.', '[{"pos": "n.", "meaning": "获得，收购", "example": "The acquisition of the smaller company expanded their market share.", "translation": "收购较小的公司扩大了他们的市场份额。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000310-ce16-0000-0000-000000000000', 'adjacent', '/əˈdʒeɪsənt/', 'adj.', '[{"pos": "adj.", "meaning": "邻近的，毗连的", "example": "The park is adjacent to the school.", "translation": "公园与学校相邻。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000311-ce16-0000-0000-000000000000', 'adverse', '/ˈædvɜːrs/', 'adj.', '[{"pos": "adj.", "meaning": "不利的，有害的", "example": "Adverse weather conditions forced the cancellation of the flight.", "translation": "恶劣的天气条件迫使航班取消。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000312-ce16-0000-0000-000000000000', 'aesthetic', '/esˈθetɪk/', 'adj./n.', '[{"pos": "adj.", "meaning": "审美的，美学的", "example": "The building''s aesthetic design won several architectural awards.", "translation": "这座建筑的美学设计获得了多项建筑奖项。"}, {"pos": "n.", "meaning": "美学，审美观", "example": "Artists often have a different aesthetic from the general public.", "translation": "艺术家的审美观往往与普通人不同。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000313-ce16-0000-0000-000000000000', 'aggregate', '/ˈæɡrɪɡət/', 'adj./v./n.', '[{"pos": "adj.", "meaning": "总计的，合计的", "example": "The aggregate demand for the product exceeded expectations.", "translation": "该产品的总需求超出了预期。"}, {"pos": "v.", "meaning": "合计，总计", "example": "The costs aggregate to more than we originally budgeted.", "translation": "总成本超过了我们最初的预算。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000314-ce16-0000-0000-000000000000', 'allegiance', '/əˈliːdʒəns/', 'n.', '[{"pos": "n.", "meaning": "忠诚，忠贞", "example": "Soldiers pledge their allegiance to the constitution.", "translation": "士兵们宣誓忠于宪法。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000315-ce16-0000-0000-000000000000', 'alleviate', '/əˈliːvieɪt/', 'v.', '[{"pos": "v.", "meaning": "减轻，缓解", "example": "The medicine helped alleviate her symptoms.", "translation": "这种药物帮助缓解了她的症状。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000316-ce16-0000-0000-000000000000', 'ambivalent', '/æmˈbɪvələnt/', 'adj.', '[{"pos": "adj.", "meaning": "矛盾的，犹豫不决的", "example": "She felt ambivalent about accepting the job offer.", "translation": "她对是否接受这份工作感到矛盾。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000317-ce16-0000-0000-000000000000', 'ameliorate', '/əˈmiːliəreɪt/', 'v.', '[{"pos": "v.", "meaning": "改善，改良", "example": "The new policy aims to ameliorate working conditions.", "translation": "新政策旨在改善工作条件。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000318-ce16-0000-0000-000000000000', 'analogy', '/əˈnælədʒi/', 'n.', '[{"pos": "n.", "meaning": "类比，类推", "example": "The teacher used an analogy to explain the complex concept.", "translation": "老师用类比来解释这个复杂的概念。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000319-ce16-0000-0000-000000000000', 'anarchy', '/ˈænərki/', 'n.', '[{"pos": "n.", "meaning": "无政府状态，混乱", "example": "The country descended into anarchy after the government collapsed.", "translation": "政府垮台后，该国陷入了无政府状态。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000320-ce16-0000-0000-000000000000', 'anecdote', '/ˈænɪkdəʊt/', 'n.', '[{"pos": "n.", "meaning": "轶事，趣闻", "example": "He shared an amusing anecdote about his childhood.", "translation": "他分享了一个关于他童年的有趣轶事。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000321-ce16-0000-0000-000000000000', 'anthology', '/ænˈθɒlədʒi/', 'n.', '[{"pos": "n.", "meaning": "选集，文集", "example": "The anthology includes poems from various authors.", "translation": "这本选集收录了不同作者的诗歌。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000322-ce16-0000-0000-000000000000', 'apparatus', '/ˌæpəˈreɪtəs/', 'n.', '[{"pos": "n.", "meaning": "器械，机构", "example": "The laboratory is equipped with the latest apparatus.", "translation": "实验室配备了最新的仪器设备。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000323-ce16-0000-0000-000000000000', 'applicable', '/əˈplɪkəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "可应用的，适用的", "example": "The new regulations are applicable to all companies.", "translation": "新规定适用于所有公司。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000324-ce16-0000-0000-000000000000', 'appraisal', '/əˈpreɪzəl/', 'n.', '[{"pos": "n.", "meaning": "评估，估价", "example": "The manager conducted a performance appraisal for each employee.", "translation": "经理对每位员工进行了绩效评估。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000325-ce16-0000-0000-000000000000', 'arbitrary', '/ˈɑːrbɪtreri/', 'adj.', '[{"pos": "adj.", "meaning": "任意的，武断的", "example": "The decision seemed arbitrary and lacked proper justification.", "translation": "这个决定似乎很武断，缺乏适当的理由。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000326-ce16-0000-0000-000000000000', 'archive', '/ˈɑːrkaɪv/', 'n./v.', '[{"pos": "n.", "meaning": "档案，档案馆", "example": "The national archive contains historical documents dating back centuries.", "translation": "国家档案馆保存着几个世纪前的历史文献。"}, {"pos": "v.", "meaning": "存档", "example": "All documents should be archived for future reference.", "translation": "所有文件都应存档以备将来参考。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000327-ce16-0000-0000-000000000000', 'articulate', '/ɑːrˈtɪkjuleɪt/', 'adj./v.', '[{"pos": "adj.", "meaning": "口齿清晰的，善于表达的", "example": "She is an articulate speaker who can convey complex ideas clearly.", "translation": "她是一位口齿清晰的演讲者，能清楚地传达复杂的想法。"}, {"pos": "v.", "meaning": "清楚地表达", "example": "He struggled to articulate his feelings about the situation.", "translation": "他难以清楚地表达对这种情况的感受。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000328-ce16-0000-0000-000000000000', 'assertion', '/əˈsɜːrʃən/', 'n.', '[{"pos": "n.", "meaning": "断言，主张", "example": "His assertion that the data was flawed was later proven correct.", "translation": "他关于数据有缺陷的断言后来被证明是正确的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000329-ce16-0000-0000-000000000000', 'asylum', '/əˈsaɪləm/', 'n.', '[{"pos": "n.", "meaning": "庇护，避难所", "example": "The refugees sought asylum in the neighboring country.", "translation": "难民们在邻国寻求庇护。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000330-ce16-0000-0000-000000000000', 'attest', '/əˈtest/', 'v.', '[{"pos": "v.", "meaning": "证明，证实", "example": "The witness can attest to the defendant''s character.", "translation": "证人可以证实被告的品格。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000331-ce16-0000-0000-000000000000', 'attribute', '/əˈtrɪbjuːt/', 'v./n.', '[{"pos": "v.", "meaning": "归因于，归属于", "example": "She attributed her success to hard work and perseverance.", "translation": "她将成功归因于努力工作和坚持不懈。"}, {"pos": "n.", "meaning": "属性，特性", "example": "Patience is an essential attribute for a teacher.", "translation": "耐心是教师必备的特质。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000332-ce16-0000-0000-000000000000', 'augment', '/ɔːɡˈment/', 'v.', '[{"pos": "v.", "meaning": "增加，增大", "example": "She took a part-time job to augment her income.", "translation": "她做兼职工作来增加收入。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000333-ce16-0000-0000-000000000000', 'auspicious', '/ɔːˈspɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "吉利的，有前途的", "example": "The sunny weather made for an auspicious start to the festival.", "translation": "晴朗的天气为节日开了一个好头。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000334-ce16-0000-0000-000000000000', 'austere', '/ɒˈstɪər/', 'adj.', '[{"pos": "adj.", "meaning": "简朴的，严厉的", "example": "The monks lived an austere life devoted to prayer.", "translation": "僧侣们过着简朴的生活，专心祈祷。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000335-ce16-0000-0000-000000000000', 'aversion', '/əˈvɜːrʒən/', 'n.', '[{"pos": "n.", "meaning": "厌恶，反感", "example": "She has an aversion to public speaking.", "translation": "她厌恶公开演讲。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000336-ce16-0000-0000-000000000000', 'banal', '/bəˈnɑːl/', 'adj.', '[{"pos": "adj.", "meaning": "平庸的，陈腐的", "example": "The movie''s plot was predictable and banal.", "translation": "这部电影的情节平淡无奇且陈腐。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000337-ce16-0000-0000-000000000000', 'benevolent', '/bəˈnevələnt/', 'adj.', '[{"pos": "adj.", "meaning": "仁慈的，慈善的", "example": "The benevolent donor funded the construction of a new hospital.", "translation": "这位仁慈的捐赠者资助了新医院的建设。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000338-ce16-0000-0000-000000000000', 'bias', '/ˈbaɪəs/', 'n./v.', '[{"pos": "n.", "meaning": "偏见，偏心", "example": "The study was criticized for its gender bias.", "translation": "这项研究因性别偏见而受到批评。"}, {"pos": "v.", "meaning": "使有偏见", "example": "Media coverage can bias public opinion.", "translation": "媒体报道会使公众舆论产生偏见。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000339-ce16-0000-0000-000000000000', 'bourgeois', '/bʊrˈʒwɑː/', 'adj./n.', '[{"pos": "adj.", "meaning": "资产阶级的，中产阶级的", "example": "The novel critiques bourgeois values and conventions.", "translation": "这部小说批判了资产阶级的价值观和习俗。"}, {"pos": "n.", "meaning": "资产阶级成员", "example": "The movement claimed to represent the interests of the bourgeoisie.", "translation": "该运动声称代表资产阶级的利益。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000340-ce16-0000-0000-000000000000', 'buoyant', '/ˈbɔɪənt/', 'adj.', '[{"pos": "adj.", "meaning": "有浮力的，乐观的", "example": "The buoyant economy created many new job opportunities.", "translation": "繁荣的经济创造了许多新的就业机会。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000341-ce16-0000-0000-000000000000', 'capitulate', '/kəˈpɪtʃuleɪt/', 'v.', '[{"pos": "v.", "meaning": "投降，屈服", "example": "After months of resistance, the army was forced to capitulate.", "translation": "经过数月的抵抗，军队被迫投降。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000342-ce16-0000-0000-000000000000', 'cogent', '/ˈkoʊdʒənt/', 'adj.', '[{"pos": "adj.", "meaning": "有说服力的，令人信服的", "example": "She presented a cogent argument for the proposed changes.", "translation": "她为提议的变更提出了有说服力的论点。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000343-ce16-0000-0000-000000000000', 'coherent', '/koʊˈhɪrənt/', 'adj.', '[{"pos": "adj.", "meaning": "连贯的，有条理的", "example": "She presented a coherent argument for the proposed changes.", "translation": "她为提议的变更提出了连贯的论点。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000344-ce16-0000-0000-000000000000', 'cohesion', '/koʊˈhiːʒən/', 'n.', '[{"pos": "n.", "meaning": "凝聚力，团结", "example": "Team cohesion is essential for achieving organizational goals.", "translation": "团队凝聚力对于实现组织目标至关重要。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000345-ce16-0000-0000-000000000000', 'collateral', '/kəˈlætərəl/', 'n./adj.', '[{"pos": "n.", "meaning": "抵押品，担保物", "example": "The bank required collateral for the loan.", "translation": "银行要求贷款的抵押品。"}, {"pos": "adj.", "meaning": "附带的，平行的", "example": "The collateral damage from the bombing was extensive.", "translation": "轰炸造成的附带损害是广泛的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000346-ce16-0000-0000-000000000000', 'commensurate', '/kəˈmenʃərət/', 'adj.', '[{"pos": "adj.", "meaning": "相称的，相当的", "example": "The salary should be commensurate with experience.", "translation": "工资应与经验相称。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000347-ce16-0000-0000-000000000000', 'commodity', '/kəˈmɒdəti/', 'n.', '[{"pos": "n.", "meaning": "商品，日用品", "example": "Water is becoming an increasingly scarce commodity.", "translation": "水正成为日益稀缺的商品。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000348-ce16-0000-0000-000000000000', 'complementary', '/ˌkɒmplɪˈmentəri/', 'adj.', '[{"pos": "adj.", "meaning": "补充的，互补的", "example": "The two courses are complementary and should be taken together.", "translation": "这两门课程是互补的，应该一起学习。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000349-ce16-0000-0000-000000000000', 'comply', '/kəmˈplaɪ/', 'v.', '[{"pos": "v.", "meaning": "遵从，服从", "example": "All employees must comply with the safety regulations.", "translation": "所有员工必须遵守安全规定。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000350-ce16-0000-0000-000000000000', 'concede', '/kənˈsiːd/', 'v.', '[{"pos": "v.", "meaning": "承认，让步", "example": "He had to concede that his opponent had won the debate.", "translation": "他不得不承认对手赢得了辩论。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000351-ce16-0000-0000-000000000000', 'conciliatory', '/kənˈsɪliətɔːri/', 'adj.', '[{"pos": "adj.", "meaning": "安抚的，调解的", "example": "The president adopted a conciliatory tone in his speech.", "translation": "总统在演讲中采用了安抚的语气。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000352-ce16-0000-0000-000000000000', 'concurrent', '/kənˈkʌrənt/', 'adj.', '[{"pos": "adj.", "meaning": "同时发生的，并行的", "example": "The conference featured concurrent sessions on various topics.", "translation": "会议设有多个关于不同主题的并行会议。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000353-ce16-0000-0000-000000000000', 'condescend', '/ˌkɒndɪˈsend/', 'v.', '[{"pos": "v.", "meaning": "屈尊，俯就", "example": "She disliked it when managers condescended to their employees.", "translation": "她不喜欢管理者对员工居高临下。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000354-ce16-0000-0000-000000000000', 'confluence', '/ˈkɒnfluəns/', 'n.', '[{"pos": "n.", "meaning": "汇合，融合", "example": "The city is located at the confluence of two major rivers.", "translation": "这座城市位于两条主要河流的汇合处。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000355-ce16-0000-0000-000000000000', 'conjunction', '/kənˈdʒʌŋkʃən/', 'n.', '[{"pos": "n.", "meaning": "连接，联合", "example": "The drug works in conjunction with other treatments.", "translation": "这种药物与其他治疗方法联合使用。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000356-ce16-0000-0000-000000000000', 'connoisseur', '/ˌkɒnəˈsɜːr/', 'n.', '[{"pos": "n.", "meaning": "鉴赏家，行家", "example": "She is a connoisseur of fine wines.", "translation": "她是一位葡萄酒鉴赏家。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000357-ce16-0000-0000-000000000000', 'conscience', '/ˈkɒnʃəns/', 'n.', '[{"pos": "n.", "meaning": "良心，道德心", "example": "His conscience would not allow him to lie about the incident.", "translation": "他的良心不允许他就这件事撒谎。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000358-ce16-0000-0000-000000000000', 'consolidate', '/kənˈsɒlɪdeɪt/', 'v.', '[{"pos": "v.", "meaning": "巩固，合并", "example": "The company plans to consolidate its operations.", "translation": "该公司计划整合其业务。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000359-ce16-0000-0000-000000000000', 'constraint', '/kənˈstreɪnt/', 'n.', '[{"pos": "n.", "meaning": "限制，约束", "example": "Budget constraints prevented us from hiring more staff.", "translation": "预算限制阻止我们雇用更多员工。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000360-ce16-0000-0000-000000000000', 'consummate', '/ˈkɒnsəmət/', 'adj./v.', '[{"pos": "adj.", "meaning": "完美的，熟练的", "example": "She is a consummate professional in her field.", "translation": "她是自己领域的完美专业人士。"}, {"pos": "v.", "meaning": "完成，实现", "example": "The deal was consummated after months of negotiations.", "translation": "经过数月的谈判，交易最终完成。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000361-ce16-0000-0000-000000000000', 'contempt', '/kənˈtempt/', 'n.', '[{"pos": "n.", "meaning": "轻视，蔑视", "example": "He showed contempt for the rules by ignoring them completely.", "translation": "他完全无视规则，表现出对规则的蔑视。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000362-ce16-0000-0000-000000000000', 'contentious', '/kənˈtenʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "有争议的，好争论的", "example": "The contentious issue divided the committee.", "translation": "这个有争议的问题使委员会产生了分歧。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000363-ce16-0000-0000-000000000000', 'conundrum', '/kəˈnʌndrəm/', 'n.', '[{"pos": "n.", "meaning": "难题，谜语", "example": "The team faced a conundrum about how to allocate resources.", "translation": "团队面临着如何分配资源的难题。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000364-ce16-0000-0000-000000000000', 'convergence', '/kənˈvɜːrdʒəns/', 'n.', '[{"pos": "n.", "meaning": "会聚，趋同", "example": "The convergence of technology and art created new possibilities.", "translation": "技术与艺术的融合创造了新的可能性。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000365-ce16-0000-0000-000000000000', 'copious', '/ˈkoʊpiəs/', 'adj.', '[{"pos": "adj.", "meaning": "大量的，丰富的", "example": "She took copious notes during the lecture.", "translation": "她在讲座期间做了大量笔记。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000366-ce16-0000-0000-000000000000', 'correlate', '/ˈkɒrəleɪt/', 'v.', '[{"pos": "v.", "meaning": "相关联，关联", "example": "Studies show that exercise correlates with improved mental health.", "translation": "研究表明运动与改善心理健康相关联。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000367-ce16-0000-0000-000000000000', 'corrode', '/kəˈroʊd/', 'v.', '[{"pos": "v.", "meaning": "腐蚀，侵蚀", "example": "Salt water can corrode metal surfaces over time.", "translation": "盐水会随时间腐蚀金属表面。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000368-ce16-0000-0000-000000000000', 'counterpart', '/ˈkaʊntərpɑːrt/', 'n.', '[{"pos": "n.", "meaning": "对应的人或物", "example": "She met with her counterpart in the Japanese company.", "translation": "她会见了日本公司的对应人员。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000369-ce16-0000-0000-000000000000', 'covenant', '/ˈkʌvənənt/', 'n.', '[{"pos": "n.", "meaning": "契约，盟约", "example": "The nations signed a covenant to protect human rights.", "translation": "各国签署了保护人权的盟约。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000370-ce16-0000-0000-000000000000', 'culminate', '/ˈkʌlmɪneɪt/', 'v.', '[{"pos": "v.", "meaning": "达到高潮，告终", "example": "Years of hard work culminated in winning the championship.", "translation": "多年的努力工作最终赢得冠军。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000371-ce16-0000-0000-000000000000', 'curtail', '/kɜːrˈteɪl/', 'v.', '[{"pos": "v.", "meaning": "削减，缩短", "example": "The company decided to curtail spending to reduce debt.", "translation": "公司决定削减开支以减少债务。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000372-ce16-0000-0000-000000000000', 'cynical', '/ˈsɪnɪkəl/', 'adj.', '[{"pos": "adj.", "meaning": "愤世嫉俗的，怀疑的", "example": "His cynical remarks about the government angered many citizens.", "translation": "他对政府的愤世嫉俗的言论激怒了许多公民。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000373-ce16-0000-0000-000000000000', 'deficient', '/dɪˈfɪʃənt/', 'adj.', '[{"pos": "adj.", "meaning": "不足的，缺乏的", "example": "The diet was deficient in essential vitamins and minerals.", "translation": "这种饮食缺乏必需的维生素和矿物质。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000374-ce16-0000-0000-000000000000', 'defy', '/dɪˈfaɪ/', 'v.', '[{"pos": "v.", "meaning": "违抗，反抗", "example": "The protesters decided to defy the government''s ban on demonstrations.", "translation": "抗议者决定违抗政府对示威活动的禁令。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000375-ce16-0000-0000-000000000000', 'delegate', '/ˈdelɪɡeɪt/', 'v./n.', '[{"pos": "v.", "meaning": "委托，授权", "example": "The manager learned to delegate tasks to her team.", "translation": "经理学会了将任务委托给她的团队。"}, {"pos": "n.", "meaning": "代表，代表团成员", "example": "Each country sent a delegate to the conference.", "translation": "每个国家都派出一名代表参加会议。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000376-ce16-0000-0000-000000000000', 'demographic', '/ˌdeməˈɡræfɪk/', 'adj./n.', '[{"pos": "adj.", "meaning": "人口统计学的", "example": "Demographic changes are affecting consumer behavior.", "translation": "人口结构变化正在影响消费者行为。"}, {"pos": "n.", "meaning": "人口统计数据", "example": "The demographics of the neighborhood have shifted over the past decade.", "translation": "过去十年来，该社区的人口统计数据发生了变化。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000377-ce16-0000-0000-000000000000', 'denounce', '/dɪˈnaʊns/', 'v.', '[{"pos": "v.", "meaning": "谴责，公开指责", "example": "World leaders denounced the terrorist attack.", "translation": "各国领导人谴责了这次恐怖袭击。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000378-ce16-0000-0000-000000000000', 'deplete', '/dɪˈpliːt/', 'v.', '[{"pos": "v.", "meaning": "耗尽，使枯竭", "example": "Overfishing has depleted the ocean''s fish stocks.", "translation": "过度捕捞已经耗尽了海洋的鱼类资源。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000379-ce16-0000-0000-000000000000', 'deploy', '/dɪˈplɔɪ/', 'v.', '[{"pos": "v.", "meaning": "部署，展开", "example": "The company plans to deploy new technology across all branches.", "translation": "公司计划在所有分支机构部署新技术。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000380-ce16-0000-0000-000000000000', 'deprive', '/dɪˈpraɪv/', 'v.', '[{"pos": "v.", "meaning": "剥夺，使丧失", "example": "The law prohibits depriving citizens of their basic rights.", "translation": "法律禁止剥夺公民的基本权利。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000381-ce16-0000-0000-000000000000', 'designate', '/ˈdezɪɡneɪt/', 'v.', '[{"pos": "v.", "meaning": "指定，指派", "example": "The area has been designated as a national park.", "translation": "该地区已被指定为国家公园。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000382-ce16-0000-0000-000000000000', 'desolate', '/ˈdesələt/', 'adj.', '[{"pos": "adj.", "meaning": "荒凉的，孤独的", "example": "The desolate landscape stretched for miles in every direction.", "translation": "荒凉的景色向四面八方延伸数英里。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000383-ce16-0000-0000-000000000000', 'deter', '/dɪˈtɜːr/', 'v.', '[{"pos": "v.", "meaning": "阻止，威慑", "example": "The high penalty is intended to deter speeders.", "translation": "高额罚款旨在威慑超速者。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000384-ce16-0000-0000-000000000000', 'detrimental', '/ˌdetrɪˈmentəl/', 'adj.', '[{"pos": "adj.", "meaning": "有害的，不利的", "example": "Smoking is detrimental to your health.", "translation": "吸烟对你的健康有害。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000385-ce16-0000-0000-000000000000', 'devoid', '/dɪˈvɔɪd/', 'adj.', '[{"pos": "adj.", "meaning": "缺乏的，没有的", "example": "The landscape was devoid of any vegetation.", "translation": "这片土地没有任何植被。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000386-ce16-0000-0000-000000000000', 'diplomatic', '/ˌdɪpləˈmætɪk/', 'adj.', '[{"pos": "adj.", "meaning": "外交的，圆滑的", "example": "She used diplomatic language to avoid offending anyone.", "translation": "她使用外交辞令以避免冒犯任何人。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000387-ce16-0000-0000-000000000000', 'discrepancy', '/dɪsˈkrepənsi/', 'n.', '[{"pos": "n.", "meaning": "差异，不一致", "example": "There was a significant discrepancy between the two reports.", "translation": "两份报告之间存在显著差异。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000388-ce16-0000-0000-000000000000', 'discretion', '/dɪˈskreʃən/', 'n.', '[{"pos": "n.", "meaning": "谨慎，自行决定", "example": "The matter was left to the discretion of the manager.", "translation": "这件事留待经理自行决定。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000389-ce16-0000-0000-000000000000', 'disparity', '/dɪˈspærəti/', 'n.', '[{"pos": "n.", "meaning": "差距，不平等", "example": "There is a growing disparity between the rich and the poor.", "translation": "贫富差距日益扩大。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000390-ce16-0000-0000-000000000000', 'disposition', '/ˌdɪspəˈzɪʃən/', 'n.', '[{"pos": "n.", "meaning": "性情，处置", "example": "She has a cheerful disposition that brightens everyone''s day.", "translation": "她性格开朗，能让每个人的日子都变得明亮。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000391-ce16-0000-0000-000000000000', 'dissent', '/dɪˈsent/', 'n./v.', '[{"pos": "n.", "meaning": "异议，反对", "example": "The judge filed a dissenting opinion in the case.", "translation": "法官在该案中提出了异议。"}, {"pos": "v.", "meaning": "不同意", "example": "Some committee members dissented from the majority view.", "translation": "一些委员会成员不同意多数人的观点。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000392-ce16-0000-0000-000000000000', 'dissolve', '/dɪˈzɒlv/', 'v.', '[{"pos": "v.", "meaning": "解散，溶解", "example": "The parliament was dissolved and new elections were called.", "translation": "议会解散了，并宣布举行新的选举。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000393-ce16-0000-0000-000000000000', 'divergent', '/daɪˈvɜːrdʒənt/', 'adj.', '[{"pos": "adj.", "meaning": "分歧的，不同的", "example": "The two parties hold divergent views on economic policy.", "translation": "两党在经济政策上持有分歧的观点。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000394-ce16-0000-0000-000000000000', 'dormant', '/ˈdɔːrmənt/', 'adj.', '[{"pos": "adj.", "meaning": "休眠的，暂停的", "example": "The volcano has been dormant for centuries.", "translation": "这座火山已经休眠了几个世纪。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000395-ce16-0000-0000-000000000000', 'dubious', '/ˈdjuːbiəs/', 'adj.', '[{"pos": "adj.", "meaning": "可疑的，怀疑的", "example": "The dubious quality of the product led to many complaints.", "translation": "产品可疑的质量导致了许多投诉。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000396-ce16-0000-0000-000000000000', 'dwell', '/dwel/', 'v.', '[{"pos": "v.", "meaning": "居住，详述", "example": "It is not productive to dwell on past mistakes.", "translation": "沉溺于过去的错误是没有益处的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000397-ce16-0000-0000-000000000000', 'dwindle', '/ˈdwɪndəl/', 'v.', '[{"pos": "v.", "meaning": "逐渐减少，缩小", "example": "The company''s profits continued to dwindle over the years.", "translation": "公司的利润多年来持续减少。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000398-ce16-0000-0000-000000000000', 'eccentric', '/ɪkˈsentrɪk/', 'adj.', '[{"pos": "adj.", "meaning": "古怪的，反常的", "example": "The eccentric professor was known for his unusual teaching methods.", "translation": "这位古怪的教授以其不寻常的教学方法而闻名。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000399-ce16-0000-0000-000000000000', 'eclectic', '/ɪˈklektɪk/', 'adj.', '[{"pos": "adj.", "meaning": "兼收并蓄的，折中的", "example": "The gallery features an eclectic mix of modern and classical art.", "translation": "这个画廊展示了现代与古典艺术的兼收并蓄的混合体。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000400-ce16-0000-0000-000000000000', 'elicit', '/ɪˈlɪsɪt/', 'v.', '[{"pos": "v.", "meaning": "引出，引起", "example": "The question elicited a thoughtful response from the panelist.", "translation": "这个问题引起了小组成员的深思熟虑的回答。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000401-ce16-0000-0000-000000000000', 'eloquent', '/ˈeləkwənt/', 'adj.', '[{"pos": "adj.", "meaning": "雄辩的，有说服力的", "example": "The eloquent speech moved the audience to tears.", "translation": "雄辩的演讲让观众感动落泪。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000402-ce16-0000-0000-000000000000', 'emancipation', '/ɪˌmænsɪˈpeɪʃən/', 'n.', '[{"pos": "n.", "meaning": "解放，释放", "example": "The emancipation of slaves was a pivotal moment in history.", "translation": "奴隶的解放是历史上的关键时刻。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000403-ce16-0000-0000-000000000000', 'embark', '/ɪmˈbɑːrk/', 'v.', '[{"pos": "v.", "meaning": "着手，开始", "example": "The company embarked on a new marketing strategy.", "translation": "公司开始实施新的营销策略。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000404-ce16-0000-0000-000000000000', 'embody', '/ɪmˈbɒdi/', 'v.', '[{"pos": "v.", "meaning": "体现，使具体化", "example": "The new building embodies the architect''s vision of sustainability.", "translation": "新建筑体现了建筑师对可持续发展的愿景。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000405-ce16-0000-0000-000000000000', 'emergent', '/ɪˈmɜːrdʒənt/', 'adj.', '[{"pos": "adj.", "meaning": "新兴的，出现的", "example": "Emergent technologies are transforming the healthcare industry.", "translation": "新兴技术正在改变医疗保健行业。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000406-ce16-0000-0000-000000000000', 'emulate', '/ˈemjuleɪt/', 'v.', '[{"pos": "v.", "meaning": "模仿，仿真", "example": "Young athletes often emulate their sports heroes.", "translation": "年轻运动员经常模仿他们的体育英雄。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000407-ce16-0000-0000-000000000000', 'endeavor', '/ɪnˈdevər/', 'n./v.', '[{"pos": "n.", "meaning": "努力，尝试", "example": "The scientific endeavor requires patience and dedication.", "translation": "科学探索需要耐心和奉献。"}, {"pos": "v.", "meaning": "努力，尽力", "example": "We must endeavor to improve our performance.", "translation": "我们必须努力提高我们的表现。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000408-ce16-0000-0000-000000000000', 'endorse', '/ɪnˈdɔːrs/', 'v.', '[{"pos": "v.", "meaning": "支持，赞同", "example": "The committee endorsed the proposed changes to the policy.", "translation": "委员会赞同对政策的拟议修改。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000409-ce16-0000-0000-000000000000', 'enigma', '/ɪˈnɪɡmə/', 'n.', '[{"pos": "n.", "meaning": "谜，神秘的事物", "example": "The disappearance of the ship remains an enigma to this day.", "translation": "这艘船的失踪至今仍是一个谜。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000410-ce16-0000-0000-000000000000', 'enlighten', '/ɪnˈlaɪtən/', 'v.', '[{"pos": "v.", "meaning": "启发，启蒙", "example": "The documentary aimed to enlighten viewers about climate change.", "translation": "这部纪录片旨在让观众了解气候变化。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000411-ce16-0000-0000-000000000000', 'entail', '/ɪnˈteɪl/', 'v.', '[{"pos": "v.", "meaning": "需要，牵涉", "example": "The job entails long hours and frequent travel.", "translation": "这份工作需要长时间工作和频繁出差。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000412-ce16-0000-0000-000000000000', 'enthusiastic', '/ɪnˌθjuːziˈæstɪk/', 'adj.', '[{"pos": "adj.", "meaning": "热情的，热心的", "example": "The team was enthusiastic about the new project.", "translation": "团队对新项目充满热情。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000413-ce16-0000-0000-000000000000', 'entrepreneur', '/ˌɒntrəprəˈnɜːr/', 'n.', '[{"pos": "n.", "meaning": "企业家，创业者", "example": "The young entrepreneur launched a successful tech startup.", "translation": "这位年轻企业家创办了一家成功的科技初创公司。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000414-ce16-0000-0000-000000000000', 'epitome', '/ɪˈpɪtəmi/', 'n.', '[{"pos": "n.", "meaning": "典范，缩影", "example": "She is the epitome of professionalism.", "translation": "她是专业精神的典范。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000415-ce16-0000-0000-000000000000', 'equilibrium', '/ˌiːkwɪˈlɪbriəm/', 'n.', '[{"pos": "n.", "meaning": "平衡，均衡", "example": "The economy must reach a new equilibrium after the recession.", "translation": "经济在衰退后必须达到新的平衡。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000416-ce16-0000-0000-000000000000', 'erratic', '/ɪˈrætɪk/', 'adj.', '[{"pos": "adj.", "meaning": "不稳定的，古怪的", "example": "The stock market has been erratic in recent months.", "translation": "近几个月股市一直不稳定。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000417-ce16-0000-0000-000000000000', 'erudite', '/ˈeruːdaɪt/', 'adj.', '[{"pos": "adj.", "meaning": "博学的，有学问的", "example": "The erudite professor could speak on any topic with authority.", "translation": "这位博学的教授可以就任何话题发表权威意见。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000418-ce16-0000-0000-000000000000', 'exemplary', '/ɪɡˈzempləri/', 'adj.', '[{"pos": "adj.", "meaning": "模范的，典型的", "example": "Her exemplary conduct earned her a promotion.", "translation": "她模范的行为为她赢得了晋升。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000419-ce16-0000-0000-000000000000', 'exhibit', '/ɪɡˈzɪbɪt/', 'v./n.', '[{"pos": "v.", "meaning": "展览，展示", "example": "The museum will exhibit the collection next month.", "translation": "博物馆将于下个月展出该收藏品。"}, {"pos": "n.", "meaning": "展品，展览", "example": "The art exhibit attracted thousands of visitors.", "translation": "这个艺术展览吸引了数千名参观者。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000420-ce16-0000-0000-000000000000', 'expedite', '/ˈekspɪdaɪt/', 'v.', '[{"pos": "v.", "meaning": "加速，加快", "example": "The manager tried to expedite the approval process.", "translation": "经理试图加快审批流程。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000421-ce16-0000-0000-000000000000', 'explicit', '/ɪkˈsplɪsɪt/', 'adj.', '[{"pos": "adj.", "meaning": "明确的，清楚的", "example": "The instructions were explicit and easy to follow.", "translation": "说明书明确且易于遵循。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000422-ce16-0000-0000-000000000000', 'exponential', '/ˌekspəˈnenʃəl/', 'adj.', '[{"pos": "adj.", "meaning": "指数的，快速增长的", "example": "The city experienced exponential population growth.", "translation": "这座城市经历了指数级的人口增长。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000423-ce16-0000-0000-000000000000', 'exploit', '/ɪkˈsplɔɪt/', 'v./n.', '[{"pos": "v.", "meaning": "开发，利用", "example": "The company exploits natural resources for profit.", "translation": "公司为利润开发自然资源。"}, {"pos": "n.", "meaning": "功绩，英勇行为", "example": "The soldier''s exploits were celebrated in the national newspaper.", "translation": "这位士兵的英勇事迹在国家报纸上受到赞扬。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000424-ce16-0000-0000-000000000000', 'exquisite', '/ɪkˈskwɪzɪt/', 'adj.', '[{"pos": "adj.", "meaning": "精致的，精美的", "example": "The museum displayed exquisite pieces of jewelry.", "translation": "博物馆展出了精美的珠宝。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000425-ce16-0000-0000-000000000000', 'extract', '/ɪkˈstrækt/', 'v./n.', '[{"pos": "v.", "meaning": "提取，摘录", "example": "The doctor extracted a sample for testing.", "translation": "医生提取了样本进行检测。"}, {"pos": "n.", "meaning": "摘录，提取物", "example": "She read an extract from her new book.", "translation": "她朗读了新书的摘录。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000426-ce16-0000-0000-000000000000', 'fabricate', '/ˈfæbrɪkeɪt/', 'v.', '[{"pos": "v.", "meaning": "捏造，编造", "example": "The witness was accused of fabricating evidence.", "translation": "证人被指控捏造证据。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000427-ce16-0000-0000-000000000000', 'facilitate', '/fəˈsɪlɪteɪt/', 'v.', '[{"pos": "v.", "meaning": "促进，使便利", "example": "Technology can facilitate communication between teams.", "translation": "技术可以促进团队之间的沟通。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000428-ce16-0000-0000-000000000000', 'fallacy', '/ˈfæləsi/', 'n.', '[{"pos": "n.", "meaning": "谬误，谬论", "example": "The argument contains a logical fallacy.", "translation": "这个论点包含一个逻辑谬误。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000429-ce16-0000-0000-000000000000', 'fervent', '/ˈfɜːrvənt/', 'adj.', '[{"pos": "adj.", "meaning": "热情的，热烈的", "example": "The proposal received fervent support from the community.", "translation": "这项提议得到了社区的热烈支持。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000430-ce16-0000-0000-000000000000', 'fluctuation', '/ˌflʌktʃuˈeɪʃən/', 'n.', '[{"pos": "n.", "meaning": "波动，变动", "example": "Price fluctuation is common in volatile markets.", "translation": "价格波动在动荡市场中很常见。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000431-ce16-0000-0000-000000000000', 'foolhardy', '/ˈfuːlhɑːrdi/', 'adj.', '[{"pos": "adj.", "meaning": "鲁莽的，有勇无谋的", "example": "It would be foolhardy to invest all our savings in one stock.", "translation": "把所有储蓄都投资在一只股票上是鲁莽的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000432-ce16-0000-0000-000000000000', 'foster', '/ˈfɒstər/', 'v.', '[{"pos": "v.", "meaning": "培养，促进", "example": "The program aims to foster creativity in young students.", "translation": "该计划旨在培养年轻学生的创造力。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000433-ce16-0000-0000-000000000000', 'frantic', '/ˈfræntɪk/', 'adj.', '[{"pos": "adj.", "meaning": "疯狂的，狂乱的", "example": "The frantic search for the missing child continued through the night.", "translation": "对失踪儿童的疯狂搜寻持续了一整夜。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000434-ce16-0000-0000-000000000000', 'frugal', '/ˈfruːɡəl/', 'adj.', '[{"pos": "adj.", "meaning": "节俭的，朴素的", "example": "Her frugal habits allowed her to save a substantial amount.", "translation": "她节俭的习惯使她能够存下相当多的钱。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000435-ce16-0000-0000-000000000000', 'futility', '/fjuːˈtɪləti/', 'n.', '[{"pos": "n.", "meaning": "徒劳，无用", "example": "He recognized the futility of arguing with his boss.", "translation": "他认识到与老板争论是徒劳的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000436-ce16-0000-0000-000000000000', 'galvanize', '/ˈɡælvənaɪz/', 'v.', '[{"pos": "v.", "meaning": "激励，刺激", "example": "The speech galvanized the crowd into action.", "translation": "演讲激励人群采取行动。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000437-ce16-0000-0000-000000000000', 'garner', '/ˈɡɑːrnər/', 'v.', '[{"pos": "v.", "meaning": "收集，获得", "example": "The film garnered critical acclaim at the festival.", "translation": "这部电影在电影节上获得了评论家的好评。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000438-ce16-0000-0000-000000000000', 'germane', '/dʒɜːrˈmeɪn/', 'adj.', '[{"pos": "adj.", "meaning": "有密切关系的，切题的", "example": "Please keep your comments germane to the topic.", "translation": "请保持你的评论与主题相关。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000439-ce16-0000-0000-000000000000', 'gratify', '/ˈɡrætɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "使高兴，使满意", "example": "The positive feedback gratified the team''s efforts.", "translation": "积极的反馈使团队的努力得到了满足。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000440-ce16-0000-0000-000000000000', 'grievance', '/ˈɡriːvəns/', 'n.', '[{"pos": "n.", "meaning": "不满，委屈", "example": "The employees filed a grievance against the management.", "translation": "员工对管理层提出了申诉。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000441-ce16-0000-0000-000000000000', 'gullible', '/ˈɡʌləbəl/', 'adj.', '[{"pos": "adj.", "meaning": "易受骗的，轻信的", "example": "The gullible customer fell for the fraudulent scheme.", "translation": "这位轻信的顾客上了欺诈计划的当。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000442-ce16-0000-0000-000000000000', 'hamper', '/ˈhæmpər/', 'v.', '[{"pos": "v.", "meaning": "妨碍，阻碍", "example": "The bad weather hampered rescue efforts.", "translation": "恶劣天气阻碍了救援工作。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000443-ce16-0000-0000-000000000000', 'harass', '/ˈhærəs/', 'v.', '[{"pos": "v.", "meaning": "骚扰，侵扰", "example": "The company has a strict policy against sexual harassment.", "translation": "公司有严格的反性骚扰政策。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000444-ce16-0000-0000-000000000000', 'havoc', '/ˈhævək/', 'n.', '[{"pos": "n.", "meaning": "大破坏，混乱", "example": "The hurricane wreaked havoc on the coastal communities.", "translation": "飓风对沿海社区造成了大破坏。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000445-ce16-0000-0000-000000000000', 'hypothetical', '/ˌhaɪpəˈθetɪkəl/', 'adj.', '[{"pos": "adj.", "meaning": "假设的，假想的", "example": "Let''s consider a hypothetical scenario.", "translation": "让我们考虑一个假设的情景。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000446-ce16-0000-0000-000000000000', 'iconoclast', '/aɪˈkɒnəklæst/', 'n.', '[{"pos": "n.", "meaning": "打破传统观念的人", "example": "The iconoclast challenged conventional thinking in the field.", "translation": "这位打破传统观念的人挑战了该领域的传统思维。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000447-ce16-0000-0000-000000000000', 'ideology', '/ˌaɪdiˈɒlədʒi/', 'n.', '[{"pos": "n.", "meaning": "意识形态，思想体系", "example": "Political ideology shapes many government policies.", "translation": "政治意识形态影响着许多政府政策。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000448-ce16-0000-0000-000000000000', 'imminent', '/ˈɪmɪnənt/', 'adj.', '[{"pos": "adj.", "meaning": "即将发生的，迫近的", "example": "Scientists warned of an imminent volcanic eruption.", "translation": "科学家警告火山即将爆发。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000449-ce16-0000-0000-000000000000', 'impartial', '/ɪmˈpɑːrʃəl/', 'adj.', '[{"pos": "adj.", "meaning": "公正的，不偏不倚的", "example": "The judge must remain impartial throughout the trial.", "translation": "法官在整个审判过程中必须保持公正。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000450-ce16-0000-0000-000000000000', 'impeach', '/ɪmˈpiːtʃ/', 'v.', '[{"pos": "v.", "meaning": "弹劾，质疑", "example": "Congress voted to impeach the president.", "translation": "国会投票弹劾总统。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000451-ce16-0000-0000-000000000000', 'impede', '/ɪmˈpiːd/', 'v.', '[{"pos": "v.", "meaning": "妨碍，阻碍", "example": "Bureaucratic red tape can impede economic growth.", "translation": "官僚主义的繁文缛节会阻碍经济增长。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000452-ce16-0000-0000-000000000000', 'imperative', '/ɪmˈperətɪv/', 'adj./n.', '[{"pos": "adj.", "meaning": "必要的，紧迫的", "example": "It is imperative that we act quickly.", "translation": "我们必须迅速采取行动。"}, {"pos": "n.", "meaning": "必要的事", "example": "Safety is an imperative in the workplace.", "translation": "安全是工作场所的必要条件。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000453-ce16-0000-0000-000000000000', 'implicit', '/ɪmˈplɪsɪt/', 'adj.', '[{"pos": "adj.", "meaning": "含蓄的，隐含的", "example": "There was an implicit understanding between the two parties.", "translation": "双方之间存在一种默契。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000454-ce16-0000-0000-000000000000', 'impugn', '/ɪmˈpjuːn/', 'v.', '[{"pos": "v.", "meaning": "质疑，抨击", "example": "The defense attorney tried to impugn the witness''s credibility.", "translation": "辩护律师试图质疑证人的可信度。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000455-ce16-0000-0000-000000000000', 'inaugurate', '/ɪˈnɔːɡjəreɪt/', 'v.', '[{"pos": "v.", "meaning": "开始，为…举行就职典礼", "example": "The new president will be inaugurated next month.", "translation": "新总统将于下个月举行就职典礼。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000456-ce16-0000-0000-000000000000', 'incisive', '/ɪnˈsaɪsɪv/', 'adj.', '[{"pos": "adj.", "meaning": "敏锐的，深刻的", "example": "Her incisive analysis of the problem impressed the board.", "translation": "她对问题的敏锐分析给董事会留下了深刻印象。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000457-ce16-0000-0000-000000000000', 'incite', '/ɪnˈsaɪt/', 'v.', '[{"pos": "v.", "meaning": "煽动，激励", "example": "The speech incited the crowd to demand immediate action.", "translation": "演讲煽动人群要求立即采取行动。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000458-ce16-0000-0000-000000000000', 'incorporate', '/ɪnˈkɔːrpəreɪt/', 'v.', '[{"pos": "v.", "meaning": "包含，合并", "example": "The new design incorporates elements of traditional architecture.", "translation": "新设计包含了传统建筑的元素。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000459-ce16-0000-0000-000000000000', 'indispensable', '/ˌɪndɪˈspensəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "不可或缺的，必不可少的", "example": "Technology has become indispensable in modern education.", "translation": "科技已成为现代教育不可或缺的一部分。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000460-ce16-0000-0000-000000000000', 'induce', '/ɪnˈdjuːs/', 'v.', '[{"pos": "v.", "meaning": "引起，诱导", "example": "The medication can induce side effects in some patients.", "translation": "这种药物会在一些患者中引起副作用。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000461-ce16-0000-0000-000000000000', 'infallible', '/ɪnˈfæləbəl/', 'adj.', '[{"pos": "adj.", "meaning": "永远正确的，不会犯错的", "example": "No human being is infallible.", "translation": "没有人是永远正确的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000462-ce16-0000-0000-000000000000', 'infer', '/ɪnˈfɜːr/', 'v.', '[{"pos": "v.", "meaning": "推断，推论", "example": "From the evidence, we can infer that the suspect was present.", "translation": "根据证据，我们可以推断嫌疑人当时在场。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000463-ce16-0000-0000-000000000000', 'ingenious', '/ɪnˈdʒiːniəs/', 'adj.', '[{"pos": "adj.", "meaning": "巧妙的，有独创性的", "example": "The engineer came up with an ingenious solution to the problem.", "translation": "工程师想出了一个巧妙的解决方案。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000464-ce16-0000-0000-000000000000', 'inherent', '/ɪnˈhɪrənt/', 'adj.', '[{"pos": "adj.", "meaning": "固有的，内在的", "example": "There are inherent risks in any investment.", "translation": "任何投资都存在固有的风险。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000465-ce16-0000-0000-000000000000', 'innate', '/ɪˈneɪt/', 'adj.', '[{"pos": "adj.", "meaning": "先天的，固有的", "example": "She has an innate talent for music.", "translation": "她有先天的音乐天赋。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000466-ce16-0000-0000-000000000000', 'instigate', '/ˈɪnstɪɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "煽动，挑起", "example": "The manager was accused of instigating conflict among the staff.", "translation": "经理被指控在员工中煽动冲突。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000467-ce16-0000-0000-000000000000', 'integral', '/ˈɪntɪɡrəl/', 'adj.', '[{"pos": "adj.", "meaning": "不可或缺的，完整的", "example": "Teamwork is an integral part of our company culture.", "translation": "团队合作是我们公司文化不可或缺的一部分。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000468-ce16-0000-0000-000000000000', 'intermittent', '/ˌɪntərˈmɪtənt/', 'adj.', '[{"pos": "adj.", "meaning": "间歇的，断断续续的", "example": "The intermittent rain disrupted the outdoor event.", "translation": "间歇性的降雨扰乱了户外活动。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000469-ce16-0000-0000-000000000000', 'intricate', '/ˈɪntrɪkət/', 'adj.', '[{"pos": "adj.", "meaning": "错综复杂的，精细的", "example": "The clock mechanism is incredibly intricate.", "translation": "这个钟表机械装置极其复杂。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000470-ce16-0000-0000-000000000000', 'intrinsic', '/ɪnˈtrɪnsɪk/', 'adj.', '[{"pos": "adj.", "meaning": "内在的，固有的", "example": "The intrinsic value of art is difficult to quantify.", "translation": "艺术的内在价值很难量化。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000471-ce16-0000-0000-000000000000', 'invoke', '/ɪnˈvoʊk/', 'v.', '[{"pos": "v.", "meaning": "调用，援引", "example": "The lawyer decided to invoke the Fifth Amendment.", "translation": "律师决定援引第五修正案。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000472-ce16-0000-0000-000000000000', 'irony', '/ˈaɪrəni/', 'n.', '[{"pos": "n.", "meaning": "讽刺，反语", "example": "The irony of the situation was not lost on the audience.", "translation": "观众并没有忽视这种情况的讽刺性。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000473-ce16-0000-0000-000000000000', 'itinerary', '/aɪˈtɪnərəri/', 'n.', '[{"pos": "n.", "meaning": "旅行路线，行程", "example": "The travel agent prepared a detailed itinerary for the trip.", "translation": "旅行社为这次旅行准备了详细的行程。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000474-ce16-0000-0000-000000000000', 'juxtapose', '/ˌdʒʌkstəˈpoʊz/', 'v.', '[{"pos": "v.", "meaning": "并列，并置", "example": "The exhibit juxtaposes modern art with traditional craftsmanship.", "translation": "这个展览将现代艺术与传统工艺并置。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000475-ce16-0000-0000-000000000000', 'keen', '/kiːn/', 'adj.', '[{"pos": "adj.", "meaning": "敏锐的，热切的", "example": "She has a keen eye for detail in her work.", "translation": "她在工作中对细节有敏锐的观察力。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000476-ce16-0000-0000-000000000000', 'kinetic', '/kɪˈnetɪk/', 'adj.', '[{"pos": "adj.", "meaning": "运动的，动力学的", "example": "The kinetic energy of the moving vehicle was enormous.", "translation": "行驶车辆的动能是巨大的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000477-ce16-0000-0000-000000000000', 'labyrinth', '/ˈlæbərɪnθ/', 'n.', '[{"pos": "n.", "meaning": "迷宫，错综复杂的事物", "example": "The legal system can be a labyrinth for ordinary citizens.", "translation": "法律系统对普通公民来说可能像迷宫一样。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000478-ce16-0000-0000-000000000000', 'languid', '/ˈlæŋɡwɪd/', 'adj.', '[{"pos": "adj.", "meaning": "倦怠的，无精打采的", "example": "The languid afternoon heat made everyone sleepy.", "translation": "慵懒的午后热浪让每个人都昏昏欲睡。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000479-ce16-0000-0000-000000000000', 'latent', '/ˈleɪtənt/', 'adj.', '[{"pos": "adj.", "meaning": "潜在的，隐藏的", "example": "She has latent talents that she has yet to discover.", "translation": "她有尚未发掘的潜在才能。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000480-ce16-0000-0000-000000000000', 'laud', '/lɔːd/', 'v.', '[{"pos": "v.", "meaning": "赞美，称赞", "example": "Critics lauded the film for its innovative storytelling.", "translation": "评论家赞扬这部电影创新的叙事方式。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000481-ce16-0000-0000-000000000000', 'legacy', '/ˈleɡəsi/', 'n.', '[{"pos": "n.", "meaning": "遗产，遗赠", "example": "The scientist left a lasting legacy in the field of medicine.", "translation": "这位科学家在医学领域留下了持久的遗产。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000482-ce16-0000-0000-000000000000', 'lenient', '/ˈliːniənt/', 'adj.', '[{"pos": "adj.", "meaning": "宽容的，温和的", "example": "The judge was lenient in sentencing the first-time offender.", "translation": "法官对初犯者从轻处罚。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000483-ce16-0000-0000-000000000000', 'lethargic', '/ləˈθɑːrdʒɪk/', 'adj.', '[{"pos": "adj.", "meaning": "昏昏欲睡的，无精打采的", "example": "The hot weather made everyone feel lethargic.", "translation": "炎热的天气让每个人都感到昏昏欲睡。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000484-ce16-0000-0000-000000000000', 'levy', '/ˈlevi/', 'v./n.', '[{"pos": "v.", "meaning": "征收，征税", "example": "The government plans to levy new taxes on carbon emissions.", "translation": "政府计划对碳排放征收新税。"}, {"pos": "n.", "meaning": "征税，征收额", "example": "The new levy will increase the cost of fuel.", "translation": "新征税将增加燃料成本。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000485-ce16-0000-0000-000000000000', 'liberal', '/ˈlɪbərəl/', 'adj./n.', '[{"pos": "adj.", "meaning": "自由的，慷慨的", "example": "The company has a liberal vacation policy.", "translation": "公司有宽松的休假政策。"}, {"pos": "n.", "meaning": "自由主义者", "example": "She identifies as a political liberal.", "translation": "她认为自己是一个政治自由主义者。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000486-ce16-0000-0000-000000000000', 'linear', '/ˈlɪniər/', 'adj.', '[{"pos": "adj.", "meaning": "线性的，直线的", "example": "The relationship between the variables is linear.", "translation": "变量之间的关系是线性的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000487-ce16-0000-0000-000000000000', 'lobby', '/ˈlɒbi/', 'n./v.', '[{"pos": "n.", "meaning": "游说，大厅", "example": "The environmental group lobbied for stricter regulations.", "translation": "环保组织游说制定更严格的法规。"}, {"pos": "v.", "meaning": "游说", "example": "Industry leaders lobbied the government to reduce taxes.", "translation": "行业领袖游说政府减税。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000488-ce16-0000-0000-000000000000', 'lofty', '/ˈlɔːfti/', 'adj.', '[{"pos": "adj.", "meaning": "崇高的，高耸的", "example": "She has lofty ambitions for her career.", "translation": "她对事业有着崇高的抱负。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000489-ce16-0000-0000-000000000000', 'lucid', '/ˈluːsɪd/', 'adj.', '[{"pos": "adj.", "meaning": "清晰的，明白的", "example": "The professor gave a lucid explanation of the complex theory.", "translation": "教授对这个复杂理论进行了清晰的解释。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000490-ce16-0000-0000-000000000000', 'ludicrous', '/ˈluːdɪkrəs/', 'adj.', '[{"pos": "adj.", "meaning": "荒谬的，可笑的", "example": "The idea of building a wall around the city is ludicrous.", "translation": "在城市周围建墙的想法是荒谬的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000491-ce16-0000-0000-000000000000', 'magnanimous', '/mæɡˈnænɪməs/', 'adj.', '[{"pos": "adj.", "meaning": "宽宏大量的，慷慨的", "example": "The magnanimous donor contributed millions to the charity.", "translation": "这位宽宏大量的捐赠者向慈善机构捐赠了数百万。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000492-ce16-0000-0000-000000000000', 'manifest', '/ˈmænɪfest/', 'adj./v.', '[{"pos": "adj.", "meaning": "明显的，显然的", "example": "The benefits of the program are manifest.", "translation": "该项目的好处是显而易见的。"}, {"pos": "v.", "meaning": "显示，表明", "example": "Symptoms of the disease may manifest in different ways.", "translation": "这种疾病的症状可能以不同的方式表现出来。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000493-ce16-0000-0000-000000000000', 'mendacious', '/menˈdeɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "虚假的，欺骗的", "example": "The mendacious report misled the public about the risks.", "translation": "虚假的报告误导了公众对风险的认识。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000494-ce16-0000-0000-000000000000', 'merit', '/ˈmerɪt/', 'n./v.', '[{"pos": "n.", "meaning": "优点，价值", "example": "Each proposal should be judged on its own merits.", "translation": "每项提案都应根据其自身优点来评判。"}, {"pos": "v.", "meaning": "值得，应得", "example": "The study merits further investigation.", "translation": "这项研究值得进一步调查。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000495-ce16-0000-0000-000000000000', 'meticulous', '/məˈtɪkjələs/', 'adj.', '[{"pos": "adj.", "meaning": "一丝不苟的，细致的", "example": "She is meticulous in her research methodology.", "translation": "她在研究方法上一丝不苟。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000496-ce16-0000-0000-000000000000', 'militate', '/ˈmɪlɪteɪt/', 'v.', '[{"pos": "v.", "meaning": "不利于，妨碍", "example": "Several factors militate against the success of the project.", "translation": "有几个因素不利于该项目的成功。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000497-ce16-0000-0000-000000000000', 'mitigate', '/ˈmɪtɪɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "减轻，缓和", "example": "Steps were taken to mitigate the effects of the flood.", "translation": "采取措施减轻洪水的影响。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000498-ce16-0000-0000-000000000000', 'monolithic', '/ˌmɒnəˈlɪθɪk/', 'adj.', '[{"pos": "adj.", "meaning": "巨大的，整体的", "example": "The monolithic structure dominated the skyline.", "translation": "巨大的建筑结构主宰了天际线。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000499-ce16-0000-0000-000000000000', 'moratorium', '/ˌmɒrəˈtɔːriəm/', 'n.', '[{"pos": "n.", "meaning": "暂停，延期", "example": "The government declared a moratorium on nuclear testing.", "translation": "政府宣布暂停核试验。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000500-ce16-0000-0000-000000000000', 'mundane', '/mʌnˈdeɪn/', 'adj.', '[{"pos": "adj.", "meaning": "平凡的，世俗的", "example": "He found his mundane office job unfulfilling.", "translation": "他觉得他平凡的办公室工作令人不满意。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000501-ce16-0000-0000-000000000000', 'negligent', '/ˈneɡlɪdʒənt/', 'adj.', '[{"pos": "adj.", "meaning": "疏忽的，粗心大意的", "example": "The company was found negligent in its safety procedures.", "translation": "该公司被发现在安全程序上存在疏忽。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000502-ce16-0000-0000-000000000000', 'negligible', '/ˈneɡlɪdʒəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "微不足道的，可以忽略的", "example": "The difference in cost is negligible.", "translation": "成本差异微不足道。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000503-ce16-0000-0000-000000000000', 'nominal', '/ˈnɒmɪnəl/', 'adj.', '[{"pos": "adj.", "meaning": "名义上的，象征性的", "example": "The fee is nominal compared to the value of the service.", "translation": "与服务价值相比，费用是象征性的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000504-ce16-0000-0000-000000000000', 'notorious', '/noʊˈtɔːriəs/', 'adj.', '[{"pos": "adj.", "meaning": "声名狼藉的，臭名昭著的", "example": "The city is notorious for its traffic congestion.", "translation": "这座城市因交通拥堵而臭名昭著。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000505-ce16-0000-0000-000000000000', 'nuance', '/ˈnjuːɑːns/', 'n.', '[{"pos": "n.", "meaning": "细微差别，微妙之处", "example": "The nuances of the language are difficult for non-native speakers.", "translation": "这种语言的细微差别对非母语者来说很难掌握。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000506-ce16-0000-0000-000000000000', 'obscene', '/əbˈsiːn/', 'adj.', '[{"pos": "adj.", "meaning": "淫秽的，可憎的", "example": "The court ruled that the material was obscene.", "translation": "法院裁定该材料是淫秽的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000507-ce16-0000-0000-000000000000', 'obsolete', '/ˌɒbsəˈliːt/', 'adj.', '[{"pos": "adj.", "meaning": "过时的，淘汰的", "example": "The technology has become obsolete due to rapid advancements.", "translation": "由于快速进步，这项技术已经过时了。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000508-ce16-0000-0000-000000000000', 'obstinate', '/ˈɒbstɪnət/', 'adj.', '[{"pos": "adj.", "meaning": "顽固的，固执的", "example": "His obstinate refusal to compromise delayed the negotiations.", "translation": "他顽固地拒绝妥协，延误了谈判。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000509-ce16-0000-0000-000000000000', 'obtuse', '/əbˈtjuːs/', 'adj.', '[{"pos": "adj.", "meaning": "迟钝的，愚笨的", "example": "He seemed obtuse to the obvious hints she was dropping.", "translation": "他似乎对她明显的暗示反应迟钝。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000510-ce16-0000-0000-000000000000', 'ominous', '/ˈɒmɪnəs/', 'adj.', '[{"pos": "adj.", "meaning": "不祥的，凶兆的", "example": "The dark clouds on the horizon were an ominous sign.", "translation": "地平线上的乌云是不祥之兆。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000511-ce16-0000-0000-000000000000', 'omnipresent', '/ˌɒmnɪˈprezənt/', 'adj.', '[{"pos": "adj.", "meaning": "无处不在的", "example": "Technology has become omnipresent in modern society.", "translation": "科技在现代社会已经无处不在。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000512-ce16-0000-0000-000000000000', 'onset', '/ˈɒnset/', 'n.', '[{"pos": "n.", "meaning": "开始，发作", "example": "Early treatment can prevent the onset of the disease.", "translation": "早期治疗可以预防疾病的发作。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000513-ce16-0000-0000-000000000000', 'opaque', '/oʊˈpeɪk/', 'adj.', '[{"pos": "adj.", "meaning": "不透明的，难懂的", "example": "The company''s financial reporting was criticized as being opaque.", "translation": "该公司的财务报告因不透明而受到批评。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000514-ce16-0000-0000-000000000000', 'optimal', '/ˈɒptɪməl/', 'adj.', '[{"pos": "adj.", "meaning": "最佳的，最优的", "example": "The study aims to find the optimal solution to the problem.", "translation": "这项研究旨在找到解决问题的最佳方案。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000515-ce16-0000-0000-000000000000', 'oscillate', '/ˈɒsɪleɪt/', 'v.', '[{"pos": "v.", "meaning": "摆动，动摇", "example": "The pendulum oscillates back and forth at a regular interval.", "translation": "钟摆以固定的时间间隔来回摆动。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000516-ce16-0000-0000-000000000000', 'ostensible', '/ɒˈstensəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "表面上的，名义上的", "example": "The ostensible reason for the meeting was to discuss the budget.", "translation": "会议的表面原因是讨论预算。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000517-ce16-0000-0000-000000000000', 'overhaul', '/ˈoʊvərhɔːl/', 'v./n.', '[{"pos": "v.", "meaning": "彻底检修，改革", "example": "The company plans to overhaul its aging infrastructure.", "translation": "公司计划彻底检修其老化的基础设施。"}, {"pos": "n.", "meaning": "大修，改革", "example": "The tax system needs a complete overhaul.", "translation": "税收系统需要彻底改革。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000518-ce16-0000-0000-000000000000', 'paradox', '/ˈpærədɒks/', 'n.', '[{"pos": "n.", "meaning": "悖论，矛盾的事物", "example": "It is a paradox that the richest country has so many poor people.", "translation": "最富有的国家有这么多穷人是一个悖论。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000519-ce16-0000-0000-000000000000', 'paradigm', '/ˈpærədaɪm/', 'n.', '[{"pos": "n.", "meaning": "范式，典范", "example": "The discovery represented a paradigm shift in physics.", "translation": "这一发现代表了物理学的范式转变。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000520-ce16-0000-0000-000000000000', 'parochial', '/pəˈroʊkiəl/', 'adj.', '[{"pos": "adj.", "meaning": "狭隘的，偏狭的", "example": "His parochial views prevented him from understanding global issues.", "translation": "他狭隘的观点阻碍了他对全球问题的理解。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000521-ce16-0000-0000-000000000000', 'partisan', '/ˈpɑːrtɪzən/', 'adj./n.', '[{"pos": "adj.", "meaning": "党派的，偏袒的", "example": "The partisan debate failed to address the real issues.", "translation": "党派之争未能解决真正的问题。"}, {"pos": "n.", "meaning": "党羽，支持者", "example": "She remained a loyal partisan of the political party.", "translation": "她一直是该政党的忠实支持者。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000522-ce16-0000-0000-000000000000', 'patronage', '/ˈpætrənɪdʒ/', 'n.', '[{"pos": "n.", "meaning": "赞助，惠顾", "example": "The arts depend on the patronage of wealthy benefactors.", "translation": "艺术依赖于富有赞助人的资助。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000523-ce16-0000-0000-000000000000', 'peculiar', '/pɪˈkjuːliər/', 'adj.', '[{"pos": "adj.", "meaning": "奇怪的，特有的", "example": "There was a peculiar smell coming from the abandoned building.", "translation": "从废弃的建筑里传来一股奇怪的气味。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000524-ce16-0000-0000-000000000000', 'pedagogy', '/ˈpedəɡɒdʒi/', 'n.', '[{"pos": "n.", "meaning": "教育学，教学法", "example": "Modern pedagogy emphasizes student-centered learning.", "translation": "现代教育学强调以学生为中心的学习。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000525-ce16-0000-0000-000000000000', 'penchant', '/ˈpentʃənt/', 'n.', '[{"pos": "n.", "meaning": "嗜好，偏好", "example": "She has a penchant for adventure travel.", "translation": "她有探险旅行的嗜好。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000526-ce16-0000-0000-000000000000', 'peninsula', '/pəˈnɪnsjələ/', 'n.', '[{"pos": "n.", "meaning": "半岛", "example": "Italy is a peninsula extending into the Mediterranean Sea.", "translation": "意大利是伸入地中海的一个半岛。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000527-ce16-0000-0000-000000000000', 'perennial', '/pəˈreniəl/', 'adj.', '[{"pos": "adj.", "meaning": "常年存在的，多年生的", "example": "Poverty remains a perennial problem in many developing countries.", "translation": "贫困在许多发展中国家仍然是一个长期存在的问题。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000528-ce16-0000-0000-000000000000', 'perilous', '/ˈperɪləs/', 'adj.', '[{"pos": "adj.", "meaning": "危险的，冒险的", "example": "The expedition through the jungle was perilous.", "translation": "穿越丛林的探险是危险的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000529-ce16-0000-0000-000000000000', 'permeate', '/ˈpɜːrmieɪt/', 'v.', '[{"pos": "v.", "meaning": "渗透，弥漫", "example": "A sense of optimism permeated the entire organization.", "translation": "乐观情绪弥漫在整个组织中。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000530-ce16-0000-0000-000000000000', 'perpetuate', '/pərˈpetʃueɪt/', 'v.', '[{"pos": "v.", "meaning": "使永久化，使延续", "example": "The system perpetuates inequality rather than reducing it.", "translation": "这个制度使不平等永久化而不是减少它。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000531-ce16-0000-0000-000000000000', 'pertinent', '/ˈpɜːrtɪnənt/', 'adj.', '[{"pos": "adj.", "meaning": "相关的，切题的", "example": "Please include only pertinent information in your report.", "translation": "请在报告中只包含相关信息。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000532-ce16-0000-0000-000000000000', 'pervasive', '/pərˈveɪsɪv/', 'adj.', '[{"pos": "adj.", "meaning": "普遍的，流行的", "example": "Social media has become a pervasive part of daily life.", "translation": "社交媒体已成为日常生活中的普遍部分。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000533-ce16-0000-0000-000000000000', 'phlegmatic', '/fleɡˈmætɪk/', 'adj.', '[{"pos": "adj.", "meaning": "冷静的，迟钝的", "example": "His phlegmatic temperament made him ideal for crisis management.", "translation": "他冷静的性格使他成为危机管理的理想人选。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000534-ce16-0000-0000-000000000000', 'placid', '/ˈplæsɪd/', 'adj.', '[{"pos": "adj.", "meaning": "平静的，温和的", "example": "The placid lake reflected the surrounding mountains.", "translation": "平静的湖水倒映着周围的群山。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000535-ce16-0000-0000-000000000000', 'plausible', '/ˈplɔːzəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "似乎合理的，可信的", "example": "The suspect provided a plausible explanation for his whereabouts.", "translation": "嫌疑人对他当时的位置提供了看似合理的解释。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000536-ce16-0000-0000-000000000000', 'plethora', '/ˈpleθərə/', 'n.', '[{"pos": "n.", "meaning": "过多，过剩", "example": "The store offers a plethora of choices for customers.", "translation": "商店为顾客提供了过多的选择。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000537-ce16-0000-0000-000000000000', 'poignant', '/ˈpɔɪnjənt/', 'adj.', '[{"pos": "adj.", "meaning": "令人心酸的，深刻的", "example": "The documentary told a poignant story of survival.", "translation": "这部纪录片讲述了一个令人心酸的生存故事。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000538-ce16-0000-0000-000000000000', 'postulate', '/ˈpɒstʃuleɪt/', 'v./n.', '[{"pos": "v.", "meaning": "假设，假定", "example": "Scientists postulate that climate change affects migration patterns.", "translation": "科学家假设气候变化影响迁徙模式。"}, {"pos": "n.", "meaning": "假定，基本条件", "example": "The theory is based on several key postulates.", "translation": "该理论基于几个关键假定。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000539-ce16-0000-0000-000000000000', 'pragmatic', '/præɡˈmætɪk/', 'adj.', '[{"pos": "adj.", "meaning": "务实的，实际的", "example": "We need a pragmatic approach to solve this problem.", "translation": "我们需要用务实的方法来解决这个问题。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000540-ce16-0000-0000-000000000000', 'precarious', '/prɪˈkeəriəs/', 'adj.', '[{"pos": "adj.", "meaning": "不稳定的，危险的", "example": "The company''s financial situation is precarious.", "translation": "公司的财务状况不稳定。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000541-ce16-0000-0000-000000000000', 'precedent', '/ˈpresɪdənt/', 'n.', '[{"pos": "n.", "meaning": "先例，前例", "example": "The ruling set a precedent for future cases.", "translation": "这一裁决为未来的案件树立了先例。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000542-ce16-0000-0000-000000000000', 'precipitate', '/prɪˈsɪpɪteɪt/', 'v./adj.', '[{"pos": "v.", "meaning": "促使，加速", "example": "The crisis precipitated a change in government policy.", "translation": "这场危机促使政府政策发生了变化。"}, {"pos": "adj.", "meaning": "仓促的，鲁莽的", "example": "It would be precipitate to make a decision without more data.", "translation": "在没有更多数据的情况下做决定是仓促的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000543-ce16-0000-0000-000000000000', 'prerequisite', '/priːˈrekwɪzɪt/', 'n.', '[{"pos": "n.", "meaning": "先决条件，前提", "example": "A bachelor''s degree is a prerequisite for this position.", "translation": "学士学位是该职位的先决条件。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000544-ce16-0000-0000-000000000000', 'presumptuous', '/prɪˈzʌmptʃuəs/', 'adj.', '[{"pos": "adj.", "meaning": "放肆的，冒昧的", "example": "It would be presumptuous to speak on behalf of the entire group.", "translation": "代表整个小组发言将是冒昧的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000545-ce16-0000-0000-000000000000', 'prevalent', '/ˈprevələnt/', 'adj.', '[{"pos": "adj.", "meaning": "流行的，普遍的", "example": "Heart disease is prevalent among older adults.", "translation": "心脏病在老年人中很普遍。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000546-ce16-0000-0000-000000000000', 'pristine', '/ˈprɪstiːn/', 'adj.', '[{"pos": "adj.", "meaning": "原始的，纯净的", "example": "The beach was in pristine condition, untouched by tourists.", "translation": "海滩处于原始状态，未被游客触及。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000547-ce16-0000-0000-000000000000', 'proclaim', '/prəˈkleɪm/', 'v.', '[{"pos": "v.", "meaning": "宣布，声明", "example": "The government proclaimed a state of emergency.", "translation": "政府宣布进入紧急状态。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000548-ce16-0000-0000-000000000000', 'profound', '/prəˈfaʊnd/', 'adj.', '[{"pos": "adj.", "meaning": "深刻的，意义深远的", "example": "The discovery had a profound impact on the field of medicine.", "translation": "这一发现对医学领域产生了深远的影响。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000549-ce16-0000-0000-000000000000', 'profuse', '/prəˈfjuːs/', 'adj.', '[{"pos": "adj.", "meaning": "大量的，丰富的", "example": "She offered profuse apologies for the inconvenience.", "translation": "她对造成的不便表示了大量歉意。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000550-ce16-0000-0000-000000000000', 'prohibitive', '/prəˈhɪbɪtɪv/', 'adj.', '[{"pos": "adj.", "meaning": "禁止的，过高的", "example": "The cost of the treatment was prohibitive for most patients.", "translation": "这种治疗的费用对大多数患者来说过高。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000551-ce16-0000-0000-000000000000', 'prolific', '/prəˈlɪfɪk/', 'adj.', '[{"pos": "adj.", "meaning": "多产的，丰富的", "example": "She is one of the most prolific writers of her generation.", "translation": "她是她这一代最多产的作家之一。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000552-ce16-0000-0000-000000000000', 'prolong', '/prəˈlɒŋ/', 'v.', '[{"pos": "v.", "meaning": "延长，拖延", "example": "The negotiations were prolonged by disagreements over key terms.", "translation": "谈判因关键条款上的分歧而延长。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000553-ce16-0000-0000-000000000000', 'prominent', '/ˈprɒmɪnənt/', 'adj.', '[{"pos": "adj.", "meaning": "杰出的，突出的", "example": "The conference featured prominent speakers from various fields.", "translation": "会议邀请了来自不同领域的杰出演讲者。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000554-ce16-0000-0000-000000000000', 'propagate', '/ˈprɒpəɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "传播，蔓延", "example": "Social media can propagate misinformation quickly.", "translation": "社交媒体可以快速传播错误信息。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000555-ce16-0000-0000-000000000000', 'propensity', '/prəˈpensəti/', 'n.', '[{"pos": "n.", "meaning": "倾向，习性", "example": "He has a propensity for taking unnecessary risks.", "translation": "他有冒不必要风险的倾向。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000556-ce16-0000-0000-000000000000', 'proposition', '/ˌprɒpəˈzɪʃən/', 'n.', '[{"pos": "n.", "meaning": "提议，命题", "example": "The board rejected the proposition due to financial concerns.", "translation": "董事会因财务问题拒绝了这项提议。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000557-ce16-0000-0000-000000000000', 'prospective', '/prəˈspektɪv/', 'adj.', '[{"pos": "adj.", "meaning": "预期的，未来的", "example": "The company interviewed several prospective employees.", "translation": "公司面试了几位未来的员工。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000558-ce16-0000-0000-000000000000', 'prosperous', '/ˈprɒspərəs/', 'adj.', '[{"pos": "adj.", "meaning": "繁荣的，兴旺的", "example": "The city became prosperous through international trade.", "translation": "这座城市通过国际贸易变得繁荣。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000559-ce16-0000-0000-000000000000', 'provisional', '/prəˈvɪʒənəl/', 'adj.', '[{"pos": "adj.", "meaning": "临时的，暂定的", "example": "The two sides reached a provisional agreement.", "translation": "双方达成了临时协议。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000560-ce16-0000-0000-000000000000', 'provoke', '/prəˈvoʊk/', 'v.', '[{"pos": "v.", "meaning": "激怒，引起", "example": "The speech provoked a strong reaction from the audience.", "translation": "演讲引起了观众的强烈反应。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000561-ce16-0000-0000-000000000000', 'prudent', '/ˈpruːdənt/', 'adj.', '[{"pos": "adj.", "meaning": "谨慎的，明智的", "example": "It would be prudent to save some money for emergencies.", "translation": "为应急存些钱是明智的。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000562-ce16-0000-0000-000000000000', 'punctilious', '/pʌŋkˈtɪliəs/', 'adj.', '[{"pos": "adj.", "meaning": "一丝不苟的，注重细节的", "example": "The punctilious editor checked every comma and semicolon.", "translation": "一丝不苟的编辑检查了每一个逗号和分号。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000563-ce16-0000-0000-000000000000', 'putative', '/ˈpjuːtətɪv/', 'adj.', '[{"pos": "adj.", "meaning": "推定的，假定的", "example": "The putative cause of the accident is still under investigation.", "translation": "事故的推定原因仍在调查中。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000564-ce16-0000-0000-000000000000', 'quandary', '/ˈkwɒndəri/', 'n.', '[{"pos": "n.", "meaning": "困境，进退两难", "example": "The manager was in a quandary about which candidate to hire.", "translation": "经理在雇用哪位候选人的问题上进退两难。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000565-ce16-0000-0000-000000000000', 'quiescent', '/kwiˈesənt/', 'adj.', '[{"pos": "adj.", "meaning": "静止的，不活动的", "example": "The volcano has been quiescent for over a century.", "translation": "这座火山已经静止了一个多世纪。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000566-ce16-0000-0000-000000000000', 'quintessential', '/ˌkwɪntɪˈsenʃəl/', 'adj.', '[{"pos": "adj.", "meaning": "典型的，精髓的", "example": "Paris is considered the quintessential romantic city.", "translation": "巴黎被认为是典型的浪漫城市。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000567-ce16-0000-0000-000000000000', 'radical', '/ˈrædɪkəl/', 'adj./n.', '[{"pos": "adj.", "meaning": "根本的，激进的", "example": "The company underwent radical changes in management.", "translation": "公司在管理方面经历了根本性的变革。"}, {"pos": "n.", "meaning": "激进分子", "example": "The radical demanded immediate political reform.", "translation": "激进分子要求立即进行政治改革。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000568-ce16-0000-0000-000000000000', 'ramify', '/ˈræmɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "分枝，使复杂化", "example": "The consequences of the decision will ramify throughout the industry.", "translation": "这一决定的后果将在整个行业内产生复杂影响。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000569-ce16-0000-0000-000000000000', 'rampant', '/ˈræmpənt/', 'adj.', '[{"pos": "adj.", "meaning": "猖獗的，蔓延的", "example": "Corruption is rampant in some government agencies.", "translation": "腐败在一些政府机构中猖獗。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000570-ce16-0000-0000-000000000000', 'rationale', '/ˌræʃəˈnɑːl/', 'n.', '[{"pos": "n.", "meaning": "基本原理，理由", "example": "The rationale behind the decision was clearly explained.", "translation": "这一决定背后的基本原理被清楚地解释了。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000571-ce16-0000-0000-000000000000', 'recalcitrant', '/rɪˈkælsɪtrənt/', 'adj.', '[{"pos": "adj.", "meaning": "顽抗的，不服从的", "example": "The recalcitrant employee refused to follow company policies.", "translation": "这位顽抗的员工拒绝遵守公司政策。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000572-ce16-0000-0000-000000000000', 'reconcile', '/ˈrekənsaɪl/', 'v.', '[{"pos": "v.", "meaning": "调和，和解", "example": "It is difficult to reconcile the conflicting reports.", "translation": "很难调和相互矛盾的报告。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000573-ce16-0000-0000-000000000000', 'redundant', '/rɪˈdʌndənt/', 'adj.', '[{"pos": "adj.", "meaning": "多余的，冗余的", "example": "The report contained redundant information that could be removed.", "translation": "报告包含可以删除的冗余信息。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000574-ce16-0000-0000-000000000000', 'refute', '/rɪˈfjuːt/', 'v.', '[{"pos": "v.", "meaning": "反驳，驳斥", "example": "The scientist was able to refute the claims with new evidence.", "translation": "这位科学家能够用新证据反驳这些说法。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000575-ce16-0000-0000-000000000000', 'relegate', '/ˈrelɪɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "贬职，降级", "example": "The team was relegated to a lower division.", "translation": "这支队伍被降级到低一级的联赛。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000576-ce16-0000-0000-000000000000', 'remnant', '/ˈremnənt/', 'n.', '[{"pos": "n.", "meaning": "残余，遗迹", "example": "The remnants of the ancient civilization can still be seen today.", "translation": "古代文明的遗迹至今仍可见。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000577-ce16-0000-0000-000000000000', 'repercussion', '/ˌriːpərˈkʌʃən/', 'n.', '[{"pos": "n.", "meaning": "影响，后果", "example": "The decision had far-reaching repercussions for the industry.", "translation": "这个决定对整个行业产生了深远的影响。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000578-ce16-0000-0000-000000000000', 'repudiate', '/rɪˈpjuːdieɪt/', 'v.', '[{"pos": "v.", "meaning": "否认，拒绝", "example": "The company repudiated the allegations made against it.", "translation": "公司否认了对它的指控。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000579-ce16-0000-0000-000000000000', 'requisite', '/ˈrekwɪzɪt/', 'adj./n.', '[{"pos": "adj.", "meaning": "必要的，必不可少的", "example": "The candidate must have the requisite skills for the position.", "translation": "候选人必须具备该职位所必需的技能。"}, {"pos": "n.", "meaning": "必需品", "example": "She packed all the requisites for the journey.", "translation": "她打包了旅途的所有必需品。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000580-ce16-0000-0000-000000000000', 'residual', '/rɪˈzɪdjuəl/', 'adj.', '[{"pos": "adj.", "meaning": "剩余的，残留的", "example": "There were residual effects from the medication.", "translation": "药物有残留效应。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000581-ce16-0000-0000-000000000000', 'resilient', '/rɪˈzɪliənt/', 'adj.', '[{"pos": "adj.", "meaning": "有弹性的，恢复力强的", "example": "Children are remarkably resilient in the face of adversity.", "translation": "儿童在面对逆境时表现出惊人的恢复力。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000582-ce16-0000-0000-000000000000', 'resonate', '/ˈrezəneɪt/', 'v.', '[{"pos": "v.", "meaning": "共鸣，回响", "example": "The speaker''s message resonated with the audience.", "translation": "演讲者的信息引起了观众的共鸣。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000583-ce16-0000-0000-000000000000', 'reticent', '/ˈretɪsənt/', 'adj.', '[{"pos": "adj.", "meaning": "沉默寡言的，不愿说话的", "example": "She was reticent about discussing her personal life.", "translation": "她不愿谈论自己的私生活。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000584-ce16-0000-0000-000000000000', 'rhetoric', '/ˈretərɪk/', 'n.', '[{"pos": "n.", "meaning": "修辞学，花言巧语", "example": "The politician''s rhetoric was persuasive but lacked substance.", "translation": "这位政治家的花言巧语很有说服力但缺乏实质内容。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000585-ce16-0000-0000-000000000000', 'rigid', '/ˈrɪdʒɪd/', 'adj.', '[{"pos": "adj.", "meaning": "严格的，僵硬的", "example": "The company has a rigid policy regarding employee conduct.", "translation": "公司对员工行为有严格的政策。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000586-ce16-0000-0000-000000000000', 'robust', '/roʊˈbʌst/', 'adj.', '[{"pos": "adj.", "meaning": "强健的，健全的", "example": "The economy showed robust growth last quarter.", "translation": "上个季度经济显示出强劲增长。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000587-ce16-0000-0000-000000000000', 'rudimentary', '/ˌruːdɪˈmentəri/', 'adj.', '[{"pos": "adj.", "meaning": "基本的，初步的", "example": "He has only a rudimentary understanding of the subject.", "translation": "他对这个学科只有基本的了解。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000588-ce16-0000-0000-000000000000', 'sagacious', '/səˈɡeɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "睿智的，精明的", "example": "The sagacious leader anticipated the market changes.", "translation": "这位睿智的领袖预见到了市场的变化。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000589-ce16-0000-0000-000000000000', 'saturate', '/ˈsætʃəreɪt/', 'v.', '[{"pos": "v.", "meaning": "使饱和，浸透", "example": "The market is already saturated with similar products.", "translation": "市场已经被类似产品饱和了。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000590-ce16-0000-0000-000000000000', 'scrutiny', '/ˈskruːtəni/', 'n.', '[{"pos": "n.", "meaning": "审查，仔细检查", "example": "The proposal came under intense scrutiny from the committee.", "translation": "该提案受到了委员会的严格审查。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000591-ce16-0000-0000-000000000000', 'sentiment', '/ˈsentɪmənt/', 'n.', '[{"pos": "n.", "meaning": "情感，观点", "example": "Public sentiment shifted in favor of the proposal.", "translation": "公众情绪转向支持该提案。"}]'::jsonb, 'CET6', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000592-ce16-0000-0000-000000000000', 'skeptical', '/ˈskeptɪkəl/', 'adj.', '[{"pos": "adj.", "meaning": "怀疑的，多疑的", "example": "Many scientists are skeptical about the findings of the study.", "translation": "许多科学家对这项研究的结果持怀疑态度。"}]'::jsonb, 'CET6', true)
;

INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000593-ka01-0000-0000-000000000000', 'adhere', '/ədˈhɪər/', 'v.', '[{"pos": "v.", "meaning": "坚持；粘附", "example": "You must adhere to the rules and regulations.", "translation": "你必须遵守规章制度。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000594-ka01-0000-0000-000000000000', 'administer', '/ədˈmɪnɪstər/', 'v.', '[{"pos": "v.", "meaning": "管理；执行", "example": "The committee administers the funds.", "translation": "委员会管理这些资金。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000595-ka01-0000-0000-000000000000', 'adolescent', '/ˌædəˈlesənt/', 'n.', '[{"pos": "n.", "meaning": "青少年", "example": "The program is designed for adolescents aged 13 to 18.", "translation": "该项目是为13至18岁的青少年设计的。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000596-ka01-0000-0000-000000000000', 'ambiguous', '/æmˈbɪɡjuəs/', 'adj.', '[{"pos": "adj.", "meaning": "模棱两可的；含糊的", "example": "The instructions were ambiguous and confusing.", "translation": "说明含糊不清，令人困惑。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000597-ka01-0000-0000-000000000000', 'amend', '/əˈmend/', 'v.', '[{"pos": "v.", "meaning": "修改；修正", "example": "The law was amended to include new provisions.", "translation": "该法律被修改以纳入新条款。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000598-ka01-0000-0000-000000000000', 'ample', '/ˈæmpəl/', 'adj.', '[{"pos": "adj.", "meaning": "充足的；丰富的", "example": "There is ample evidence to support the theory.", "translation": "有充足的证据支持这一理论。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000599-ka01-0000-0000-000000000000', 'apprehend', '/ˌæprɪˈhend/', 'v.', '[{"pos": "v.", "meaning": "逮捕；理解", "example": "The police apprehended the suspect within hours.", "translation": "警方在几小时内逮捕了嫌疑人。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000600-ka01-0000-0000-000000000000', 'approximate', '/əˈprɒksɪmət/', 'adj.', '[{"pos": "adj.", "meaning": "大约的；近似的", "example": "The approximate cost of the project is one million dollars.", "translation": "该项目的大约成本为一百万美元。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000601-ka01-0000-0000-000000000000', 'aspire', '/əˈspaɪər/', 'v.', '[{"pos": "v.", "meaning": "渴望；追求", "example": "She aspires to become a successful writer.", "translation": "她渴望成为一名成功的作家。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000602-ka01-0000-0000-000000000000', 'assert', '/əˈsɜːt/', 'v.', '[{"pos": "v.", "meaning": "断言；声称", "example": "He asserted his innocence throughout the trial.", "translation": "他在整个审判过程中都声称自己无罪。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000603-ka01-0000-0000-000000000000', 'assimilate', '/əˈsɪməleɪt/', 'v.', '[{"pos": "v.", "meaning": "吸收；同化", "example": "Immigrants often struggle to assimilate into a new culture.", "translation": "移民往往难以融入新文化。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000604-ka01-0000-0000-000000000000', 'authentic', '/ɔːˈθentɪk/', 'adj.', '[{"pos": "adj.", "meaning": "真实的；可靠的", "example": "The painting was confirmed to be authentic.", "translation": "这幅画被确认为真品。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000605-ka01-0000-0000-000000000000', 'autonomy', '/ɔːˈtɒnəmi/', 'n.', '[{"pos": "n.", "meaning": "自治；自主权", "example": "The region was granted greater autonomy.", "translation": "该地区被授予更大的自治权。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000606-ka01-0000-0000-000000000000', 'avert', '/əˈvɜːt/', 'v.', '[{"pos": "v.", "meaning": "避免；转移", "example": "Quick action averted a major disaster.", "translation": "迅速的行动避免了一场重大灾难。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000607-ka01-0000-0000-000000000000', 'biased', '/ˈbaɪəst/', 'adj.', '[{"pos": "adj.", "meaning": "有偏见的；偏袒的", "example": "The report was criticized for being biased.", "translation": "该报告因存在偏见而受到批评。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000608-ka01-0000-0000-000000000000', 'bureaucracy', '/bjʊˈrɒkrəsi/', 'n.', '[{"pos": "n.", "meaning": "官僚机构；官僚主义", "example": "Excessive bureaucracy slows down decision-making.", "translation": "过度的官僚主义会减慢决策速度。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000609-ka01-0000-0000-000000000000', 'calibrate', '/ˈkælɪbreɪt/', 'v.', '[{"pos": "v.", "meaning": "校准；调整", "example": "You need to calibrate the instrument before use.", "translation": "使用前需要校准仪器。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000610-ka01-0000-0000-000000000000', 'catastrophe', '/kəˈtæstrəfi/', 'n.', '[{"pos": "n.", "meaning": "灾难；大祸", "example": "The earthquake was a major catastrophe.", "translation": "这场地震是一场重大灾难。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000611-ka01-0000-0000-000000000000', 'chronic', '/ˈkrɒnɪk/', 'adj.', '[{"pos": "adj.", "meaning": "慢性的；长期的", "example": "He suffers from chronic back pain.", "translation": "他患有慢性背痛。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000612-ka01-0000-0000-000000000000', 'cite', '/saɪt/', 'v.', '[{"pos": "v.", "meaning": "引用；举例", "example": "She cited several studies to support her argument.", "translation": "她引用了几项研究来支持自己的论点。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000613-ka01-0000-0000-000000000000', 'collaborate', '/kəˈlæbəreɪt/', 'v.', '[{"pos": "v.", "meaning": "合作；协作", "example": "The two companies decided to collaborate on the project.", "translation": "两家公司决定在这个项目上合作。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000614-ka01-0000-0000-000000000000', 'commence', '/kəˈmens/', 'v.', '[{"pos": "v.", "meaning": "开始；着手", "example": "The ceremony will commence at nine o''clock.", "translation": "仪式将在九点开始。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000615-ka01-0000-0000-000000000000', 'compile', '/kəmˈpaɪl/', 'v.', '[{"pos": "v.", "meaning": "汇编；编辑", "example": "She compiled a list of all the participants.", "translation": "她汇编了一份所有参与者的名单。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000616-ka01-0000-0000-000000000000', 'complement', '/ˈkɒmplɪment/', 'v.', '[{"pos": "v.", "meaning": "补充；补足", "example": "The wine complements the meal perfectly.", "translation": "这顿酒与餐食完美搭配。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000617-ka01-0000-0000-000000000000', 'comprehensive', '/ˌkɒmprɪˈhensɪv/', 'adj.', '[{"pos": "adj.", "meaning": "全面的；综合的", "example": "The report provides a comprehensive analysis of the situation.", "translation": "该报告对情况进行了全面分析。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000618-ka01-0000-0000-000000000000', 'compromise', '/ˈkɒmprəmaɪz/', 'n.', '[{"pos": "n.", "meaning": "妥协；折中", "example": "They reached a compromise after long negotiations.", "translation": "经过长时间谈判，他们达成了妥协。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000619-ka01-0000-0000-000000000000', 'compulsory', '/kəmˈpʌlsəri/', 'adj.', '[{"pos": "adj.", "meaning": "强制的；义务的", "example": "Education is compulsory for children aged 5 to 16.", "translation": "5至16岁的儿童必须接受义务教育。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000620-ka01-0000-0000-000000000000', 'conceive', '/kənˈsiːv/', 'v.', '[{"pos": "v.", "meaning": "构想；怀孕", "example": "She conceived a plan to increase sales.", "translation": "她构想了一个增加销售的计划。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000621-ka01-0000-0000-000000000000', 'confine', '/kənˈfaɪn/', 'v.', '[{"pos": "v.", "meaning": "限制；禁闭", "example": "The discussion was confined to the main topic.", "translation": "讨论被限制在主要话题上。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000622-ka01-0000-0000-000000000000', 'conform', '/kənˈfɔːm/', 'v.', '[{"pos": "v.", "meaning": "遵守；符合", "example": "You must conform to the company''s dress code.", "translation": "你必须遵守公司的着装规范。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000623-ka01-0000-0000-000000000000', 'consensus', '/kənˈsensəs/', 'n.', '[{"pos": "n.", "meaning": "共识；一致意见", "example": "The committee reached a consensus on the issue.", "translation": "委员会就这个问题达成了共识。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000624-ka01-0000-0000-000000000000', 'consequent', '/ˈkɒnsɪkwənt/', 'adj.', '[{"pos": "adj.", "meaning": "随之发生的；作为结果的", "example": "The flood and consequent damage were devastating.", "translation": "洪水及其造成的破坏是毁灭性的。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000625-ka01-0000-0000-000000000000', 'conserve', '/kənˈsɜːv/', 'v.', '[{"pos": "v.", "meaning": "保存；节约", "example": "We must conserve water during the drought.", "translation": "干旱期间我们必须节约用水。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000626-ka01-0000-0000-000000000000', 'constitute', '/ˈkɒnstɪtjuːt/', 'v.', '[{"pos": "v.", "meaning": "构成；组成", "example": "Women constitute a majority of the workforce.", "translation": "女性构成了劳动力的大多数。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000627-ka01-0000-0000-000000000000', 'constrain', '/kənˈstreɪn/', 'v.', '[{"pos": "v.", "meaning": "限制；约束", "example": "Budget constraints limit our options.", "translation": "预算限制了我们的选择。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000628-ka01-0000-0000-000000000000', 'contemplate', '/ˈkɒntəmpleɪt/', 'v.', '[{"pos": "v.", "meaning": "沉思；考虑", "example": "She contemplated the meaning of life.", "translation": "她沉思人生的意义。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000629-ka01-0000-0000-000000000000', 'contend', '/kənˈtend/', 'v.', '[{"pos": "v.", "meaning": "竞争；主张", "example": "Several companies contend for the contract.", "translation": "几家公司竞争这份合同。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000630-ka01-0000-0000-000000000000', 'convene', '/kənˈviːn/', 'v.', '[{"pos": "v.", "meaning": "召集；集合", "example": "The board will convene tomorrow to discuss the matter.", "translation": "董事会明天将召开会议讨论此事。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000631-ka01-0000-0000-000000000000', 'convey', '/kənˈveɪ/', 'v.', '[{"pos": "v.", "meaning": "传达；运输", "example": "Words cannot convey how grateful I am.", "translation": "言语无法表达我有多么感激。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000632-ka01-0000-0000-000000000000', 'curb', '/kɜːb/', 'v.', '[{"pos": "v.", "meaning": "抑制；控制", "example": "The government took measures to curb inflation.", "translation": "政府采取措施抑制通货膨胀。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000633-ka01-0000-0000-000000000000', 'decisive', '/dɪˈsaɪsɪv/', 'adj.', '[{"pos": "adj.", "meaning": "决定性的；果断的", "example": "Her decisive leadership saved the company.", "translation": "她果断的领导拯救了公司。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000634-ka01-0000-0000-000000000000', 'deem', '/diːm/', 'v.', '[{"pos": "v.", "meaning": "认为；视为", "example": "The plan was deemed too risky.", "translation": "该计划被认为风险太大。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000635-ka01-0000-0000-000000000000', 'deficiency', '/dɪˈfɪʃənsi/', 'n.', '[{"pos": "n.", "meaning": "缺乏；不足", "example": "Vitamin D deficiency is common in winter.", "translation": "冬季维生素D缺乏很常见。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000636-ka01-0000-0000-000000000000', 'degrade', '/dɪˈɡreɪd/', 'v.', '[{"pos": "v.", "meaning": "降级；退化", "example": "Pollution can degrade the quality of water.", "translation": "污染会降低水质。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000637-ka01-0000-0000-000000000000', 'denote', '/dɪˈnəʊt/', 'v.', '[{"pos": "v.", "meaning": "表示；指示", "example": "The symbol ''X'' denotes the unknown variable.", "translation": "符号''X''表示未知变量。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000638-ka01-0000-0000-000000000000', 'depict', '/dɪˈpɪkt/', 'v.', '[{"pos": "v.", "meaning": "描绘；描述", "example": "The painting depicts a beautiful landscape.", "translation": "这幅画描绘了一幅美丽的风景。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000639-ka01-0000-0000-000000000000', 'deteriorate', '/dɪˈtɪəriəreɪt/', 'v.', '[{"pos": "v.", "meaning": "恶化；变坏", "example": "His health deteriorated rapidly.", "translation": "他的健康状况迅速恶化。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000640-ka01-0000-0000-000000000000', 'deviate', '/ˈdiːvieɪt/', 'v.', '[{"pos": "v.", "meaning": "偏离；背离", "example": "Do not deviate from the established procedures.", "translation": "不要偏离既定程序。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000641-ka01-0000-0000-000000000000', 'devise', '/dɪˈvaɪz/', 'v.', '[{"pos": "v.", "meaning": "设计；发明", "example": "They devised a plan to increase efficiency.", "translation": "他们设计了一个提高效率的计划。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000642-ka01-0000-0000-000000000000', 'diagnose', '/ˈdaɪəɡnəʊz/', 'v.', '[{"pos": "v.", "meaning": "诊断", "example": "The doctor diagnosed her with diabetes.", "translation": "医生诊断她患有糖尿病。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000643-ka01-0000-0000-000000000000', 'disclose', '/dɪsˈkləʊz/', 'v.', '[{"pos": "v.", "meaning": "揭露；公开", "example": "The company refused to disclose its financial records.", "translation": "公司拒绝公开其财务记录。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000644-ka01-0000-0000-000000000000', 'discourse', '/ˈdɪskɔːs/', 'n.', '[{"pos": "n.", "meaning": "论述；演讲", "example": "The professor delivered a discourse on modern philosophy.", "translation": "教授发表了关于现代哲学的演讲。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000645-ka01-0000-0000-000000000000', 'discrete', '/dɪˈskriːt/', 'adj.', '[{"pos": "adj.", "meaning": "离散的；不相关的", "example": "The data is divided into discrete categories.", "translation": "数据被分为离散的类别。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000646-ka01-0000-0000-000000000000', 'discriminate', '/dɪˈskrɪmɪneɪt/', 'v.', '[{"pos": "v.", "meaning": "歧视；区分", "example": "It is illegal to discriminate against people based on race.", "translation": "基于种族歧视是非法的。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000647-ka01-0000-0000-000000000000', 'displace', '/dɪsˈpleɪs/', 'v.', '[{"pos": "v.", "meaning": "取代；迫使离开", "example": "The war displaced thousands of families.", "translation": "战争迫使数千个家庭流离失所。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000648-ka01-0000-0000-000000000000', 'dispose', '/dɪˈspəʊz/', 'v.', '[{"pos": "v.", "meaning": "处理；处置", "example": "Please dispose of the waste properly.", "translation": "请妥善处理废物。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000649-ka01-0000-0000-000000000000', 'dispute', '/dɪˈspjuːt/', 'n.', '[{"pos": "n.", "meaning": "争端；纠纷", "example": "The two countries are trying to resolve their territorial dispute.", "translation": "两国正试图解决领土争端。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000650-ka01-0000-0000-000000000000', 'disrupt', '/dɪsˈrʌpt/', 'v.', '[{"pos": "v.", "meaning": "扰乱；中断", "example": "The protest disrupted traffic in the city center.", "translation": "抗议活动扰乱了市中心的交通。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000651-ka01-0000-0000-000000000000', 'distort', '/dɪˈstɔːt/', 'v.', '[{"pos": "v.", "meaning": "扭曲；歪曲", "example": "The media often distorts the facts.", "translation": "媒体常常歪曲事实。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000652-ka01-0000-0000-000000000000', 'divert', '/daɪˈvɜːt/', 'v.', '[{"pos": "v.", "meaning": "转移；使转向", "example": "Traffic was diverted to a different route.", "translation": "交通被分流到另一条路线。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000653-ka01-0000-0000-000000000000', 'doctrine', '/ˈdɒktrɪn/', 'n.', '[{"pos": "n.", "meaning": "教义；学说", "example": "The doctrine of free speech is fundamental to democracy.", "translation": "言论自由的学说是民主的基础。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000654-ka01-0000-0000-000000000000', 'domain', '/dəˈmeɪn/', 'n.', '[{"pos": "n.", "meaning": "领域；领地", "example": "This topic falls within the domain of psychology.", "translation": "这个话题属于心理学领域。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000655-ka01-0000-0000-000000000000', 'dominate', '/ˈdɒmɪneɪt/', 'v.', '[{"pos": "v.", "meaning": "支配；占主导地位", "example": "The company dominates the global market.", "translation": "该公司在全球市场占主导地位。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000656-ka01-0000-0000-000000000000', 'drain', '/dreɪn/', 'v.', '[{"pos": "v.", "meaning": "排出；耗尽", "example": "The long meeting drained everyone''s energy.", "translation": "漫长的会议耗尽了每个人的精力。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000657-ka01-0000-0000-000000000000', 'eligible', '/ˈelɪdʒəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "有资格的；合格的", "example": "Only citizens are eligible to vote.", "translation": "只有公民才有资格投票。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000658-ka01-0000-0000-000000000000', 'empirical', '/ɪmˈpɪrɪkəl/', 'adj.', '[{"pos": "adj.", "meaning": "经验主义的；以观察为依据的", "example": "The theory is supported by empirical evidence.", "translation": "该理论有经验证据支持。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000659-ka01-0000-0000-000000000000', 'encounter', '/ɪnˈkaʊntər/', 'v.', '[{"pos": "v.", "meaning": "遇到；遭遇", "example": "We encountered several problems during the project.", "translation": "我们在项目期间遇到了几个问题。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000660-ka01-0000-0000-000000000000', 'enhance', '/ɪnˈhɑːns/', 'v.', '[{"pos": "v.", "meaning": "增强；提高", "example": "Technology can enhance the learning experience.", "translation": "技术可以增强学习体验。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000661-ka01-0000-0000-000000000000', 'enormous', '/ɪˈnɔːməs/', 'adj.', '[{"pos": "adj.", "meaning": "巨大的；庞大的", "example": "The project requires an enormous amount of resources.", "translation": "该项目需要大量的资源。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000662-ka01-0000-0000-000000000000', 'envisage', '/ɪnˈvɪzɪdʒ/', 'v.', '[{"pos": "v.", "meaning": "想象；设想", "example": "It is hard to envisage a world without technology.", "translation": "很难想象一个没有科技的世界。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000663-ka01-0000-0000-000000000000', 'equivalent', '/ɪˈkwɪvələnt/', 'adj.', '[{"pos": "adj.", "meaning": "等同的；相当的", "example": "One mile is equivalent to 1.6 kilometers.", "translation": "一英里相当于1.6公里。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000664-ka01-0000-0000-000000000000', 'erode', '/ɪˈrəʊd/', 'v.', '[{"pos": "v.", "meaning": "侵蚀；腐蚀", "example": "Wind and rain erode the mountains over time.", "translation": "风雨随着时间的推移侵蚀着山脉。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000665-ka01-0000-0000-000000000000', 'essence', '/ˈesəns/', 'n.', '[{"pos": "n.", "meaning": "本质；精华", "example": "The essence of the argument is about fairness.", "translation": "争论的本质是关于公平。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000666-ka01-0000-0000-000000000000', 'establish', '/ɪˈstæblɪʃ/', 'v.', '[{"pos": "v.", "meaning": "建立；确立", "example": "The company was established in 1990.", "translation": "该公司成立于1990年。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000667-ka01-0000-0000-000000000000', 'evaluate', '/ɪˈvæljueɪt/', 'v.', '[{"pos": "v.", "meaning": "评估；评价", "example": "The committee will evaluate all the proposals.", "translation": "委员会将评估所有提案。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000668-ka01-0000-0000-000000000000', 'evoke', '/ɪˈvəʊk/', 'v.', '[{"pos": "v.", "meaning": "唤起；引起", "example": "The song evoked memories of childhood.", "translation": "这首歌唤起了童年的回忆。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000669-ka01-0000-0000-000000000000', 'exaggerate', '/ɪɡˈzædʒəreɪt/', 'v.', '[{"pos": "v.", "meaning": "夸大；夸张", "example": "He tends to exaggerate his achievements.", "translation": "他倾向于夸大自己的成就。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000670-ka01-0000-0000-000000000000', 'exceed', '/ɪkˈsiːd/', 'v.', '[{"pos": "v.", "meaning": "超过；超越", "example": "Sales exceeded expectations this quarter.", "translation": "本季度销售额超出了预期。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000671-ka01-0000-0000-000000000000', 'excerpt', '/ˈeksɜːpt/', 'n.', '[{"pos": "n.", "meaning": "摘录；节选", "example": "She read an excerpt from the novel.", "translation": "她读了小说的一段摘录。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000672-ka01-0000-0000-000000000000', 'feasible', '/ˈfiːzəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "可行的；可能的", "example": "The plan is technically feasible.", "translation": "该计划在技术上是可行的。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000673-ka01-0000-0000-000000000000', 'fluctuate', '/ˈflʌktʃueɪt/', 'v.', '[{"pos": "v.", "meaning": "波动；起伏", "example": "Oil prices fluctuate throughout the year.", "translation": "石油价格全年都在波动。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000674-ka01-0000-0000-000000000000', 'formidable', '/ˈfɔːmɪdəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "强大的；令人敬畏的", "example": "She is a formidable opponent in the debate.", "translation": "她是辩论中一个强大的对手。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000675-ka01-0000-0000-000000000000', 'formulate', '/ˈfɔːmjəleɪt/', 'v.', '[{"pos": "v.", "meaning": "制定；阐述", "example": "The team formulated a new strategy.", "translation": "团队制定了一项新战略。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000676-ka01-0000-0000-000000000000', 'friction', '/ˈfrɪkʃən/', 'n.', '[{"pos": "n.", "meaning": "摩擦；摩擦力", "example": "There is friction between the two departments.", "translation": "两个部门之间存在摩擦。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000677-ka01-0000-0000-000000000000', 'fundamental', '/ˌfʌndəˈmentəl/', 'adj.', '[{"pos": "adj.", "meaning": "基本的；根本的", "example": "Education is a fundamental right.", "translation": "教育是一项基本权利。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000678-ka01-0000-0000-000000000000', 'genuine', '/ˈdʒenjuɪn/', 'adj.', '[{"pos": "adj.", "meaning": "真正的；真诚的", "example": "Her concern for others is genuine.", "translation": "她对他人的关心是真诚的。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000679-ka01-0000-0000-000000000000', 'grasp', '/ɡrɑːsp/', 'v.', '[{"pos": "v.", "meaning": "理解；抓住", "example": "He quickly grasped the main concepts.", "translation": "他很快就掌握了主要概念。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000680-ka01-0000-0000-000000000000', 'halt', '/hɔːlt/', 'v.', '[{"pos": "v.", "meaning": "停止；暂停", "example": "Production was halted due to the strike.", "translation": "由于罢工，生产停止了。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000681-ka01-0000-0000-000000000000', 'hierarchy', '/ˈhaɪərɑːki/', 'n.', '[{"pos": "n.", "meaning": "等级制度；层次结构", "example": "The company has a strict hierarchy.", "translation": "公司有严格的等级制度。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000682-ka01-0000-0000-000000000000', 'hinder', '/ˈhɪndər/', 'v.', '[{"pos": "v.", "meaning": "阻碍；妨碍", "example": "Lack of funding hindered the research.", "translation": "缺乏资金阻碍了研究。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000683-ka01-0000-0000-000000000000', 'hypothesis', '/haɪˈpɒθəsɪs/', 'n.', '[{"pos": "n.", "meaning": "假设；假说", "example": "The scientist tested her hypothesis through experiments.", "translation": "科学家通过实验检验了她的假设。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000684-ka01-0000-0000-000000000000', 'identical', '/aɪˈdentɪkəl/', 'adj.', '[{"pos": "adj.", "meaning": "相同的；完全一样的", "example": "The two documents are almost identical.", "translation": "这两份文件几乎完全相同。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000685-ka01-0000-0000-000000000000', 'illuminate', '/ɪˈluːmɪneɪt/', 'v.', '[{"pos": "v.", "meaning": "照亮；阐明", "example": "The study illuminates the causes of the disease.", "translation": "这项研究阐明了该疾病的原因。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000686-ka01-0000-0000-000000000000', 'immerse', '/ɪˈmɜːs/', 'v.', '[{"pos": "v.", "meaning": "沉浸；使陷入", "example": "She immersed herself in her studies.", "translation": "她全身心投入到学习中。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000687-ka01-0000-0000-000000000000', 'immune', '/ɪˈmjuːn/', 'adj.', '[{"pos": "adj.", "meaning": "免疫的；不受影响的", "example": "Some people are immune to the disease.", "translation": "有些人对该疾病免疫。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000688-ka01-0000-0000-000000000000', 'impair', '/ɪmˈpeər/', 'v.', '[{"pos": "v.", "meaning": "损害；削弱", "example": "Alcohol impairs your ability to drive.", "translation": "酒精会损害你的驾驶能力。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000689-ka01-0000-0000-000000000000', 'implement', '/ˈɪmplɪment/', 'v.', '[{"pos": "v.", "meaning": "实施；执行", "example": "The government plans to implement new policies.", "translation": "政府计划实施新政策。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000690-ka01-0000-0000-000000000000', 'impose', '/ɪmˈpəʊz/', 'v.', '[{"pos": "v.", "meaning": "强加；征收", "example": "The government imposed a tax on luxury goods.", "translation": "政府对奢侈品征税。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000691-ka01-0000-0000-000000000000', 'impulse', '/ˈɪmpʌls/', 'n.', '[{"pos": "n.", "meaning": "冲动；脉冲", "example": "She bought the dress on impulse.", "translation": "她一时冲动买了这条裙子。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000692-ka01-0000-0000-000000000000', 'incentive', '/ɪnˈsentɪv/', 'n.', '[{"pos": "n.", "meaning": "激励；动机", "example": "The bonus serves as an incentive for employees.", "translation": "奖金是对员工的一种激励。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000693-ka01-0000-0000-000000000000', 'incline', '/ɪnˈklaɪn/', 'v.', '[{"pos": "v.", "meaning": "倾斜；倾向于", "example": "I am inclined to agree with your proposal.", "translation": "我倾向于同意你的提议。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000694-ka01-0000-0000-000000000000', 'indicate', '/ˈɪndɪkeɪt/', 'v.', '[{"pos": "v.", "meaning": "表明；指示", "example": "The results indicate a positive trend.", "translation": "结果表明呈积极趋势。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000695-ka01-0000-0000-000000000000', 'inhibit', '/ɪnˈhɪbɪt/', 'v.', '[{"pos": "v.", "meaning": "抑制；阻止", "example": "Fear can inhibit personal growth.", "translation": "恐惧会抑制个人成长。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000696-ka01-0000-0000-000000000000', 'initiate', '/ɪˈnɪʃieɪt/', 'v.', '[{"pos": "v.", "meaning": "开始；发起", "example": "The company initiated a new marketing campaign.", "translation": "公司发起了一场新的营销活动。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000697-ka01-0000-0000-000000000000', 'innovate', '/ˈɪnəveɪt/', 'v.', '[{"pos": "v.", "meaning": "创新；革新", "example": "Companies must innovate to stay competitive.", "translation": "公司必须创新以保持竞争力。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000698-ka01-0000-0000-000000000000', 'insight', '/ˈɪnsaɪt/', 'n.', '[{"pos": "n.", "meaning": "洞察力；见解", "example": "The book provides valuable insights into human behavior.", "translation": "这本书提供了对人类行为的宝贵见解。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000699-ka01-0000-0000-000000000000', 'inspect', '/ɪnˈspekt/', 'v.', '[{"pos": "v.", "meaning": "检查；视察", "example": "Health inspectors regularly inspect restaurants.", "translation": "卫生检查员定期检查餐馆。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000700-ka01-0000-0000-000000000000', 'integrate', '/ˈɪntɪɡreɪt/', 'v.', '[{"pos": "v.", "meaning": "整合；融入", "example": "The school works to integrate technology into the curriculum.", "translation": "学校努力将技术融入课程。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000701-ka01-0000-0000-000000000000', 'integrity', '/ɪnˈteɡrəti/', 'n.', '[{"pos": "n.", "meaning": "正直；完整性", "example": "He is a man of great integrity.", "translation": "他是一个非常正直的人。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000702-ka01-0000-0000-000000000000', 'interact', '/ˌɪntərˈækt/', 'v.', '[{"pos": "v.", "meaning": "互动；相互作用", "example": "Students learn by interacting with each other.", "translation": "学生通过相互交流来学习。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000703-ka01-0000-0000-000000000000', 'interpret', '/ɪnˈtɜːprɪt/', 'v.', '[{"pos": "v.", "meaning": "解释；口译", "example": "Different people may interpret the same data differently.", "translation": "不同的人可能对同一数据有不同的解释。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000704-ka01-0000-0000-000000000000', 'intervene', '/ˌɪntəˈviːn/', 'v.', '[{"pos": "v.", "meaning": "干预；介入", "example": "The government intervened to stabilize the economy.", "translation": "政府进行了干预以稳定经济。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000705-ka01-0000-0000-000000000000', 'intimate', '/ˈɪntɪmət/', 'adj.', '[{"pos": "adj.", "meaning": "亲密的；私人的", "example": "They have been intimate friends for years.", "translation": "他们多年来一直是亲密的朋友。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000706-ka01-0000-0000-000000000000', 'irrelevant', '/ɪˈreləvənt/', 'adj.', '[{"pos": "adj.", "meaning": "不相关的；无关紧要的", "example": "Your comment is irrelevant to the discussion.", "translation": "你的评论与讨论无关。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000707-ka01-0000-0000-000000000000', 'isolate', '/ˈaɪsəleɪt/', 'v.', '[{"pos": "v.", "meaning": "隔离；孤立", "example": "The patient was isolated to prevent the spread of infection.", "translation": "患者被隔离以防止感染传播。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000708-ka01-0000-0000-000000000000', 'justify', '/ˈdʒʌstɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "证明...正当；为...辩护", "example": "He couldn''t justify his actions.", "translation": "他无法为自己的行为辩护。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000709-ka01-0000-0000-000000000000', 'legitimate', '/lɪˈdʒɪtɪmət/', 'adj.', '[{"pos": "adj.", "meaning": "合法的；正当的", "example": "The claim is legitimate and should be honored.", "translation": "这项索赔是合法的，应该予以兑现。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000710-ka01-0000-0000-000000000000', 'liable', '/ˈlaɪəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "有责任的；有义务的", "example": "The company is liable for any damages.", "translation": "公司对任何损害负有责任。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000711-ka01-0000-0000-000000000000', 'likewise', '/ˈlaɪkwaɪz/', 'adv.', '[{"pos": "adv.", "meaning": "同样地；也", "example": "She enjoyed the film, and I likewise found it entertaining.", "translation": "她喜欢这部电影，我也觉得它很有趣。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000712-ka01-0000-0000-000000000000', 'lure', '/lʊər/', 'v.', '[{"pos": "v.", "meaning": "引诱；诱惑", "example": "The promise of high salaries lured many applicants.", "translation": "高薪的承诺吸引了许多申请者。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000713-ka01-0000-0000-000000000000', 'magnitude', '/ˈmæɡnɪtjuːd/', 'n.', '[{"pos": "n.", "meaning": "巨大；重要性；震级", "example": "The magnitude of the problem is only now becoming clear.", "translation": "这个问题的严重性直到现在才变得清晰。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000714-ka01-0000-0000-000000000000', 'mandatory', '/ˈmændətəri/', 'adj.', '[{"pos": "adj.", "meaning": "强制的；必须的", "example": "Attendance at the meeting is mandatory.", "translation": "出席会议是强制性的。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000715-ka01-0000-0000-000000000000', 'manipulate', '/məˈnɪpjəleɪt/', 'v.', '[{"pos": "v.", "meaning": "操纵；操作", "example": "He tried to manipulate the situation to his advantage.", "translation": "他试图操纵局势以利于自己。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000716-ka01-0000-0000-000000000000', 'margin', '/ˈmɑːdʒɪn/', 'n.', '[{"pos": "n.", "meaning": "边缘；利润；差额", "example": "The company operates on a narrow profit margin.", "translation": "公司的利润率很薄。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000717-ka01-0000-0000-000000000000', 'mechanism', '/ˈmekənɪzəm/', 'n.', '[{"pos": "n.", "meaning": "机制；机械装置", "example": "The clock has a complex mechanism.", "translation": "这个钟有一个复杂的机械装置。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000718-ka01-0000-0000-000000000000', 'mediate', '/ˈmiːdieɪt/', 'v.', '[{"pos": "v.", "meaning": "调解；斡旋", "example": "A neutral party mediated the dispute.", "translation": "一个中立方调解了争端。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000719-ka01-0000-0000-000000000000', 'migrate', '/maɪˈɡreɪt/', 'v.', '[{"pos": "v.", "meaning": "迁移；移居", "example": "Many birds migrate south in winter.", "translation": "许多鸟类在冬天向南迁移。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000720-ka01-0000-0000-000000000000', 'minimize', '/ˈmɪnɪmaɪz/', 'v.', '[{"pos": "v.", "meaning": "最小化；减少", "example": "We must minimize the risk of failure.", "translation": "我们必须将失败的风险降到最低。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000721-ka01-0000-0000-000000000000', 'modify', '/ˈmɒdɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "修改；改变", "example": "The plan was modified to meet new requirements.", "translation": "计划被修改以满足新要求。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000722-ka01-0000-0000-000000000000', 'monitor', '/ˈmɒnɪtər/', 'v.', '[{"pos": "v.", "meaning": "监控；监测", "example": "Doctors monitor the patient''s vital signs.", "translation": "医生监测患者的生命体征。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000723-ka01-0000-0000-000000000000', 'negate', '/nɪˈɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "否定；取消", "example": "His actions negated all our efforts.", "translation": "他的行为否定了我们所有的努力。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000724-ka01-0000-0000-000000000000', 'negotiate', '/nɪˈɡəʊʃieɪt/', 'v.', '[{"pos": "v.", "meaning": "谈判；协商", "example": "The unions negotiated with management for better conditions.", "translation": "工会与管理层谈判以争取更好的条件。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000725-ka01-0000-0000-000000000000', 'norm', '/nɔːm/', 'n.', '[{"pos": "n.", "meaning": "规范；标准", "example": "Working from home has become the norm.", "translation": "在家工作已成为常态。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000726-ka01-0000-0000-000000000000', 'notable', '/ˈnəʊtəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "值得注意的；显著的", "example": "There has been a notable improvement in her work.", "translation": "她的工作有了显著的进步。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000727-ka01-0000-0000-000000000000', 'notion', '/ˈnəʊʃən/', 'n.', '[{"pos": "n.", "meaning": "概念；想法", "example": "I reject the notion that money equals happiness.", "translation": "我拒绝接受金钱等于幸福的观念。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000728-ka01-0000-0000-000000000000', 'nurture', '/ˈnɜːtʃər/', 'v.', '[{"pos": "v.", "meaning": "培养；养育", "example": "Parents nurture their children with love and care.", "translation": "父母用爱和关怀养育孩子。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000729-ka01-0000-0000-000000000000', 'obligation', '/ˌɒblɪˈɡeɪʃən/', 'n.', '[{"pos": "n.", "meaning": "义务；责任", "example": "You are under no obligation to accept.", "translation": "你没有义务接受。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000730-ka01-0000-0000-000000000000', 'obscure', '/əbˈskjʊər/', 'adj.', '[{"pos": "adj.", "meaning": "模糊的；晦涩的", "example": "The meaning of the poem is obscure.", "translation": "这首诗的含义很晦涩。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000731-ka01-0000-0000-000000000000', 'observe', '/əbˈzɜːv/', 'v.', '[{"pos": "v.", "meaning": "观察；遵守", "example": "Scientists observe the behavior of animals in the wild.", "translation": "科学家观察野生动物的行为。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000732-ka01-0000-0000-000000000000', 'obtain', '/əbˈteɪn/', 'v.', '[{"pos": "v.", "meaning": "获得；得到", "example": "She obtained a degree in engineering.", "translation": "她获得了工程学学位。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000733-ka01-0000-0000-000000000000', 'ongoing', '/ˈɒnɡəʊɪŋ/', 'adj.', '[{"pos": "adj.", "meaning": "进行中的；持续的", "example": "There is an ongoing investigation into the matter.", "translation": "对此事正在进行调查。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000734-ka01-0000-0000-000000000000', 'opt', '/ɒpt/', 'v.', '[{"pos": "v.", "meaning": "选择；决定", "example": "She opted to take the train instead of driving.", "translation": "她选择乘火车而不是开车。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000735-ka01-0000-0000-000000000000', 'orient', '/ˈɔːrient/', 'v.', '[{"pos": "v.", "meaning": "使适应；确定方向", "example": "The program helps new employees orient themselves.", "translation": "该项目帮助新员工适应环境。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000736-ka01-0000-0000-000000000000', 'outcome', '/ˈaʊtkʌm/', 'n.', '[{"pos": "n.", "meaning": "结果；后果", "example": "The outcome of the election was unexpected.", "translation": "选举结果出乎意料。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000737-ka01-0000-0000-000000000000', 'outline', '/ˈaʊtlaɪn/', 'v.', '[{"pos": "v.", "meaning": "概述；描画轮廓", "example": "She outlined the main points of her proposal.", "translation": "她概述了提案的要点。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000738-ka01-0000-0000-000000000000', 'overlap', '/ˌəʊvəˈlæp/', 'v.', '[{"pos": "v.", "meaning": "重叠；部分相同", "example": "The two projects overlap in several areas.", "translation": "这两个项目在几个领域有重叠。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000739-ka01-0000-0000-000000000000', 'overwhelm', '/ˌəʊvəˈwelm/', 'v.', '[{"pos": "v.", "meaning": "压倒；使不知所措", "example": "The amount of work overwhelmed her.", "translation": "工作量让她不知所措。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000740-ka01-0000-0000-000000000000', 'parallel', '/ˈpærəlel/', 'adj.', '[{"pos": "adj.", "meaning": "平行的；类似的", "example": "The two roads run parallel to each other.", "translation": "这两条路彼此平行。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000741-ka01-0000-0000-000000000000', 'perceive', '/pəˈsiːv/', 'v.', '[{"pos": "v.", "meaning": "感知；认为", "example": "She perceived a change in his attitude.", "translation": "她察觉到他态度的变化。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000742-ka01-0000-0000-000000000000', 'persist', '/pəˈsɪst/', 'v.', '[{"pos": "v.", "meaning": "坚持；持续", "example": "If symptoms persist, consult a doctor.", "translation": "如果症状持续，请咨询医生。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000743-ka01-0000-0000-000000000000', 'perspective', '/pəˈspektɪv/', 'n.', '[{"pos": "n.", "meaning": "观点；视角", "example": "Try to see the problem from a different perspective.", "translation": "试着从不同的角度看这个问题。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000744-ka01-0000-0000-000000000000', 'phenomenon', '/fɪˈnɒmɪnən/', 'n.', '[{"pos": "n.", "meaning": "现象", "example": "Global warming is a well-documented phenomenon.", "translation": "全球变暖是一个有充分记录的现象。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000745-ka01-0000-0000-000000000000', 'pledge', '/pledʒ/', 'v.', '[{"pos": "v.", "meaning": "保证；承诺", "example": "The government pledged to reduce pollution.", "translation": "政府承诺减少污染。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000746-ka01-0000-0000-000000000000', 'portray', '/pɔːˈtreɪ/', 'v.', '[{"pos": "v.", "meaning": "描绘；扮演", "example": "The actor portrayed the historical figure brilliantly.", "translation": "这位演员出色地扮演了这个历史人物。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000747-ka01-0000-0000-000000000000', 'postpone', '/pəˈspəʊn/', 'v.', '[{"pos": "v.", "meaning": "推迟；延期", "example": "The meeting was postponed until next week.", "translation": "会议被推迟到下周。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000748-ka01-0000-0000-000000000000', 'potential', '/pəˈtenʃəl/', 'n.', '[{"pos": "n.", "meaning": "潜力；可能性", "example": "She has the potential to become a great leader.", "translation": "她有成为伟大领袖的潜力。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000749-ka01-0000-0000-000000000000', 'precede', '/prɪˈsiːd/', 'v.', '[{"pos": "v.", "meaning": "先于；在...之前", "example": "A brief introduction preceded the main lecture.", "translation": "主讲之前有一段简短的介绍。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000750-ka01-0000-0000-000000000000', 'precise', '/prɪˈsaɪs/', 'adj.', '[{"pos": "adj.", "meaning": "精确的；准确的", "example": "Please give me the precise time of the meeting.", "translation": "请告诉我会议的确切时间。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000751-ka01-0000-0000-000000000000', 'predict', '/prɪˈdɪkt/', 'v.', '[{"pos": "v.", "meaning": "预测；预言", "example": "It is difficult to predict the weather accurately.", "translation": "准确预测天气是很困难的。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000752-ka01-0000-0000-000000000000', 'presume', '/prɪˈzjuːm/', 'v.', '[{"pos": "v.", "meaning": "假定；认为", "example": "I presume you have already read the instructions.", "translation": "我假定你已经读过说明了。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000753-ka01-0000-0000-000000000000', 'prior', '/ˈpraɪər/', 'adj.', '[{"pos": "adj.", "meaning": "优先的；在前的", "example": "Prior experience is required for this position.", "translation": "这个职位需要先前的经验。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000754-ka01-0000-0000-000000000000', 'prohibit', '/prəˈhɪbɪt/', 'v.', '[{"pos": "v.", "meaning": "禁止；阻止", "example": "Smoking is prohibited in public buildings.", "translation": "公共建筑内禁止吸烟。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000755-ka01-0000-0000-000000000000', 'prompt', '/prɒmpt/', 'v.', '[{"pos": "v.", "meaning": "促使；提示", "example": "The discovery prompted further research.", "translation": "这一发现促使了进一步的研究。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000756-ka01-0000-0000-000000000000', 'proportion', '/prəˈpɔːʃən/', 'n.', '[{"pos": "n.", "meaning": "比例；部分", "example": "A large proportion of the budget goes to education.", "translation": "预算的很大一部分用于教育。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000757-ka01-0000-0000-000000000000', 'qualitative', '/ˈkwɒlɪtətɪv/', 'adj.', '[{"pos": "adj.", "meaning": "定性的；性质上的", "example": "The study uses qualitative research methods.", "translation": "该研究使用定性研究方法。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000758-ka01-0000-0000-000000000000', 'quantify', '/ˈkwɒntɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "量化；确定数量", "example": "It is difficult to quantify the benefits of exercise.", "translation": "很难量化锻炼的好处。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000759-ka01-0000-0000-000000000000', 'random', '/ˈrændəm/', 'adj.', '[{"pos": "adj.", "meaning": "随机的；任意的", "example": "The participants were selected at random.", "translation": "参与者是随机选出的。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000760-ka01-0000-0000-000000000000', 'rational', '/ˈræʃənəl/', 'adj.', '[{"pos": "adj.", "meaning": "理性的；合理的", "example": "We need to make rational decisions.", "translation": "我们需要做出理性的决定。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000761-ka01-0000-0000-000000000000', 'realm', '/relm/', 'n.', '[{"pos": "n.", "meaning": "领域；王国", "example": "This discovery opened up new realms of possibility.", "translation": "这一发现开辟了新的可能性领域。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000762-ka01-0000-0000-000000000000', 'refine', '/rɪˈfaɪn/', 'v.', '[{"pos": "v.", "meaning": "精炼；改进", "example": "She refined her essay through several drafts.", "translation": "她通过几次修改完善了她的论文。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000763-ka01-0000-0000-000000000000', 'reform', '/rɪˈfɔːm/', 'n.', '[{"pos": "n.", "meaning": "改革；改良", "example": "The government introduced economic reforms.", "translation": "政府推出了经济改革。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000764-ka01-0000-0000-000000000000', 'refrain', '/rɪˈfreɪn/', 'v.', '[{"pos": "v.", "meaning": "克制；避免", "example": "Please refrain from smoking in the building.", "translation": "请勿在大楼内吸烟。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000765-ka01-0000-0000-000000000000', 'regime', '/reɪˈʒiːm/', 'n.', '[{"pos": "n.", "meaning": "政权；制度", "example": "The old regime was overthrown in a revolution.", "translation": "旧政权在一场革命中被推翻。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000766-ka01-0000-0000-000000000000', 'reinforce', '/ˌriːɪnˈfɔːs/', 'v.', '[{"pos": "v.", "meaning": "加强；增援", "example": "The evidence reinforced her argument.", "translation": "证据加强了她的论点。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000767-ka01-0000-0000-000000000000', 'reluctant', '/rɪˈlʌktənt/', 'adj.', '[{"pos": "adj.", "meaning": "不情愿的；勉强的", "example": "He was reluctant to admit his mistake.", "translation": "他不情愿承认自己的错误。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000768-ka01-0000-0000-000000000000', 'render', '/ˈrendər/', 'v.', '[{"pos": "v.", "meaning": "使成为；提供", "example": "The accident rendered him unconscious.", "translation": "事故使他失去了知觉。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000769-ka01-0000-0000-000000000000', 'reproduce', '/ˌriːprəˈdjuːs/', 'v.', '[{"pos": "v.", "meaning": "复制；繁殖", "example": "The experiment was difficult to reproduce.", "translation": "这个实验很难复制。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000770-ka01-0000-0000-000000000000', 'resemble', '/rɪˈzembəl/', 'v.', '[{"pos": "v.", "meaning": "类似；像", "example": "She strongly resembles her mother.", "translation": "她长得很像她母亲。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000771-ka01-0000-0000-000000000000', 'reside', '/rɪˈzaɪd/', 'v.', '[{"pos": "v.", "meaning": "居住；存在", "example": "The power resides in the hands of the people.", "translation": "权力掌握在人民手中。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000772-ka01-0000-0000-000000000000', 'resolve', '/rɪˈzɒlv/', 'v.', '[{"pos": "v.", "meaning": "解决；决心", "example": "They resolved the conflict through negotiation.", "translation": "他们通过谈判解决了冲突。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000773-ka01-0000-0000-000000000000', 'resort', '/rɪˈzɔːt/', 'v.', '[{"pos": "v.", "meaning": "诉诸；求助", "example": "They had to resort to legal action.", "translation": "他们不得不诉诸法律行动。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000774-ka01-0000-0000-000000000000', 'restore', '/rɪˈstɔːr/', 'v.', '[{"pos": "v.", "meaning": "恢复；修复", "example": "The old building was carefully restored.", "translation": "这座老建筑被精心修复了。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000775-ka01-0000-0000-000000000000', 'retain', '/rɪˈteɪn/', 'v.', '[{"pos": "v.", "meaning": "保留；保持", "example": "She retained her title as champion.", "translation": "她保留了冠军头衔。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000776-ka01-0000-0000-000000000000', 'retrieve', '/rɪˈtriːv/', 'v.', '[{"pos": "v.", "meaning": "检索；取回", "example": "You can retrieve the data from the database.", "translation": "你可以从数据库中检索数据。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000777-ka01-0000-0000-000000000000', 'reveal', '/rɪˈviːl/', 'v.', '[{"pos": "v.", "meaning": "揭示；透露", "example": "The investigation revealed the truth.", "translation": "调查揭示了真相。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000778-ka01-0000-0000-000000000000', 'reverse', '/rɪˈvɜːs/', 'v.', '[{"pos": "v.", "meaning": "颠倒；撤销", "example": "The court reversed the decision.", "translation": "法院撤销了这一决定。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000779-ka01-0000-0000-000000000000', 'revise', '/rɪˈvaɪz/', 'v.', '[{"pos": "v.", "meaning": "修改；复习", "example": "She revised her essay before submitting it.", "translation": "她在提交前修改了论文。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000780-ka01-0000-0000-000000000000', 'scenario', '/sɪˈnɑːriəʊ/', 'n.', '[{"pos": "n.", "meaning": "情景；方案", "example": "In the worst-case scenario, we could lose everything.", "translation": "在最坏的情况下，我们可能会失去一切。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000781-ka01-0000-0000-000000000000', 'scope', '/skəʊp/', 'n.', '[{"pos": "n.", "meaning": "范围；机会", "example": "The scope of the project has expanded.", "translation": "项目的范围已经扩大了。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000782-ka01-0000-0000-000000000000', 'simulate', '/ˈsɪmjəleɪt/', 'v.', '[{"pos": "v.", "meaning": "模拟；假装", "example": "The software simulates real-world conditions.", "translation": "该软件模拟真实世界的条件。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000783-ka01-0000-0000-000000000000', 'sophisticated', '/səˈfɪstɪkeɪtɪd/', 'adj.', '[{"pos": "adj.", "meaning": "复杂的；精密的", "example": "The system uses sophisticated technology.", "translation": "该系统使用了精密的技术。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000784-ka01-0000-0000-000000000000', 'speculate', '/ˈspekjəleɪt/', 'v.', '[{"pos": "v.", "meaning": "推测；投机", "example": "Analysts speculate about the future of the market.", "translation": "分析师推测市场的未来。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000785-ka01-0000-0000-000000000000', 'stagnant', '/ˈstæɡnənt/', 'adj.', '[{"pos": "adj.", "meaning": "停滞的；不景气的", "example": "The economy has been stagnant for years.", "translation": "经济多年来一直停滞不前。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000786-ka01-0000-0000-000000000000', 'stakeholder', '/ˈsteɪkhəʊldər/', 'n.', '[{"pos": "n.", "meaning": "利益相关者", "example": "All stakeholders were invited to the meeting.", "translation": "所有利益相关者都被邀请参加会议。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000787-ka01-0000-0000-000000000000', 'statistic', '/stəˈtɪstɪk/', 'n.', '[{"pos": "n.", "meaning": "统计数据", "example": "The statistics show a decline in crime rates.", "translation": "统计数据显示犯罪率下降。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000788-ka01-0000-0000-000000000000', 'stimulate', '/ˈstɪmjəleɪt/', 'v.', '[{"pos": "v.", "meaning": "刺激；激励", "example": "The policy aims to stimulate economic growth.", "translation": "该政策旨在刺激经济增长。"}]'::jsonb, 'KAOYAN', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000789-ka01-0000-0000-000000000000', 'strategy', '/ˈstrætədʒi/', 'n.', '[{"pos": "n.", "meaning": "策略；战略", "example": "We need a new strategy to increase sales.", "translation": "我们需要一个新策略来增加销售。"}]'::jsonb, 'KAOYAN', true)
;

INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000790-ie01-0000-0000-000000000000', 'administration', '/ədˌmɪnɪˈstreɪʃn/', 'n.', '[{"pos": "n.", "meaning": "管理；行政", "example": "The administration announced new education policies.", "translation": "行政部门宣布了新的教育政策。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000791-ie01-0000-0000-000000000000', 'aspect', '/ˈæspekt/', 'n.', '[{"pos": "n.", "meaning": "方面；层面", "example": "We must consider every aspect of the situation.", "translation": "我们必须考虑情况的各个方面。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000792-ie01-0000-0000-000000000000', 'cease', '/siːs/', 'v.', '[{"pos": "v.", "meaning": "停止；终止", "example": "The company ceased operations due to financial problems.", "translation": "该公司因财务问题停止了运营。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000793-ie01-0000-0000-000000000000', 'comparable', '/ˈkɒmpərəbl/', 'adj.', '[{"pos": "adj.", "meaning": "可比较的；类似的", "example": "The two products are comparable in quality.", "translation": "这两种产品的质量相当。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000794-ie01-0000-0000-000000000000', 'competent', '/ˈkɒmpɪtənt/', 'adj.', '[{"pos": "adj.", "meaning": "有能力的；胜任的", "example": "She is a highly competent engineer.", "translation": "她是一位非常有能力的工程师。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000795-ie01-0000-0000-000000000000', 'comprise', '/kəmˈpraɪz/', 'v.', '[{"pos": "v.", "meaning": "包含；由...组成", "example": "The committee comprises ten members.", "translation": "该委员会由十名成员组成。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000796-ie01-0000-0000-000000000000', 'confront', '/kənˈfrʌnt/', 'v.', '[{"pos": "v.", "meaning": "面对；对抗", "example": "We must confront the reality of climate change.", "translation": "我们必须面对气候变化的现实。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000797-ie01-0000-0000-000000000000', 'considerable', '/kənˈsɪdərəbl/', 'adj.', '[{"pos": "adj.", "meaning": "相当大的；重要的", "example": "A considerable amount of money was spent on the project.", "translation": "相当多的资金被花在了这个项目上。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000798-ie01-0000-0000-000000000000', 'consistent', '/kənˈsɪstənt/', 'adj.', '[{"pos": "adj.", "meaning": "一致的；始终如一的", "example": "Her performance has been consistent throughout the season.", "translation": "她整个赛季的表现始终如一。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000799-ie01-0000-0000-000000000000', 'core', '/kɔːr/', 'n.', '[{"pos": "n.", "meaning": "核心；果心", "example": "Innovation is the core of our business strategy.", "translation": "创新是我们商业战略的核心。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000800-ie01-0000-0000-000000000000', 'currency', '/ˈkʌrənsi/', 'n.', '[{"pos": "n.", "meaning": "货币；通用", "example": "The local currency has depreciated significantly.", "translation": "当地货币大幅贬值。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000801-ie01-0000-0000-000000000000', 'decade', '/ˈdekeɪd/', 'n.', '[{"pos": "n.", "meaning": "十年", "example": "The city has changed dramatically over the past decade.", "translation": "这座城市在过去十年中发生了巨大变化。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000802-ie01-0000-0000-000000000000', 'defect', '/ˈdiːfekt/', 'n.', '[{"pos": "n.", "meaning": "缺陷；缺点", "example": "The product was recalled due to a manufacturing defect.", "translation": "该产品因制造缺陷被召回。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000803-ie01-0000-0000-000000000000', 'despite', '/dɪˈspaɪt/', 'prep.', '[{"pos": "prep.", "meaning": "尽管；不管", "example": "Despite the rain, the match continued as planned.", "translation": "尽管下雨，比赛仍按计划进行。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000804-ie01-0000-0000-000000000000', 'drama', '/ˈdrɑːmə/', 'n.', '[{"pos": "n.", "meaning": "戏剧；剧本", "example": "The school drama club performed a Shakespeare play.", "translation": "学校戏剧社表演了一部莎士比亚戏剧。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000805-ie01-0000-0000-000000000000', 'duration', '/djuˈreɪʃn/', 'n.', '[{"pos": "n.", "meaning": "持续时间", "example": "The duration of the course is three months.", "translation": "该课程的持续时间为三个月。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000806-ie01-0000-0000-000000000000', 'dynamic', '/daɪˈnæmɪk/', 'adj.', '[{"pos": "adj.", "meaning": "动态的；有活力的", "example": "She is a dynamic leader who inspires others.", "translation": "她是一位激励他人的充满活力的领导者。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000807-ie01-0000-0000-000000000000', 'enable', '/ɪˈneɪbl/', 'v.', '[{"pos": "v.", "meaning": "使能够；启用", "example": "Technology enables people to work from home.", "translation": "技术使人们能够在家工作。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000808-ie01-0000-0000-000000000000', 'encourage', '/ɪnˈkʌrɪdʒ/', 'v.', '[{"pos": "v.", "meaning": "鼓励；促进", "example": "Parents should encourage children to read more books.", "translation": "父母应该鼓励孩子多读书。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000809-ie01-0000-0000-000000000000', 'engage', '/ɪnˈɡeɪdʒ/', 'v.', '[{"pos": "v.", "meaning": "从事；吸引", "example": "The teacher engages students with interactive activities.", "translation": "老师通过互动活动吸引学生。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000810-ie01-0000-0000-000000000000', 'ensure', '/ɪnˈʃʊər/', 'v.', '[{"pos": "v.", "meaning": "确保；保证", "example": "Please ensure that all doors are locked before leaving.", "translation": "离开前请确保所有门都已锁好。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000811-ie01-0000-0000-000000000000', 'enterprise', '/ˈentərpraɪz/', 'n.', '[{"pos": "n.", "meaning": "企业；事业", "example": "Small enterprises are vital to the national economy.", "translation": "小型企业对国民经济至关重要。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000812-ie01-0000-0000-000000000000', 'entire', '/ɪnˈtaɪər/', 'adj.', '[{"pos": "adj.", "meaning": "全部的；整个的", "example": "The entire building was evacuated within minutes.", "translation": "整栋建筑在几分钟内被疏散。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000813-ie01-0000-0000-000000000000', 'environment', '/ɪnˈvaɪrənmənt/', 'n.', '[{"pos": "n.", "meaning": "环境", "example": "Protecting the environment is everyone''s responsibility.", "translation": "保护环境是每个人的责任。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000814-ie01-0000-0000-000000000000', 'episode', '/ˈepɪsəʊd/', 'n.', '[{"pos": "n.", "meaning": "插曲；一集", "example": "The final episode of the series attracted millions of viewers.", "translation": "该剧最后一集吸引了数百万观众。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000815-ie01-0000-0000-000000000000', 'equality', '/ɪˈkwɒləti/', 'n.', '[{"pos": "n.", "meaning": "平等；相等", "example": "The organisation fights for gender equality.", "translation": "该组织为性别平等而奋斗。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000816-ie01-0000-0000-000000000000', 'equip', '/ɪˈkwɪp/', 'v.', '[{"pos": "v.", "meaning": "装备；配备", "example": "The lab is equipped with the latest technology.", "translation": "该实验室配备了最新的技术设备。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000817-ie01-0000-0000-000000000000', 'essential', '/ɪˈsenʃl/', 'adj.', '[{"pos": "adj.", "meaning": "必要的；本质的", "example": "Sleep is essential for good health.", "translation": "睡眠对健康至关重要。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000818-ie01-0000-0000-000000000000', 'estimate', '/ˈestɪmeɪt/', 'v.', '[{"pos": "v.", "meaning": "估计；估算", "example": "Experts estimate that the cost will exceed one million.", "translation": "专家估计成本将超过一百万。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000819-ie01-0000-0000-000000000000', 'eventually', '/ɪˈventʃuəli/', 'adv.', '[{"pos": "adv.", "meaning": "最终；终于", "example": "After years of hard work, she eventually achieved her dream.", "translation": "经过多年努力，她终于实现了梦想。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000820-ie01-0000-0000-000000000000', 'evidence', '/ˈevɪdəns/', 'n.', '[{"pos": "n.", "meaning": "证据；证明", "example": "There is strong evidence to support this theory.", "translation": "有强有力的证据支持这一理论。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000821-ie01-0000-0000-000000000000', 'evolve', '/ɪˈvɒlv/', 'v.', '[{"pos": "v.", "meaning": "进化；发展", "example": "Languages evolve over time through daily use.", "translation": "语言通过日常使用随时间演变。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000822-ie01-0000-0000-000000000000', 'exclude', '/ɪkˈskluːd/', 'v.', '[{"pos": "v.", "meaning": "排除；排斥", "example": "The price excludes delivery charges.", "translation": "价格不包括配送费。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000823-ie01-0000-0000-000000000000', 'execute', '/ˈeksɪkjuːt/', 'v.', '[{"pos": "v.", "meaning": "执行；实施", "example": "The team executed the plan perfectly.", "translation": "团队完美地执行了计划。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000824-ie01-0000-0000-000000000000', 'expand', '/ɪkˈspænd/', 'v.', '[{"pos": "v.", "meaning": "扩展；膨胀", "example": "The company plans to expand into Asian markets.", "translation": "该公司计划向亚洲市场扩张。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000825-ie01-0000-0000-000000000000', 'expertise', '/ˌekspɜːrˈtiːz/', 'n.', '[{"pos": "n.", "meaning": "专业知识；专长", "example": "We need someone with expertise in data analysis.", "translation": "我们需要一位有数据分析专业知识的人。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000826-ie01-0000-0000-000000000000', 'expose', '/ɪkˈspəʊz/', 'v.', '[{"pos": "v.", "meaning": "暴露；揭露", "example": "The investigation exposed widespread corruption.", "translation": "调查揭露了普遍存在的腐败。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000827-ie01-0000-0000-000000000000', 'external', '/ɪkˈstɜːrnl/', 'adj.', '[{"pos": "adj.", "meaning": "外部的；外面的", "example": "The building needs external repairs.", "translation": "该建筑需要外部维修。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000828-ie01-0000-0000-000000000000', 'factor', '/ˈfæktər/', 'n.', '[{"pos": "n.", "meaning": "因素；因子", "example": "Cost is an important factor in the decision.", "translation": "成本是决策中的一个重要因素。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000829-ie01-0000-0000-000000000000', 'feature', '/ˈfiːtʃər/', 'n.', '[{"pos": "n.", "meaning": "特征；特色", "example": "The phone has many impressive features.", "translation": "这款手机有许多令人印象深刻的功能。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000830-ie01-0000-0000-000000000000', 'federal', '/ˈfedərəl/', 'adj.', '[{"pos": "adj.", "meaning": "联邦的", "example": "The federal government introduced new tax regulations.", "translation": "联邦政府引入了新的税收法规。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000831-ie01-0000-0000-000000000000', 'finance', '/ˈfaɪnæns/', 'n.', '[{"pos": "n.", "meaning": "金融；财政", "example": "She studied finance at university.", "translation": "她在大学学习金融。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000832-ie01-0000-0000-000000000000', 'flexible', '/ˈfleksəbl/', 'adj.', '[{"pos": "adj.", "meaning": "灵活的；可弯曲的", "example": "The company offers flexible working hours.", "translation": "该公司提供弹性工作时间。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000833-ie01-0000-0000-000000000000', 'focus', '/ˈfəʊkəs/', 'n.', '[{"pos": "n.", "meaning": "焦点；重点", "example": "The focus of the discussion was education reform.", "translation": "讨论的重点是教育改革。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000834-ie01-0000-0000-000000000000', 'forecast', '/ˈfɔːrkɑːst/', 'n.', '[{"pos": "n.", "meaning": "预测；预报", "example": "The weather forecast predicts heavy rain tomorrow.", "translation": "天气预报预测明天有大雨。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000835-ie01-0000-0000-000000000000', 'formula', '/ˈfɔːrmjələ/', 'n.', '[{"pos": "n.", "meaning": "公式；配方", "example": "The scientist developed a new formula for the experiment.", "translation": "科学家为实验开发了一个新公式。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000836-ie01-0000-0000-000000000000', 'foundation', '/faʊnˈdeɪʃn/', 'n.', '[{"pos": "n.", "meaning": "基础；基金会", "example": "A good education is the foundation of a successful career.", "translation": "良好的教育是成功事业的基础。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000837-ie01-0000-0000-000000000000', 'fragment', '/ˈfræɡmənt/', 'n.', '[{"pos": "n.", "meaning": "碎片；片段", "example": "Fragments of the vase were scattered across the floor.", "translation": "花瓶的碎片散落在地板上。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000838-ie01-0000-0000-000000000000', 'framework', '/ˈfreɪmwɜːrk/', 'n.', '[{"pos": "n.", "meaning": "框架；体系", "example": "We need a legal framework to regulate the industry.", "translation": "我们需要一个法律框架来规范该行业。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000839-ie01-0000-0000-000000000000', 'frequent', '/ˈfriːkwənt/', 'adj.', '[{"pos": "adj.", "meaning": "频繁的；经常的", "example": "Frequent exercise helps maintain good health.", "translation": "经常锻炼有助于保持健康。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000840-ie01-0000-0000-000000000000', 'function', '/ˈfʌŋkʃn/', 'n.', '[{"pos": "n.", "meaning": "功能；职能", "example": "The main function of the heart is to pump blood.", "translation": "心脏的主要功能是泵送血液。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000841-ie01-0000-0000-000000000000', 'generate', '/ˈdʒenəreɪt/', 'v.', '[{"pos": "v.", "meaning": "产生；发电", "example": "The wind turbines generate enough electricity for the town.", "translation": "风力涡轮机为该镇产生了足够的电力。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000842-ie01-0000-0000-000000000000', 'global', '/ˈɡləʊbl/', 'adj.', '[{"pos": "adj.", "meaning": "全球的；全面的", "example": "Global warming is a serious environmental issue.", "translation": "全球变暖是一个严重的环境问题。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000843-ie01-0000-0000-000000000000', 'goal', '/ɡəʊl/', 'n.', '[{"pos": "n.", "meaning": "目标；目的", "example": "Our goal is to reduce pollution by 50 percent.", "translation": "我们的目标是将污染减少50%。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000844-ie01-0000-0000-000000000000', 'grade', '/ɡreɪd/', 'n.', '[{"pos": "n.", "meaning": "等级；成绩", "example": "She received the highest grade in her class.", "translation": "她在班里获得了最高分。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000845-ie01-0000-0000-000000000000', 'grant', '/ɡrɑːnt/', 'n.', '[{"pos": "n.", "meaning": "补助金；拨款", "example": "The university received a research grant from the government.", "translation": "该大学获得了政府的研究拨款。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000846-ie01-0000-0000-000000000000', 'guarantee', '/ˌɡærənˈtiː/', 'v.', '[{"pos": "v.", "meaning": "保证；担保", "example": "The product comes with a two-year guarantee.", "translation": "该产品附带两年保修。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000847-ie01-0000-0000-000000000000', 'guideline', '/ˈɡaɪdlaɪn/', 'n.', '[{"pos": "n.", "meaning": "指导方针；准则", "example": "The government issued new guidelines on food safety.", "translation": "政府发布了新的食品安全准则。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000848-ie01-0000-0000-000000000000', 'hazard', '/ˈhæzərd/', 'n.', '[{"pos": "n.", "meaning": "危险；危害", "example": "Smoking is a serious health hazard.", "translation": "吸烟是一个严重的健康危害。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000849-ie01-0000-0000-000000000000', 'highlight', '/ˈhaɪlaɪt/', 'v.', '[{"pos": "v.", "meaning": "强调；突出", "example": "The report highlights the need for more investment.", "translation": "报告强调了需要更多投资。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000850-ie01-0000-0000-000000000000', 'identify', '/aɪˈdentɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "识别；确认", "example": "The police identified the suspect from security footage.", "translation": "警方从监控录像中识别出了嫌疑人。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000851-ie01-0000-0000-000000000000', 'illustrate', '/ˈɪləstreɪt/', 'v.', '[{"pos": "v.", "meaning": "说明；插图", "example": "The chart illustrates the growth trend clearly.", "translation": "该图表清楚地说明了增长趋势。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000852-ie01-0000-0000-000000000000', 'impact', '/ˈɪmpækt/', 'n.', '[{"pos": "n.", "meaning": "影响；冲击", "example": "The policy had a significant impact on education.", "translation": "该政策对教育产生了重大影响。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000853-ie01-0000-0000-000000000000', 'implication', '/ˌɪmplɪˈkeɪʃn/', 'n.', '[{"pos": "n.", "meaning": "含义；影响", "example": "The findings have important implications for policy.", "translation": "这些发现对政策有重要影响。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000854-ie01-0000-0000-000000000000', 'imply', '/ɪmˈplaɪ/', 'v.', '[{"pos": "v.", "meaning": "暗示；意味着", "example": "Are you implying that I made a mistake?", "translation": "你是在暗示我犯了错误吗？"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000855-ie01-0000-0000-000000000000', 'incident', '/ˈɪnsɪdənt/', 'n.', '[{"pos": "n.", "meaning": "事件；事故", "example": "The police investigated the incident thoroughly.", "translation": "警方对该事件进行了彻底调查。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000856-ie01-0000-0000-000000000000', 'individual', '/ˌɪndɪˈvɪdʒuəl/', 'n.', '[{"pos": "n.", "meaning": "个人；个体", "example": "Each individual has the right to freedom of speech.", "translation": "每个人都有言论自由的权利。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000857-ie01-0000-0000-000000000000', 'inevitable', '/ɪnˈevɪtəbl/', 'adj.', '[{"pos": "adj.", "meaning": "不可避免的", "example": "Change is an inevitable part of life.", "translation": "变化是生活中不可避免的一部分。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000858-ie01-0000-0000-000000000000', 'infrastructure', '/ˈɪnfrəstrʌktʃər/', 'n.', '[{"pos": "n.", "meaning": "基础设施", "example": "The country needs to invest in its transport infrastructure.", "translation": "该国需要投资交通基础设施。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000859-ie01-0000-0000-000000000000', 'initial', '/ɪˈnɪʃl/', 'adj.', '[{"pos": "adj.", "meaning": "最初的；开始的", "example": "The initial results of the study are promising.", "translation": "该研究的初步结果令人鼓舞。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000860-ie01-0000-0000-000000000000', 'initiative', '/ɪˈnɪʃətɪv/', 'n.', '[{"pos": "n.", "meaning": "倡议；主动性", "example": "The government launched a new green energy initiative.", "translation": "政府发起了一项新的绿色能源倡议。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000861-ie01-0000-0000-000000000000', 'input', '/ˈɪnpʊt/', 'n.', '[{"pos": "n.", "meaning": "投入；输入", "example": "We need more input from the research team.", "translation": "我们需要研究团队提供更多的投入。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000862-ie01-0000-0000-000000000000', 'instance', '/ˈɪnstəns/', 'n.', '[{"pos": "n.", "meaning": "实例；情况", "example": "In this instance, the exception is justified.", "translation": "在这种情况下，例外是合理的。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000863-ie01-0000-0000-000000000000', 'institute', '/ˈɪnstɪtjuːt/', 'n.', '[{"pos": "n.", "meaning": "机构；学院", "example": "The research institute published its annual report.", "translation": "该研究所发布了年度报告。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000864-ie01-0000-0000-000000000000', 'intelligence', '/ɪnˈtelɪdʒəns/', 'n.', '[{"pos": "n.", "meaning": "智力；情报", "example": "Artificial intelligence is transforming many industries.", "translation": "人工智能正在改变许多行业。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000865-ie01-0000-0000-000000000000', 'intense', '/ɪnˈtens/', 'adj.', '[{"pos": "adj.", "meaning": "强烈的；紧张的", "example": "The competition for the job was intense.", "translation": "这份工作的竞争非常激烈。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000866-ie01-0000-0000-000000000000', 'investigate', '/ɪnˈvestɪɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "调查；研究", "example": "Police are investigating the cause of the fire.", "translation": "警方正在调查火灾原因。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000867-ie01-0000-0000-000000000000', 'involve', '/ɪnˈvɒlv/', 'v.', '[{"pos": "v.", "meaning": "涉及；包含", "example": "The job involves a lot of travelling.", "translation": "这份工作涉及大量出差。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000868-ie01-0000-0000-000000000000', 'label', '/ˈleɪbl/', 'n.', '[{"pos": "n.", "meaning": "标签；标记", "example": "Check the label for nutritional information.", "translation": "查看标签上的营养信息。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000869-ie01-0000-0000-000000000000', 'layer', '/ˈleɪər/', 'n.', '[{"pos": "n.", "meaning": "层；层次", "example": "The atmosphere consists of several layers.", "translation": "大气层由几个层组成。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000870-ie01-0000-0000-000000000000', 'lecture', '/ˈlektʃər/', 'n.', '[{"pos": "n.", "meaning": "讲座；演讲", "example": "The professor delivered a fascinating lecture on astronomy.", "translation": "教授发表了一场关于天文学的精彩讲座。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000871-ie01-0000-0000-000000000000', 'legal', '/ˈliːɡl/', 'adj.', '[{"pos": "adj.", "meaning": "法律的；合法的", "example": "Is it legal to park here?", "translation": "在这里停车合法吗？"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000872-ie01-0000-0000-000000000000', 'leisure', '/ˈleʒər/', 'n.', '[{"pos": "n.", "meaning": "闲暇；休闲", "example": "People should balance work and leisure time.", "translation": "人们应该平衡工作和休闲时间。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000873-ie01-0000-0000-000000000000', 'link', '/lɪŋk/', 'n.', '[{"pos": "n.", "meaning": "联系；链接", "example": "There is a clear link between diet and health.", "translation": "饮食和健康之间有明显的联系。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000874-ie01-0000-0000-000000000000', 'locate', '/ləʊˈkeɪt/', 'v.', '[{"pos": "v.", "meaning": "找到；位于", "example": "The hotel is located in the city centre.", "translation": "该酒店位于市中心。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000875-ie01-0000-0000-000000000000', 'logic', '/ˈlɒdʒɪk/', 'n.', '[{"pos": "n.", "meaning": "逻辑；推理", "example": "His argument lacks logic and evidence.", "translation": "他的论点缺乏逻辑和证据。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000876-ie01-0000-0000-000000000000', 'maintain', '/meɪnˈteɪn/', 'v.', '[{"pos": "v.", "meaning": "维持；维护", "example": "It is important to maintain a healthy lifestyle.", "translation": "保持健康的生活方式很重要。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000877-ie01-0000-0000-000000000000', 'major', '/ˈmeɪdʒər/', 'adj.', '[{"pos": "adj.", "meaning": "主要的；重大的", "example": "Pollution is a major concern for urban areas.", "translation": "污染是城市地区的一个主要问题。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000878-ie01-0000-0000-000000000000', 'mature', '/məˈtʃʊər/', 'adj.', '[{"pos": "adj.", "meaning": "成熟的", "example": "She is very mature for her age.", "translation": "就她的年龄而言，她非常成熟。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000879-ie01-0000-0000-000000000000', 'maximum', '/ˈmæksɪməm/', 'n.', '[{"pos": "n.", "meaning": "最大值；最大限度", "example": "The maximum speed limit on this road is 60 mph.", "translation": "这条路的最高限速是每小时60英里。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000880-ie01-0000-0000-000000000000', 'media', '/ˈmiːdiə/', 'n.', '[{"pos": "n.", "meaning": "媒体；媒介", "example": "Social media has changed the way people communicate.", "translation": "社交媒体改变了人们的交流方式。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000881-ie01-0000-0000-000000000000', 'medium', '/ˈmiːdiəm/', 'n.', '[{"pos": "n.", "meaning": "媒介；中等", "example": "English is the medium of instruction at this school.", "translation": "英语是这所学校的教学语言。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000882-ie01-0000-0000-000000000000', 'mental', '/ˈmentl/', 'adj.', '[{"pos": "adj.", "meaning": "精神的；心理的", "example": "Mental health is just as important as physical health.", "translation": "心理健康与身体健康同样重要。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000883-ie01-0000-0000-000000000000', 'method', '/ˈmeθəd/', 'n.', '[{"pos": "n.", "meaning": "方法；方式", "example": "We need a more efficient method of data collection.", "translation": "我们需要一种更高效的数据收集方法。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000884-ie01-0000-0000-000000000000', 'minister', '/ˈmɪnɪstər/', 'n.', '[{"pos": "n.", "meaning": "部长；大臣", "example": "The prime minister addressed the nation on television.", "translation": "首相在电视上向全国发表讲话。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000885-ie01-0000-0000-000000000000', 'minor', '/ˈmaɪnər/', 'adj.', '[{"pos": "adj.", "meaning": "较小的；次要的", "example": "The car suffered only minor damage in the accident.", "translation": "汽车在事故中只受到了轻微损坏。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000886-ie01-0000-0000-000000000000', 'moreover', '/mɔːrˈəʊvər/', 'adv.', '[{"pos": "adv.", "meaning": "此外；而且", "example": "The plan is too expensive. Moreover, it is impractical.", "translation": "该计划成本太高。此外，它也不切实际。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000887-ie01-0000-0000-000000000000', 'motive', '/ˈməʊtɪv/', 'n.', '[{"pos": "n.", "meaning": "动机；目的", "example": "The police are investigating the motive behind the crime.", "translation": "警方正在调查犯罪背后的动机。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000888-ie01-0000-0000-000000000000', 'mutual', '/ˈmjuːtʃuəl/', 'adj.', '[{"pos": "adj.", "meaning": "相互的；共同的", "example": "The agreement was based on mutual respect.", "translation": "该协议基于相互尊重。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000889-ie01-0000-0000-000000000000', 'network', '/ˈnetwɜːrk/', 'n.', '[{"pos": "n.", "meaning": "网络；人脉", "example": "Building a professional network is essential for career growth.", "translation": "建立专业人脉对职业发展至关重要。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000890-ie01-0000-0000-000000000000', 'neutral', '/ˈnjuːtrəl/', 'adj.', '[{"pos": "adj.", "meaning": "中立的；中性的", "example": "Switzerland remained neutral during the war.", "translation": "瑞士在战争期间保持中立。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000891-ie01-0000-0000-000000000000', 'nevertheless', '/ˌnevərðəˈles/', 'adv.', '[{"pos": "adv.", "meaning": "然而；不过", "example": "The task was difficult. Nevertheless, they completed it on time.", "translation": "任务很困难。然而，他们按时完成了。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000892-ie01-0000-0000-000000000000', 'nuclear', '/ˈnjuːkliər/', 'adj.', '[{"pos": "adj.", "meaning": "核的；原子能的", "example": "Nuclear energy remains a controversial topic.", "translation": "核能仍然是一个有争议的话题。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000893-ie01-0000-0000-000000000000', 'objective', '/əbˈdʒektɪv/', 'n.', '[{"pos": "n.", "meaning": "目标；目的", "example": "The main objective of the project is to reduce costs.", "translation": "该项目的主要目标是降低成本。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000894-ie01-0000-0000-000000000000', 'obvious', '/ˈɒbviəs/', 'adj.', '[{"pos": "adj.", "meaning": "明显的；显而易见的", "example": "The answer to the question was obvious.", "translation": "问题的答案是显而易见的。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000895-ie01-0000-0000-000000000000', 'occupy', '/ˈɒkjupaɪ/', 'v.', '[{"pos": "v.", "meaning": "占据；占用", "example": "The meeting occupied the entire morning.", "translation": "会议占用了整个上午。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000896-ie01-0000-0000-000000000000', 'occur', '/əˈkɜːr/', 'v.', '[{"pos": "v.", "meaning": "发生；出现", "example": "Accidents often occur at busy intersections.", "translation": "事故经常发生在繁忙的十字路口。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000897-ie01-0000-0000-000000000000', 'option', '/ˈɒpʃn/', 'n.', '[{"pos": "n.", "meaning": "选择；选项", "example": "You have several options to choose from.", "translation": "你有几个选项可以选择。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000898-ie01-0000-0000-000000000000', 'output', '/ˈaʊtpʊt/', 'n.', '[{"pos": "n.", "meaning": "产出；输出", "example": "The factory''s output has doubled this year.", "translation": "该工厂的产量今年翻了一番。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000899-ie01-0000-0000-000000000000', 'overall', '/ˌəʊvərˈɔːl/', 'adj.', '[{"pos": "adj.", "meaning": "总体的；全面的", "example": "The overall quality of the product has improved.", "translation": "产品的整体质量有所提高。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000900-ie01-0000-0000-000000000000', 'overcome', '/ˌəʊvərˈkʌm/', 'v.', '[{"pos": "v.", "meaning": "克服；战胜", "example": "She overcame many obstacles to achieve her goals.", "translation": "她克服了许多障碍来实现自己的目标。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000901-ie01-0000-0000-000000000000', 'overlook', '/ˌəʊvərˈlʊk/', 'v.', '[{"pos": "v.", "meaning": "忽视；俯瞰", "example": "Don''t overlook the small details in the contract.", "translation": "不要忽视合同中的小细节。"}]'::jsonb, 'IELTS', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000902-ie01-0000-0000-000000000000', 'overseas', '/ˌəʊvərˈsiːz/', 'adv.', '[{"pos": "adv.", "meaning": "在海外", "example": "Many students choose to study overseas.", "translation": "许多学生选择出国留学。"}]'::jsonb, 'IELTS', true)
;

INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000903-to01-0000-0000-000000000000', 'approximately', '/əˈprɒksɪmətli/', 'adv.', '[{"pos": "adv.", "meaning": "大约；大概", "example": "The project will take approximately three months.", "translation": "这个项目大约需要三个月。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000904-to01-0000-0000-000000000000', 'consecutive', '/kənˈsekjətɪv/', 'adj.', '[{"pos": "adj.", "meaning": "连续的", "example": "It rained for five consecutive days.", "translation": "连续下了五天雨。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000905-to01-0000-0000-000000000000', 'consent', '/kənˈsent/', 'n.', '[{"pos": "n.", "meaning": "同意；许可", "example": "You need parental consent to go on the trip.", "translation": "你需要父母的同意才能去旅行。"}, {"pos": "v.", "meaning": "同意", "example": "She consented to the medical procedure.", "translation": "她同意了医疗程序。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000906-to01-0000-0000-000000000000', 'deduce', '/dɪˈdjuːs/', 'v.', '[{"pos": "v.", "meaning": "推断；演绎", "example": "We can deduce from the data that the experiment was successful.", "translation": "我们可以从数据推断出实验是成功的。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000907-to01-0000-0000-000000000000', 'discern', '/dɪˈsɜːrn/', 'v.', '[{"pos": "v.", "meaning": "辨别；识别", "example": "It was difficult to discern the truth.", "translation": "辨别真相很困难。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000908-to01-0000-0000-000000000000', 'entity', '/ˈentəti/', 'n.', '[{"pos": "n.", "meaning": "实体；存在", "example": "The company is a separate legal entity.", "translation": "该公司是一个独立的法律实体。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000909-to01-0000-0000-000000000000', 'evident', '/ˈevɪdənt/', 'adj.', '[{"pos": "adj.", "meaning": "明显的；显然的", "example": "It was evident that she was the best candidate.", "translation": "很明显她是最佳人选。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000910-to01-0000-0000-000000000000', 'forthcoming', '/ˌfɔːrθˈkʌmɪŋ/', 'adj.', '[{"pos": "adj.", "meaning": "即将到来的；乐于助人的", "example": "The forthcoming election will be closely watched.", "translation": "即将到来的选举将受到密切关注。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000911-to01-0000-0000-000000000000', 'ignorance', '/ˈɪɡnərəns/', 'n.', '[{"pos": "n.", "meaning": "无知；愚昧", "example": "Ignorance of the law is no excuse.", "translation": "不知法律不能成为借口。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000912-to01-0000-0000-000000000000', 'incidence', '/ˈɪnsɪdəns/', 'n.', '[{"pos": "n.", "meaning": "发生率", "example": "The incidence of heart disease has increased.", "translation": "心脏病的发病率增加了。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000913-to01-0000-0000-000000000000', 'insert', '/ɪnˈsɜːrt/', 'v.', '[{"pos": "v.", "meaning": "插入；嵌入", "example": "Insert the key into the lock.", "translation": "把钥匙插入锁中。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000914-to01-0000-0000-000000000000', 'majority', '/məˈdʒɒrəti/', 'n.', '[{"pos": "n.", "meaning": "多数；大多数", "example": "The majority of students passed the exam.", "translation": "大多数学生通过了考试。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000915-to01-0000-0000-000000000000', 'notwithstanding', '/ˌnɒtwɪθˈstændɪŋ/', 'prep.', '[{"pos": "prep.", "meaning": "尽管", "example": "Notwithstanding the rain, the game continued.", "translation": "尽管下雨，比赛继续进行。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000916-to01-0000-0000-000000000000', 'obligate', '/ˈɒblɪɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "使负有义务", "example": "The contract obligates both parties to fulfill their duties.", "translation": "合同使双方有义务履行各自的职责。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000917-to01-0000-0000-000000000000', 'parameter', '/pəˈræmɪtər/', 'n.', '[{"pos": "n.", "meaning": "参数；范围", "example": "We need to define the parameters of the study.", "translation": "我们需要定义研究的参数。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000918-to01-0000-0000-000000000000', 'phase', '/feɪz/', 'n.', '[{"pos": "n.", "meaning": "阶段；时期", "example": "The project is in its final phase.", "translation": "项目正处于最后阶段。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000919-to01-0000-0000-000000000000', 'philosophy', '/fɪˈlɒsəfi/', 'n.', '[{"pos": "n.", "meaning": "哲学；理念", "example": "His teaching philosophy emphasizes critical thinking.", "translation": "他的教学理念强调批判性思维。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000920-to01-0000-0000-000000000000', 'pioneer', '/ˌpaɪəˈnɪr/', 'n.', '[{"pos": "n.", "meaning": "先驱；开拓者", "example": "She was a pioneer in the field of genetics.", "translation": "她是遗传学领域的先驱。"}, {"pos": "v.", "meaning": "开创", "example": "The company pioneered the use of artificial intelligence.", "translation": "该公司开创了人工智能的使用。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000921-to01-0000-0000-000000000000', 'policy', '/ˈpɒləsi/', 'n.', '[{"pos": "n.", "meaning": "政策；方针", "example": "The government introduced a new health policy.", "translation": "政府推出了一项新的卫生政策。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000922-to01-0000-0000-000000000000', 'portion', '/ˈpɔːrʃən/', 'n.', '[{"pos": "n.", "meaning": "部分；一份", "example": "A significant portion of the budget goes to education.", "translation": "预算的很大一部分用于教育。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000923-to01-0000-0000-000000000000', 'possess', '/pəˈzes/', 'v.', '[{"pos": "v.", "meaning": "拥有；具有", "example": "She possesses excellent communication skills.", "translation": "她拥有出色的沟通能力。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000924-to01-0000-0000-000000000000', 'predominant', '/prɪˈdɒmɪnənt/', 'adj.', '[{"pos": "adj.", "meaning": "主要的；占主导地位的", "example": "Agriculture is the predominant industry in the region.", "translation": "农业是该地区的主要产业。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000925-to01-0000-0000-000000000000', 'preliminary', '/prɪˈlɪmɪneri/', 'adj.', '[{"pos": "adj.", "meaning": "初步的；预备的", "example": "Preliminary results suggest the treatment is effective.", "translation": "初步结果表明治疗是有效的。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000926-to01-0000-0000-000000000000', 'previous', '/ˈpriːviəs/', 'adj.', '[{"pos": "adj.", "meaning": "以前的；先前的", "example": "She had no previous experience in management.", "translation": "她以前没有管理经验。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000927-to01-0000-0000-000000000000', 'primary', '/ˈpraɪməri/', 'adj.', '[{"pos": "adj.", "meaning": "主要的；初级的", "example": "The primary goal is to improve quality.", "translation": "主要目标是提高质量。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000928-to01-0000-0000-000000000000', 'principle', '/ˈprɪnsəpəl/', 'n.', '[{"pos": "n.", "meaning": "原则；原理", "example": "The principle of equality is important in law.", "translation": "平等原则在法律中很重要。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000929-to01-0000-0000-000000000000', 'priority', '/praɪˈɒrəti/', 'n.', '[{"pos": "n.", "meaning": "优先事项；重点", "example": "Education should be a top priority.", "translation": "教育应该是首要优先事项。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000930-to01-0000-0000-000000000000', 'proceed', '/prəˈsiːd/', 'v.', '[{"pos": "v.", "meaning": "继续；进行", "example": "Please proceed with the next step.", "translation": "请继续下一步。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000931-to01-0000-0000-000000000000', 'promote', '/prəˈmoʊt/', 'v.', '[{"pos": "v.", "meaning": "促进；提升", "example": "The campaign promotes healthy eating habits.", "translation": "这项活动推广健康的饮食习惯。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000932-to01-0000-0000-000000000000', 'prospect', '/ˈprɒspekt/', 'n.', '[{"pos": "n.", "meaning": "前景；展望", "example": "The prospect of promotion motivated the employees.", "translation": "晋升的前景激励了员工。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000933-to01-0000-0000-000000000000', 'protocol', '/ˈproʊtəkɒl/', 'n.', '[{"pos": "n.", "meaning": "协议；礼仪", "example": "Follow the safety protocol at all times.", "translation": "始终遵守安全协议。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000934-to01-0000-0000-000000000000', 'province', '/ˈprɒvɪns/', 'n.', '[{"pos": "n.", "meaning": "省份；领域", "example": "This matter falls within the province of the local government.", "translation": "这件事属于地方政府的管辖范围。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000935-to01-0000-0000-000000000000', 'range', '/reɪndʒ/', 'n.', '[{"pos": "n.", "meaning": "范围；系列", "example": "The store offers a wide range of products.", "translation": "这家商店提供各种各样的产品。"}, {"pos": "v.", "meaning": "变化；涉及", "example": "Prices range from $10 to $100.", "translation": "价格从10美元到100美元不等。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000936-to01-0000-0000-000000000000', 'ratio', '/ˈreɪʃioʊ/', 'n.', '[{"pos": "n.", "meaning": "比率；比例", "example": "The ratio of boys to girls in the class is 2:1.", "translation": "班级里男生和女生的比例是2:1。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000937-to01-0000-0000-000000000000', 'react', '/riˈækt/', 'v.', '[{"pos": "v.", "meaning": "反应；起化学反应", "example": "How did she react to the news?", "translation": "她对这个消息有何反应？"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000938-to01-0000-0000-000000000000', 'recover', '/rɪˈkʌvər/', 'v.', '[{"pos": "v.", "meaning": "恢复；收回", "example": "It took her months to recover from the illness.", "translation": "她花了几个月才从疾病中恢复过来。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000939-to01-0000-0000-000000000000', 'region', '/ˈriːdʒən/', 'n.', '[{"pos": "n.", "meaning": "地区；区域", "example": "The northern region has a cold climate.", "translation": "北方地区气候寒冷。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000940-to01-0000-0000-000000000000', 'regulate', '/ˈreɡjuleɪt/', 'v.', '[{"pos": "v.", "meaning": "调节；管理", "example": "Laws regulate the use of public spaces.", "translation": "法律规范公共空间的使用。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000941-to01-0000-0000-000000000000', 'reject', '/rɪˈdʒekt/', 'v.', '[{"pos": "v.", "meaning": "拒绝；排斥", "example": "The committee rejected the proposal.", "translation": "委员会拒绝了这项提案。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000942-to01-0000-0000-000000000000', 'relevant', '/ˈreləvənt/', 'adj.', '[{"pos": "adj.", "meaning": "相关的；有关的", "example": "Please provide relevant documents.", "translation": "请提供相关文件。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000943-to01-0000-0000-000000000000', 'rely', '/rɪˈlaɪ/', 'v.', '[{"pos": "v.", "meaning": "依赖；依靠", "example": "Many people rely on public transportation.", "translation": "许多人依赖公共交通。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000944-to01-0000-0000-000000000000', 'remark', '/rɪˈmɑːrk/', 'n.', '[{"pos": "n.", "meaning": "评论；言论", "example": "His remark caused some controversy.", "translation": "他的言论引起了一些争议。"}, {"pos": "v.", "meaning": "评论", "example": "She remarked on the quality of the food.", "translation": "她评论了食物的质量。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000945-to01-0000-0000-000000000000', 'remove', '/rɪˈmuːv/', 'v.', '[{"pos": "v.", "meaning": "移除；去掉", "example": "Please remove your shoes before entering.", "translation": "进入前请脱鞋。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000946-to01-0000-0000-000000000000', 'require', '/rɪˈkwaɪər/', 'v.', '[{"pos": "v.", "meaning": "要求；需要", "example": "This job requires a lot of patience.", "translation": "这份工作需要很大的耐心。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000947-to01-0000-0000-000000000000', 'research', '/rɪˈsɜːrtʃ/', 'n.', '[{"pos": "n.", "meaning": "研究；调查", "example": "Scientific research has led to many discoveries.", "translation": "科学研究带来了许多发现。"}, {"pos": "v.", "meaning": "研究", "example": "She is researching the effects of climate change.", "translation": "她正在研究气候变化的影响。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000948-to01-0000-0000-000000000000', 'resource', '/rɪˈsɔːrs/', 'n.', '[{"pos": "n.", "meaning": "资源", "example": "Water is a precious natural resource.", "translation": "水是宝贵的自然资源。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000949-to01-0000-0000-000000000000', 'respond', '/rɪˈspɒnd/', 'v.', '[{"pos": "v.", "meaning": "回答；反应", "example": "Please respond to the invitation by Friday.", "translation": "请在周五之前回复邀请。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000950-to01-0000-0000-000000000000', 'restrict', '/rɪˈstrɪkt/', 'v.', '[{"pos": "v.", "meaning": "限制；约束", "example": "Access to the building is restricted.", "translation": "进入大楼受到限制。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000951-to01-0000-0000-000000000000', 'revenue', '/ˈrevənjuː/', 'n.', '[{"pos": "n.", "meaning": "收入；税收", "example": "The company''s revenue increased by 20%.", "translation": "公司的收入增长了20%。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000952-to01-0000-0000-000000000000', 'revolution', '/ˌrevəˈluːʃən/', 'n.', '[{"pos": "n.", "meaning": "革命；变革", "example": "The industrial revolution transformed society.", "translation": "工业革命改变了社会。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000953-to01-0000-0000-000000000000', 'role', '/roʊl/', 'n.', '[{"pos": "n.", "meaning": "角色；作用", "example": "Education plays a vital role in society.", "translation": "教育在社会中起着至关重要的作用。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000954-to01-0000-0000-000000000000', 'route', '/ruːt/', 'n.', '[{"pos": "n.", "meaning": "路线；途径", "example": "What''s the best route to the airport?", "translation": "去机场的最佳路线是什么？"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000955-to01-0000-0000-000000000000', 'scheme', '/skiːm/', 'n.', '[{"pos": "n.", "meaning": "计划；方案", "example": "The government launched a new housing scheme.", "translation": "政府推出了一项新的住房计划。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000956-to01-0000-0000-000000000000', 'sector', '/ˈsektər/', 'n.', '[{"pos": "n.", "meaning": "部门；领域", "example": "The private sector plays an important role in the economy.", "translation": "私营部门在经济中起着重要作用。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000957-to01-0000-0000-000000000000', 'seek', '/siːk/', 'v.', '[{"pos": "v.", "meaning": "寻求；寻找", "example": "She is seeking a new job opportunity.", "translation": "她正在寻找新的工作机会。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000958-to01-0000-0000-000000000000', 'select', '/sɪˈlekt/', 'v.', '[{"pos": "v.", "meaning": "选择；挑选", "example": "Please select your preferred option.", "translation": "请选择您偏好的选项。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000959-to01-0000-0000-000000000000', 'sequence', '/ˈsiːkwəns/', 'n.', '[{"pos": "n.", "meaning": "顺序；序列", "example": "Follow the sequence of steps in the manual.", "translation": "按照手册中的步骤顺序操作。"}]'::jsonb, 'TOEFL', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000960-to01-0000-0000-000000000000', 'shift', '/ʃɪft/', 'n.', '[{"pos": "n.", "meaning": "转变；轮班", "example": "There has been a shift in public opinion.", "translation": "公众舆论发生了转变。"}, {"pos": "v.", "meaning": "转移；改变", "example": "The wind shifted to the north.", "translation": "风转向了北方。"}]'::jsonb, 'TOEFL', true)
;

INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000961-gr01-0000-0000-000000000000', 'aberrant', '/æˈberənt/', 'adj.', '[{"pos": "adj.", "meaning": "异常的，偏离正道的", "example": "The aberrant behavior of the stock market alarmed investors.", "translation": "股票市场的异常行为令投资者感到恐慌。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000962-gr01-0000-0000-000000000000', 'acrimony', '/ˈækrɪmoʊni/', 'n.', '[{"pos": "n.", "meaning": "尖刻，刻薄", "example": "The debate was marked by acrimony and personal attacks.", "translation": "这场辩论以刻薄和人身攻击为特点。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000963-gr01-0000-0000-000000000000', 'adamant', '/ˈædəmənt/', 'adj.', '[{"pos": "adj.", "meaning": "坚定不移的，坚决的", "example": "She was adamant that she would not change her mind.", "translation": "她坚决表示不会改变主意。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000964-gr01-0000-0000-000000000000', 'admonish', '/ədˈmɑːnɪʃ/', 'v.', '[{"pos": "v.", "meaning": "告诫，训诫", "example": "The teacher admonished the students for their disruptive behavior.", "translation": "老师因学生们的破坏性行为而训诫他们。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000965-gr01-0000-0000-000000000000', 'adroit', '/əˈdrɔɪt/', 'adj.', '[{"pos": "adj.", "meaning": "灵巧的，熟练的", "example": "She is adroit at handling delicate negotiations.", "translation": "她擅长处理微妙的谈判。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000966-gr01-0000-0000-000000000000', 'affable', '/ˈæfəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "和蔼可亲的，友善的", "example": "His affable manner put everyone at ease.", "translation": "他和蔼可亲的态度让每个人都感到放松。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000967-gr01-0000-0000-000000000000', 'aggrandize', '/əˈɡrændaɪz/', 'v.', '[{"pos": "v.", "meaning": "夸大，扩张", "example": "He sought to aggrandize his own reputation at others'' expense.", "translation": "他试图以牺牲他人为代价来夸大自己的声誉。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000968-gr01-0000-0000-000000000000', 'alacrity', '/əˈlækrəti/', 'n.', '[{"pos": "n.", "meaning": "敏捷，乐意", "example": "She accepted the invitation with alacrity.", "translation": "她欣然接受了邀请。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000969-gr01-0000-0000-000000000000', 'alcove', '/ˈælkoʊv/', 'n.', '[{"pos": "n.", "meaning": "凹室，壁龛", "example": "The reading nook was tucked away in a cozy alcove.", "translation": "阅读角隐藏在一个舒适的凹室里。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000970-gr01-0000-0000-000000000000', 'altruistic', '/ˌæltruˈɪstɪk/', 'adj.', '[{"pos": "adj.", "meaning": "无私的，利他的", "example": "Her altruistic efforts helped countless families in need.", "translation": "她无私的努力帮助了无数需要帮助的家庭。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000971-gr01-0000-0000-000000000000', 'amiable', '/ˈeɪmiəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "和蔼的，友善的", "example": "Despite the tense situation, she maintained an amiable demeanor.", "translation": "尽管情况紧张，她仍保持着和蔼的态度。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000972-gr01-0000-0000-000000000000', 'anachronism', '/əˈnækrənɪzəm/', 'n.', '[{"pos": "n.", "meaning": "时代错误", "example": "The horse-drawn carriage seemed an anachronism in the modern city.", "translation": "马车在现代城市中似乎是一种时代错误。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000973-gr01-0000-0000-000000000000', 'anomaly', '/əˈnɑːməli/', 'n.', '[{"pos": "n.", "meaning": "异常，不规则", "example": "The test results showed an anomaly that required further investigation.", "translation": "测试结果显示了需要进一步调查的异常情况。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000974-gr01-0000-0000-000000000000', 'antithesis', '/ænˈtɪθəsɪs/', 'n.', '[{"pos": "n.", "meaning": "对立面，对比", "example": "His calm demeanor was the antithesis of her anxious nature.", "translation": "他冷静的态度与她焦虑的天性形成对比。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000975-gr01-0000-0000-000000000000', 'apathy', '/ˈæpəθi/', 'n.', '[{"pos": "n.", "meaning": "冷漠，无感情", "example": "Voter apathy led to low turnout in the election.", "translation": "选民冷漠导致了选举投票率低迷。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000976-gr01-0000-0000-000000000000', 'appease', '/əˈpiːz/', 'v.', '[{"pos": "v.", "meaning": "安抚，平息", "example": "She tried to appease the angry crowd with promises of reform.", "translation": "她试图用改革的承诺来安抚愤怒的人群。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000977-gr01-0000-0000-000000000000', 'arcane', '/ɑːrˈkeɪn/', 'adj.', '[{"pos": "adj.", "meaning": "神秘的，晦涩难懂的", "example": "The arcane rituals of the ancient civilization fascinated archaeologists.", "translation": "古代文明的神秘仪式令考古学家着迷。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000978-gr01-0000-0000-000000000000', 'arduous', '/ˈɑːrdʒuəs/', 'adj.', '[{"pos": "adj.", "meaning": "艰巨的，困难的", "example": "The arduous journey through the mountains tested their endurance.", "translation": "穿越山区的艰巨旅程考验了他们的耐力。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000979-gr01-0000-0000-000000000000', 'ascetic', '/əˈsetɪk/', 'adj.', '[{"pos": "adj.", "meaning": "禁欲的，苦行的", "example": "The monk led an ascetic life, renouncing all worldly pleasures.", "translation": "这位僧侣过着禁欲的生活，放弃了所有世俗的享乐。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000980-gr01-0000-0000-000000000000', 'assiduous', '/əˈsɪdʒuəs/', 'adj.', '[{"pos": "adj.", "meaning": "勤奋的，刻苦的", "example": "Her assiduous efforts were rewarded with a promotion.", "translation": "她勤奋的努力得到了晋升的回报。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000981-gr01-0000-0000-000000000000', 'astute', '/əˈstuːt/', 'adj.', '[{"pos": "adj.", "meaning": "精明的，敏锐的", "example": "The astute investor recognized the opportunity before others.", "translation": "这位精明的投资者在其他人之前就发现了机会。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000982-gr01-0000-0000-000000000000', 'audacious', '/ɔːˈdeɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "大胆的，无畏的", "example": "The audacious plan to climb the uncharted peak shocked the climbing community.", "translation": "攀登未被探索山峰的大胆计划震惊了登山界。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000983-gr01-0000-0000-000000000000', 'avarice', '/ˈævərɪs/', 'n.', '[{"pos": "n.", "meaning": "贪婪，贪财", "example": "His avarice led him to exploit the weak and vulnerable.", "translation": "他的贪婪使他剥削弱者和弱势群体。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000984-gr01-0000-0000-000000000000', 'aver', '/əˈvɜːr/', 'v.', '[{"pos": "v.", "meaning": "断言，声称", "example": "She averred that the accusations were completely false.", "translation": "她断言这些指控完全不属实。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000985-gr01-0000-0000-000000000000', 'avid', '/ˈævɪd/', 'adj.', '[{"pos": "adj.", "meaning": "渴望的，热心的", "example": "He is an avid reader who finishes a book every week.", "translation": "他是一位热心的读者，每周读完一本书。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000986-gr01-0000-0000-000000000000', 'bane', '/beɪn/', 'n.', '[{"pos": "n.", "meaning": "祸根，灾星", "example": "Procrastination is the bane of many students'' existence.", "translation": "拖延是许多学生的大敌。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000987-gr01-0000-0000-000000000000', 'banter', '/ˈbæntər/', 'n.', '[{"pos": "n.", "meaning": "打趣，玩笑", "example": "The friendly banter between the colleagues lightened the mood.", "translation": "同事们之间友好的玩笑缓解了气氛。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000988-gr01-0000-0000-000000000000', 'bellicose', '/ˈbelɪkoʊs/', 'adj.', '[{"pos": "adj.", "meaning": "好战的，好斗的", "example": "The bellicose rhetoric escalated tensions between the two nations.", "translation": "好战的言辞加剧了两国之间的紧张局势。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000989-gr01-0000-0000-000000000000', 'belligerent', '/bəˈlɪdʒərənt/', 'adj.', '[{"pos": "adj.", "meaning": "好斗的，敌对的", "example": "The belligerent crowd threw bottles at the police.", "translation": "好斗的人群向警察扔瓶子。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000990-gr01-0000-0000-000000000000', 'benign', '/bɪˈnaɪn/', 'adj.', '[{"pos": "adj.", "meaning": "良性的，和蔼的", "example": "The tumor was benign, much to the relief of the patient.", "translation": "肿瘤是良性的，这让患者大大松了口气。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000991-gr01-0000-0000-000000000000', 'bolster', '/ˈboʊlstər/', 'v.', '[{"pos": "v.", "meaning": "支持，加强", "example": "The new evidence bolstered the prosecution''s case.", "translation": "新证据加强了控方的案件。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000992-gr01-0000-0000-000000000000', 'bombastic', '/bɑːmˈbæstɪk/', 'adj.', '[{"pos": "adj.", "meaning": "浮夸的，言过其实的", "example": "The politician''s bombastic speech failed to impress the audience.", "translation": "这位政治家浮夸的演讲未能打动听众。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000993-gr01-0000-0000-000000000000', 'brevity', '/ˈbrevəti/', 'n.', '[{"pos": "n.", "meaning": "简洁，简短", "example": "The speaker was known for his brevity and clarity.", "translation": "这位演讲者以简洁和清晰著称。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000994-gr01-0000-0000-000000000000', 'bristle', '/ˈbrɪsəl/', 'v.', '[{"pos": "v.", "meaning": "发怒，竖起", "example": "She bristled at the suggestion that she was incompetent.", "translation": "她因暗示她不称职而发怒。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000995-gr01-0000-0000-000000000000', 'broach', '/broʊtʃ/', 'v.', '[{"pos": "v.", "meaning": "提出，开始讨论", "example": "He hesitated to broach the subject of salary negotiations.", "translation": "他犹豫着是否要提出薪资谈判的话题。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000996-gr01-0000-0000-000000000000', 'buffet', '/ˈbʌfɪt/', 'v.', '[{"pos": "v.", "meaning": "打击，冲击", "example": "The company was buffeted by the economic downturn.", "translation": "公司受到了经济衰退的打击。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000997-gr01-0000-0000-000000000000', 'bulwark', '/ˈbʊlwərk/', 'n.', '[{"pos": "n.", "meaning": "堡垒，屏障", "example": "Education serves as a bulwark against ignorance and prejudice.", "translation": "教育是抵御无知和偏见的堡垒。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000998-gr01-0000-0000-000000000000', 'bungle', '/ˈbʌŋɡəl/', 'v.', '[{"pos": "v.", "meaning": "搞砸，弄糟", "example": "The contractor bungled the renovation, leaving the house in disarray.", "translation": "承包商搞砸了翻修，使房子陷入混乱。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0000999-gr01-0000-0000-000000000000', 'burgeon', '/ˈbɜːrdʒən/', 'v.', '[{"pos": "v.", "meaning": "迅速发展，萌芽", "example": "The tech industry continued to burgeon in the emerging market.", "translation": "科技行业在新兴市场继续迅速发展。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001000-gr01-0000-0000-000000000000', 'cacophony', '/kəˈkɑːfəni/', 'n.', '[{"pos": "n.", "meaning": "刺耳的声音，嘈杂", "example": "The cacophony of car horns and construction noise was overwhelming.", "translation": "汽车喇叭和施工噪音的嘈杂声令人难以忍受。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001001-gr01-0000-0000-000000000000', 'calamity', '/kəˈlæməti/', 'n.', '[{"pos": "n.", "meaning": "灾难，不幸", "example": "The earthquake was a calamity that devastated the entire region.", "translation": "地震是一场摧毁整个地区的灾难。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001002-gr01-0000-0000-000000000000', 'candid', '/ˈkændɪd/', 'adj.', '[{"pos": "adj.", "meaning": "坦率的，直言不讳的", "example": "She appreciated his candid assessment of the situation.", "translation": "她感谢他对情况的坦率评估。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001003-gr01-0000-0000-000000000000', 'capricious', '/kəˈprɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "反复无常的，任性的", "example": "The capricious weather made it difficult to plan outdoor activities.", "translation": "反复无常的天气使户外活动难以计划。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001004-gr01-0000-0000-000000000000', 'castigate', '/ˈkæstɪɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "严厉批评，谴责", "example": "The press castigated the politician for his unethical behavior.", "translation": "媒体严厉批评了这位政治家的不道德行为。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001005-gr01-0000-0000-000000000000', 'catalyst', '/ˈkætəlɪst/', 'n.', '[{"pos": "n.", "meaning": "催化剂，促进因素", "example": "The protest served as a catalyst for widespread social change抗议成为了广泛社会变革的催化剂。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001006-gr01-0000-0000-000000000000', 'caustic', '/ˈkɔːstɪk/', 'adj.', '[{"pos": "adj.", "meaning": "刻薄的，腐蚀性的", "example": "His caustic remarks wounded many of his colleagues.", "translation": "他刻薄的言语伤害了许多同事。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001007-gr01-0000-0000-000000000000', 'caveat', '/ˈkæviæt/', 'n.', '[{"pos": "n.", "meaning": "警告，告诫", "example": "The recommendation came with the caveat that results may vary.", "translation": "该建议附带了结果可能不同的警告。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001008-gr01-0000-0000-000000000000', 'cessation', '/seˈseɪʃən/', 'n.', '[{"pos": "n.", "meaning": "停止，终止", "example": "The cessation of hostilities brought relief to the war-torn region.", "translation": "敌对行动的停止给饱受战争蹂躏的地区带来了 relief。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001009-gr01-0000-0000-000000000000', 'chicanery', '/ʃɪˈkeɪnəri/', 'n.', '[{"pos": "n.", "meaning": "欺骗，诡计", "example": "The lawyer was known for his legal chicanery.", "translation": "这位律师以其法律诡计而闻名。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001010-gr01-0000-0000-000000000000', 'circumlocution', '/ˌsɜːrkəmloʊˈkjuːʃən/', 'n.', '[{"pos": "n.", "meaning": "迂回的言辞，累赘", "example": "His circumlocution made it difficult to understand his true intentions.", "translation": "他迂回的言辞使人难以理解他的真实意图。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001011-gr01-0000-0000-000000000000', 'clandestine', '/klænˈdestɪn/', 'adj.', '[{"pos": "adj.", "meaning": "秘密的，暗中的", "example": "The clandestine operation was conducted under the cover of darkness.", "translation": "秘密行动在黑暗的掩护下进行。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001012-gr01-0000-0000-000000000000', 'clemency', '/ˈklemənsi/', 'n.', '[{"pos": "n.", "meaning": "仁慈，宽大", "example": "The governor granted clemency to the wrongly convicted prisoner.", "translation": "州长对被错误定罪的囚犯给予了宽大处理。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001013-gr01-0000-0000-000000000000', 'coalesce', '/ˌkoʊəˈles/', 'v.', '[{"pos": "v.", "meaning": "合并，联合", "example": "The various factions coalesced to form a unified opposition.", "translation": "各派系联合起来形成了统一的反对派。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001014-gr01-0000-0000-000000000000', 'coercion', '/koʊˈɜːrʒən/', 'n.', '[{"pos": "n.", "meaning": "强迫，胁迫", "example": "The confession was obtained through coercion and is therefore inadmissible.", "translation": "供词是通过胁迫获得的，因此不可采纳。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001015-gr01-0000-0000-000000000000', 'cognizant', '/ˈkɑːɡnɪzənt/', 'adj.', '[{"pos": "adj.", "meaning": "认识到的，知晓的", "example": "She was cognizant of the risks involved in the venture.", "translation": "她认识到这项冒险所涉及的风险。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001016-gr01-0000-0000-000000000000', 'compelling', '/kəmˈpelɪŋ/', 'adj.', '[{"pos": "adj.", "meaning": "引人注目的，令人信服的", "example": "The documentary presented a compelling case for environmental protection.", "translation": "这部纪录片为环境保护提出了令人信服的论点。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001017-gr01-0000-0000-000000000000', 'complacent', '/kəmˈpleɪsənt/', 'adj.', '[{"pos": "adj.", "meaning": "自满的，沾沾自喜的", "example": "The company became complacent and lost its competitive edge.", "translation": "公司变得自满，失去了竞争优势。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001018-gr01-0000-0000-000000000000', 'compliant', '/kəmˈplaɪənt/', 'adj.', '[{"pos": "adj.", "meaning": "顺从的，服从的", "example": "The employees were compliant with the new safety regulations.", "translation": "员工们遵守新的安全规定。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001019-gr01-0000-0000-000000000000', 'conceited', '/kənˈsiːtɪd/', 'adj.', '[{"pos": "adj.", "meaning": "自负的，骄傲的", "example": "His conceited attitude made him unpopular among his peers.", "translation": "他自负的态度使他在同龄人中不受欢迎。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001020-gr01-0000-0000-000000000000', 'concoct', '/kənˈkɑːkt/', 'v.', '[{"pos": "v.", "meaning": "编造，策划", "example": "She concocted an elaborate excuse for being late.", "translation": "她编造了一个精心设计的迟到借口。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001021-gr01-0000-0000-000000000000', 'conjecture', '/kənˈdʒektʃər/', 'n.', '[{"pos": "n.", "meaning": "推测，猜测", "example": "The report was based on conjecture rather than hard evidence.", "translation": "这份报告是基于推测而非确凿证据。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001022-gr01-0000-0000-000000000000', 'conscientious', '/ˌkɑːnʃiˈenʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "认真的，尽责的", "example": "She is a conscientious worker who never misses a deadline.", "translation": "她是一位认真的工作者，从不误期。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001023-gr01-0000-0000-000000000000', 'consecrate', '/ˈkɑːnsɪkreɪt/', 'v.', '[{"pos": "v.", "meaning": "奉献，祝圣", "example": "The priest consecrated the new church with a special ceremony.", "translation": "牧师通过特别仪式祝圣了新教堂。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001024-gr01-0000-0000-000000000000', 'conspicuous', '/kənˈspɪkjuəs/', 'adj.', '[{"pos": "adj.", "meaning": "显眼的，引人注目的", "example": "Her absence from the meeting was conspicuous.", "translation": "她缺席会议是显而易见的。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001025-gr01-0000-0000-000000000000', 'construe', '/kənˈstruː/', 'v.', '[{"pos": "v.", "meaning": "解释，理解", "example": "His silence was construed as an admission of guilt.", "translation": "他的沉默被理解为承认有罪。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001026-gr01-0000-0000-000000000000', 'contention', '/kənˈtenʃən/', 'n.', '[{"pos": "n.", "meaning": "争论，论点", "example": "The main contention of the article is that climate change is accelerating.", "translation": "这篇文章的主要论点是气候变化正在加速。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001027-gr01-0000-0000-000000000000', 'contrite', '/kənˈtraɪt/', 'adj.', '[{"pos": "adj.", "meaning": "悔恨的，忏悔的", "example": "He appeared genuinely contrite after realizing his mistake.", "translation": "在意识到自己的错误后，他看起来真的很悔恨。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001028-gr01-0000-0000-000000000000', 'converge', '/kənˈvɜːrdʒ/', 'v.', '[{"pos": "v.", "meaning": "汇聚，聚集", "example": "The two rivers converge just south of the city.", "translation": "两条河流在城市以南汇合。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001029-gr01-0000-0000-000000000000', 'corroborate', '/kəˈrɑːbəreɪt/', 'v.', '[{"pos": "v.", "meaning": "证实，支持", "example": "The witness''s testimony corroborated the defendant''s alibi.", "translation": "证人的证词证实了被告的不在场证明。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001030-gr01-0000-0000-000000000000', 'countenance', '/ˈkaʊntənəns/', 'n.', '[{"pos": "n.", "meaning": "面容，表情", "example": "Her calm countenance betrayed no hint of her inner turmoil.", "translation": "她平静的面容没有流露出内心的混乱。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001031-gr01-0000-0000-000000000000', 'credulous', '/ˈkredʒələs/', 'adj.', '[{"pos": "adj.", "meaning": "轻信的，易受骗的", "example": "The credulous investors fell for the elaborate Ponzi scheme.", "translation": "轻信的投资者陷入了精心设计的庞氏骗局。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001032-gr01-0000-0000-000000000000', 'crux', '/krʌks/', 'n.', '[{"pos": "n.", "meaning": "关键，核心", "example": "The crux of the debate is whether the policy benefits outweigh the costs.", "translation": "辩论的关键是政策利益是否超过成本。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001033-gr01-0000-0000-000000000000', 'culpable', '/ˈkʌlpəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "有罪的，应受谴责的", "example": "The investigation found the company culpable for the environmental damage.", "translation": "调查发现该公司应对环境破坏负责。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001034-gr01-0000-0000-000000000000', 'dearth', '/dɜːrθ/', 'n.', '[{"pos": "n.", "meaning": "缺乏，不足", "example": "There is a dearth of qualified candidates for the position.", "translation": "该职位缺乏合格的候选人。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001035-gr01-0000-0000-000000000000', 'debacle', '/dɪˈbɑːkəl/', 'n.', '[{"pos": "n.", "meaning": "惨败，溃败", "example": "The product launch was a debacle that cost the company millions.", "translation": "产品发布是一场惨败，给公司造成了数百万损失。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001036-gr01-0000-0000-000000000000', 'deft', '/deft/', 'adj.', '[{"pos": "adj.", "meaning": "灵巧的，熟练的", "example": "With deft fingers, she repaired the delicate mechanism.", "translation": "她用灵巧的手指修复了精密的机械装置。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001037-gr01-0000-0000-000000000000', 'defunct', '/dɪˈfʌŋkt/', 'adj.', '[{"pos": "adj.", "meaning": "已废止的，不存在的", "example": "The defunct company left behind a trail of unpaid debts.", "translation": "这家已不存在的公司留下了一连串未付债务。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001038-gr01-0000-0000-000000000000', 'deleterious', '/ˌdeləˈtɪriəs/', 'adj.', '[{"pos": "adj.", "meaning": "有害的，有毒的", "example": "The deleterious effects of pollution on public health are well-documented.", "translation": "污染对公众健康的有害影响已有充分记录。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001039-gr01-0000-0000-000000000000', 'delineate', '/dɪˈlɪneɪt/', 'v.', '[{"pos": "v.", "meaning": "描绘，勾画", "example": "The report delineated the boundaries between the two territories.", "translation": "报告描绘了两个领土之间的边界。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001040-gr01-0000-0000-000000000000', 'demagogue', '/ˈdeməɡɑːɡ/', 'n.', '[{"pos": "n.", "meaning": "煽动者，蛊惑民心的政客", "example": "The demagogue exploited public fears to gain political power.", "translation": "这位煽动者利用公众恐惧获取政治权力。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001041-gr01-0000-0000-000000000000', 'demur', '/dɪˈmɜːr/', 'v.', '[{"pos": "v.", "meaning": "表示异议，反对", "example": "She demurred at the suggestion that she should apologize.", "translation": "她对应该道歉的建议表示异议。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001042-gr01-0000-0000-000000000000', 'deprecate', '/ˈdeprɪkeɪt/', 'v.', '[{"pos": "v.", "meaning": "反对，贬低", "example": "She deprecated the importance of the minor details.", "translation": "她贬低了次要细节的重要性。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001043-gr01-0000-0000-000000000000', 'deride', '/dɪˈraɪd/', 'v.', '[{"pos": "v.", "meaning": "嘲笑，嘲讽", "example": "Critics derided the proposal as impractical and naive.", "translation": "批评者嘲笑该提议不切实际和幼稚。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001044-gr01-0000-0000-000000000000', 'despondent', '/dɪˈspɑːndənt/', 'adj.', '[{"pos": "adj.", "meaning": "沮丧的，泄气的", "example": "She became despondent after repeated failures.", "translation": "在反复失败后，她变得沮丧。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001045-gr01-0000-0000-000000000000', 'destitute', '/ˈdestɪtuːt/', 'adj.', '[{"pos": "adj.", "meaning": "贫困的，赤贫的", "example": "The earthquake left thousands of families destitute.", "translation": "地震使数千个家庭陷入赤贫。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001046-gr01-0000-0000-000000000000', 'diatribe', '/ˈdaɪətraɪb/', 'n.', '[{"pos": "n.", "meaning": "抨击，谩骂", "example": "The editorial was a diatribe against government corruption.", "translation": "这篇社论是对政府腐败的抨击。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001047-gr01-0000-0000-000000000000', 'didactic', '/daɪˈdæktɪk/', 'adj.', '[{"pos": "adj.", "meaning": "说教的，教诲的", "example": "The novel''s didactic tone made it less enjoyable as literature.", "translation": "这部小说的说教语气使其作为文学作品不那么令人愉快。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001048-gr01-0000-0000-000000000000', 'diffident', '/ˈdɪfɪdənt/', 'adj.', '[{"pos": "adj.", "meaning": "缺乏自信的，胆怯的", "example": "Despite his brilliance, he remained diffident about his abilities.", "translation": "尽管才华横溢，他仍然对自己的能力缺乏自信。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001049-gr01-0000-0000-000000000000', 'dilatory', '/ˈdɪlətɔːri/', 'adj.', '[{"pos": "adj.", "meaning": "拖延的，磨蹭的", "example": "The dilatory response from management frustrated the employees.", "translation": "管理层拖延的回应让员工感到沮丧。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001050-gr01-0000-0000-000000000000', 'disaffected', '/ˌdɪsəˈfektɪd/', 'adj.', '[{"pos": "adj.", "meaning": "不满的，反叛的", "example": "The disaffected workers organized a strike against the company.", "translation": "不满的工人组织了针对公司的罢工。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001051-gr01-0000-0000-000000000000', 'disparage', '/dɪˈspærɪdʒ/', 'v.', '[{"pos": "v.", "meaning": "贬低，轻视", "example": "She refused to disparage her competitors in the business.", "translation": "她拒绝贬低商业竞争对手。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001052-gr01-0000-0000-000000000000', 'disparate', '/ˈdɪspərət/', 'adj.', '[{"pos": "adj.", "meaning": "截然不同的，不相干的", "example": "The two cultures, though disparate, share a common love of music.", "translation": "这两种文化虽然截然不同，却对音乐有着共同的热爱。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001053-gr01-0000-0000-000000000000', 'disseminate', '/dɪˈsemɪneɪt/', 'v.', '[{"pos": "v.", "meaning": "传播，散布", "example": "The organization worked to disseminate accurate health information.", "translation": "该组织致力于传播准确的健康信息。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001054-gr01-0000-0000-000000000000', 'dissolution', '/ˌdɪsəˈluːʃən/', 'n.', '[{"pos": "n.", "meaning": "解散，解除", "example": "The dissolution of the partnership was amicable.", "translation": "合伙关系的解散是友好的。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001055-gr01-0000-0000-000000000000', 'divulge', '/daɪˈvʌldʒ/', 'v.', '[{"pos": "v.", "meaning": "泄露，透露", "example": "She refused to divulge the confidential information.", "translation": "她拒绝泄露机密信息。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001056-gr01-0000-0000-000000000000', 'dogma', '/ˈdɔːɡmə/', 'n.', '[{"pos": "n.", "meaning": "教条，信条", "example": "She challenged the religious dogma that had governed her community.", "translation": "她挑战了统治她社区的宗教教条。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001057-gr01-0000-0000-000000000000', 'duplicity', '/duːˈplɪsəti/', 'n.', '[{"pos": "n.", "meaning": "欺骗，口是心非", "example": "His duplicity was exposed when the emails were made public.", "translation": "当电子邮件被公开时，他的口是心非被曝光了。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001058-gr01-0000-0000-000000000000', 'ebullient', '/ɪˈbʌliənt/', 'adj.', '[{"pos": "adj.", "meaning": "热情洋溢的，兴高采烈的", "example": "Her ebullient personality made her the life of every party.", "translation": "她热情洋溢的性格使她成为每次派对的焦点。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001059-gr01-0000-0000-000000000000', 'efficacy', '/ˈefɪkəsi/', 'n.', '[{"pos": "n.", "meaning": "功效，效力", "example": "The efficacy of the new vaccine was confirmed in clinical trials.", "translation": "新疫苗的功效在临床试验中得到证实。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001060-gr01-0000-0000-000000000000', 'egregious', '/ɪˈɡriːdʒəs/', 'adj.', '[{"pos": "adj.", "meaning": "极其恶劣的，极坏的", "example": "The egregious error in the financial report led to an investigation.", "translation": "财务报告中的极其恶劣的错误导致了调查。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001061-gr01-0000-0000-000000000000', 'elucidate', '/ɪˈluːsɪdeɪt/', 'v.', '[{"pos": "v.", "meaning": "阐明，解释", "example": "The professor elucidated the complex theory with clear examples.", "translation": "教授用清晰的例子阐明了复杂的理论。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001062-gr01-0000-0000-000000000000', 'emancipate', '/ɪˈmænsɪpeɪt/', 'v.', '[{"pos": "v.", "meaning": "解放，使自由", "example": "The movement sought to emancipate oppressed peoples around the world.", "translation": "这场运动旨在解放世界各地受压迫的人民。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001063-gr01-0000-0000-000000000000', 'embellish', '/ɪmˈbelɪʃ/', 'v.', '[{"pos": "v.", "meaning": "修饰，美化", "example": "He tended to embellish his stories to make them more interesting.", "translation": "他倾向于修饰他的故事使其更有趣。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001064-gr01-0000-0000-000000000000', 'endemic', '/enˈdemɪk/', 'adj.', '[{"pos": "adj.", "meaning": "地方性的，特有的", "example": "Corruption is endemic in some parts of the government.", "translation": "腐败在政府的某些部门是普遍存在的。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001065-gr01-0000-0000-000000000000', 'enervate', '/ˈenərveɪt/', 'v.', '[{"pos": "v.", "meaning": "使衰弱，使无力", "example": "The tropical heat enervated the travelers after hours of walking.", "translation": "热带的炎热在数小时的行走后使旅行者感到疲惫。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001066-gr01-0000-0000-000000000000', 'engender', '/ɪnˈdʒendər/', 'v.', '[{"pos": "v.", "meaning": "引起，产生", "example": "The policy changes engendered widespread public debate.", "translation": "政策变化引起了广泛的公众辩论。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001067-gr01-0000-0000-000000000000', 'ephemeral', '/ɪˈfemərəl/', 'adj.', '[{"pos": "adj.", "meaning": "短暂的，转瞬即逝的", "example": "The beauty of cherry blossoms is ephemeral, lasting only a few days.", "translation": "樱花之美是短暂的，只持续几天。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001068-gr01-0000-0000-000000000000', 'equanimity', '/ˌekwəˈnɪməti/', 'n.', '[{"pos": "n.", "meaning": "平静，沉着", "example": "She faced the crisis with remarkable equanimity.", "translation": "她以非凡的平静面对危机。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001069-gr01-0000-0000-000000000000', 'equivocal', '/ɪˈkwɪvəkəl/', 'adj.', '[{"pos": "adj.", "meaning": "模棱两可的，不明确的", "example": "The politician gave an equivocal answer that satisfied no one.", "translation": "这位政治家给出了一个模棱两可的答案，没有人满意。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001070-gr01-0000-0000-000000000000', 'esoteric', '/ˌesəˈterɪk/', 'adj.', '[{"pos": "adj.", "meaning": "深奥的，难懂的", "example": "The professor''s esoteric lectures were lost on most students.", "translation": "教授深奥的讲座对大多数学生来说难以理解。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001071-gr01-0000-0000-000000000000', 'exacerbate', '/ɪɡˈzæsərbeɪt/', 'v.', '[{"pos": "v.", "meaning": "加剧，恶化", "example": "The drought exacerbated the food shortage in the region.", "translation": "干旱加剧了该地区的粮食短缺。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001072-gr01-0000-0000-000000000000', 'exhort', '/ɪɡˈzɔːrt/', 'v.', '[{"pos": "v.", "meaning": "劝诫，敦促", "example": "The coach exhorted the team to give their best performance.", "translation": "教练敦促球队发挥最佳水平。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001073-gr01-0000-0000-000000000000', 'expedient', '/ɪkˈspiːdiənt/', 'adj.', '[{"pos": "adj.", "meaning": "权宜的，方便的", "example": "The expedient solution addressed the immediate problem but not the root cause.", "translation": "权宜的解决方案解决了眼前的问题，但没有解决根本原因。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001074-gr01-0000-0000-000000000000', 'expurgate', '/ˈekspɜːrɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "删去，净化", "example": "The publisher expurgated the controversial sections from the book.", "translation": "出版商从书中删去了有争议的部分。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001075-gr01-0000-0000-000000000000', 'extol', '/ɪkˈstoʊl/', 'v.', '[{"pos": "v.", "meaning": "赞美，颂扬", "example": "The critic extolled the virtues of the innovative design.", "translation": "批评家赞扬了创新设计的优点。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001076-gr01-0000-0000-000000000000', 'extraneous', '/ɪkˈstreɪniəs/', 'adj.', '[{"pos": "adj.", "meaning": "无关的，外来的", "example": "She removed all extraneous details from her presentation.", "translation": "她从演示中删除了所有无关的细节。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001077-gr01-0000-0000-000000000000', 'facetious', '/fəˈsiːʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "滑稽的，不当地幽默的", "example": "His facetious remarks during the serious meeting offended many people.", "translation": "他在严肃会议期间的滑稽言论冒犯了许多人。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001078-gr01-0000-0000-000000000000', 'fallacious', '/fəˈleɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "谬误的，虚假的", "example": "The argument was based on fallacious reasoning and had no merit.", "translation": "这个论点基于谬误的推理，没有任何价值。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001079-gr01-0000-0000-000000000000', 'fastidious', '/fæˈstɪdiəs/', 'adj.', '[{"pos": "adj.", "meaning": "一丝不苟的，挑剔的", "example": "She was fastidious about every detail of the project.", "translation": "她对项目的每一个细节都一丝不苟。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001080-gr01-0000-0000-000000000000', 'flag', '/flæɡ/', 'v.', '[{"pos": "v.", "meaning": "衰退，减退", "example": "The company''s profits began to flag after the economic downturn.", "translation": "经济衰退后，公司的利润开始下降。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001081-gr01-0000-0000-000000000000', 'florid', '/ˈflɔːrɪd/', 'adj.', '[{"pos": "adj.", "meaning": "华丽的，过分装饰的", "example": "The author''s florid prose was admired by some but criticized by others.", "translation": "这位作者华丽的散文受到一些人的赞赏，但也受到其他人的批评。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001082-gr01-0000-0000-000000000000', 'fortuitous', '/fɔːrˈtuːɪtəs/', 'adj.', '[{"pos": "adj.", "meaning": "偶然的，幸运的", "example": "Their fortuitous meeting led to a lasting friendship.", "translation": "他们的偶然相遇促成了持久的友谊。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001083-gr01-0000-0000-000000000000', 'fractious', '/ˈfrækʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "易怒的，难以控制的", "example": "The fractious child refused to cooperate during the family outing.", "translation": "这个易怒的孩子在家庭出游时拒绝合作。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001084-gr01-0000-0000-000000000000', 'frivolous', '/ˈfrɪvələs/', 'adj.', '[{"pos": "adj.", "meaning": "轻浮的，琐碎的", "example": "The lawsuit was dismissed as frivolous and without merit.", "translation": "该诉讼被驳回，理由是轻浮且没有价值。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001085-gr01-0000-0000-000000000000', 'frothy', '/ˈfrɔːθi/', 'adj.', '[{"pos": "adj.", "meaning": "泡沫的，浅薄的", "example": "The frothy conversation lacked any real substance.", "translation": "这场浅薄的对话缺乏任何实质内容。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001086-gr01-0000-0000-000000000000', 'futile', '/ˈfjuːtaɪl/', 'adj.', '[{"pos": "adj.", "meaning": "徒劳的，无用的", "example": "Their attempts to negotiate a ceasefire proved futile.", "translation": "他们谈判停火的努力被证明是徒劳的"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001087-gr01-0000-0000-000000000000', 'garrulous', '/ˈɡærələs/', 'adj.', '[{"pos": "adj.", "meaning": "话多的，唠叨的", "example": "The garrulous neighbor kept them talking for hours.", "translation": "这位话多的邻居让他们聊了好几个小时。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001088-gr01-0000-0000-000000000000', 'glib', '/ɡlɪb/', 'adj.', '[{"pos": "adj.", "meaning": "油嘴滑舌的，口齿伶俐的", "example": "His glib explanation didn''t convince anyone of his innocence.", "translation": "他油嘴滑舌的解释没能说服任何人相信他的无辜。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001089-gr01-0000-0000-000000000000', 'gregarious', '/ɡrɪˈɡeriəs/', 'adj.', '[{"pos": "adj.", "meaning": "社交的，合群的", "example": "Her gregarious nature made her popular at social gatherings.", "translation": "她合群的性格使她在社交聚会上很受欢迎。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001090-gr01-0000-0000-000000000000', 'hackneyed', '/ˈhæknid/', 'adj.', '[{"pos": "adj.", "meaning": "陈腐的，老套的", "example": "The speech was full of hackneyed phrases that bored the audience.", "translation": "演讲充满了陈腐的短语，让听众感到无聊。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001091-gr01-0000-0000-000000000000', 'harangue', '/həˈræŋ/', 'n.', '[{"pos": "n.", "meaning": "长篇大论，激昂的演说", "example": "The manager''s harangue about punctuality left the staff demoralized.", "translation": "经理关于守时的长篇大论让员工士气低落。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001092-gr01-0000-0000-000000000000', 'hegemony', '/hɪˈɡeməni/', 'n.', '[{"pos": "n.", "meaning": "霸权，领导权", "example": "The empire maintained its hegemony over the region for centuries.", "translation": "这个帝国几个世纪以来一直维持着对该地区的霸权。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001093-gr01-0000-0000-000000000000', 'heresy', '/ˈherəsi/', 'n.', '[{"pos": "n.", "meaning": "异端，异教", "example": "His scientific theories were considered heresy by the establishment.", "translation": "他的科学理论被当权者视为异端。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001094-gr01-0000-0000-000000000000', 'heterogeneous', '/ˌhetərəˈdʒiːniəs/', 'adj.', '[{"pos": "adj.", "meaning": "异质的，不同种类的", "example": "The committee was a heterogeneous group with diverse perspectives.", "translation": "委员会是一个由不同视角组成的异质群体。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001095-gr01-0000-0000-000000000000', 'hubris', '/ˈhjuːbrɪs/', 'n.', '[{"pos": "n.", "meaning": "傲慢，自大", "example": "His hubris led to his downfall when he ignored all advice.", "translation": "傲慢导致了他的垮台，因为他无视了所有建议。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001096-gr01-0000-0000-000000000000', 'idiosyncratic', '/ˌɪdiəsɪŋˈkrætɪk/', 'adj.', '[{"pos": "adj.", "meaning": "独特的，有特点的", "example": "Her idiosyncratic writing style set her apart from other authors.", "translation": "她独特的写作风格使她与其他作家区分开来。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001097-gr01-0000-0000-000000000000', 'ignominious', '/ˌɪɡnəˈmɪniəs/', 'adj.', '[{"pos": "adj.", "meaning": "可耻的，不光彩的", "example": "The team suffered an ignominious defeat in the championship.", "translation": "球队在锦标赛中遭受了可耻的失败。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001098-gr01-0000-0000-000000000000', 'immutable', '/ɪˈmjuːtəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "不可变的，永恒的", "example": "The laws of physics are considered immutable.", "translation": "物理定律被认为是不可变的。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001099-gr01-0000-0000-000000000000', 'imperious', '/ɪmˈpɪriəs/', 'adj.', '[{"pos": "adj.", "meaning": "专横的，傲慢的", "example": "Her imperious manner alienated many of her subordinates.", "translation": "她专横的态度疏远了许多下属。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001100-gr01-0000-0000-000000000000', 'impervious', '/ɪmˈpɜːrviəs/', 'adj.', '[{"pos": "adj.", "meaning": "不受影响的，不能渗透的", "example": "He seemed impervious to criticism from his peers.", "translation": "他似乎不受同龄人批评的影响。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001101-gr01-0000-0000-000000000000', 'implacable', '/ɪmˈplækəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "不可安抚的，无情的", "example": "She was implacable in her demand for justice.", "translation": "她在追求正义方面不可妥协。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001102-gr01-0000-0000-000000000000', 'inauspicious', '/ˌɪnɔːˈspɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "不祥的，不吉利的", "example": "The project got off to an inauspicious start with budget overruns.", "translation": "该项目以预算超支的不祥开局。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001103-gr01-0000-0000-000000000000', 'incandescent', '/ˌɪnkænˈdesənt/', 'adj.', '[{"pos": "adj.", "meaning": "白热的，光芒四射的", "example": "The incandescent light of the fireworks illuminated the night sky.", "translation": "烟花的白热光芒照亮了夜空。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001104-gr01-0000-0000-000000000000', 'incongruous', '/ɪnˈkɑːŋɡruəs/', 'adj.', '[{"pos": "adj.", "meaning": "不协调的，不一致的", "example": "The modern glass building looked incongruous next to the historic church.", "translation": "现代玻璃建筑与历史教堂并立显得不协调。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001105-gr01-0000-0000-000000000000', 'incorrigible', '/ɪnˈkɔːrɪdʒəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "无可救药的，不可救药的", "example": "He was an incorrigible optimist who never lost hope.", "translation": "他是一个无可救药的乐观主义者，从不失去希望。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001106-gr01-0000-0000-000000000000', 'indifferent', '/ɪnˈdɪfərənt/', 'adj.', '[{"pos": "adj.", "meaning": "冷漠的，不关心的", "example": "She seemed indifferent to the outcome of the election.", "translation": "她似乎对选举结果漠不关心。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001107-gr01-0000-0000-000000000000', 'indigent', '/ˈɪndɪdʒənt/', 'adj.', '[{"pos": "adj.", "meaning": "贫困的，贫穷的", "example": "The charity provided food and shelter for indigent families.", "translation": "慈善机构为贫困家庭提供食物和住所。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001108-gr01-0000-0000-000000000000', 'indolent', '/ˈɪndələnt/', 'adj.', '[{"pos": "adj.", "meaning": "懒惰的，无所事事的", "example": "His indolent lifestyle prevented him from achieving his potential.", "translation": "他懒惰的生活方式阻止了他发挥潜力。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001109-gr01-0000-0000-000000000000', 'ineffable', '/ɪˈnefəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "难以表达的，难以形容的", "example": "The beauty of the sunset was ineffable.", "translation": "日落之美难以形容。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001110-gr01-0000-0000-000000000000', 'inexorable', '/ɪˈneksərəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "不可阻挡的，无情的", "example": "The inexorable march of technology has transformed every aspect of life.", "translation": "技术不可阻挡的进步改变了生活的方方面面。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001111-gr01-0000-0000-000000000000', 'ingenuous', '/ɪnˈdʒenjuəs/', 'adj.', '[{"pos": "adj.", "meaning": "天真的，直率的", "example": "Her ingenuous questions revealed her lack of experience.", "translation": "她天真的问题暴露了她缺乏经验。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001112-gr01-0000-0000-000000000000', 'iniquitous', '/ɪˈnɪkwɪtəs/', 'adj.', '[{"pos": "adj.", "meaning": "邪恶的，不公正的", "example": "The iniquitous treatment of workers sparked nationwide protests.", "translation": "对工人的不公正待遇引发了全国性的抗议。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001113-gr01-0000-0000-000000000000', 'innocuous', '/ɪˈnɑːkjuəs/', 'adj.', '[{"pos": "adj.", "meaning": "无害的，无毒的", "example": "What seemed like an innocuous comment provoked a heated debate.", "translation": "看似无害的评论引发了一场激烈的辩论。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001114-gr01-0000-0000-000000000000', 'inscrutable', '/ɪnˈskruːtəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "神秘的，不可理解的", "example": "His inscrutable expression gave no hint of his true feelings.", "translation": "他神秘的表情没有流露出他的真实感受。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001115-gr01-0000-0000-000000000000', 'insidious', '/ɪnˈsɪdiəs/', 'adj.', '[{"pos": "adj.", "meaning": "阴险的，潜伏的", "example": "The insidious effects of misinformation eroded public trust.", "translation": "错误信息的阴险影响侵蚀了公众信任。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001116-gr01-0000-0000-000000000000', 'intransigent', '/ɪnˈtrænsɪdʒənt/', 'adj.', '[{"pos": "adj.", "meaning": "不妥协的，固执的", "example": "The intransigent negotiators refused to make any concessions.", "translation": "不妥协的谈判者拒绝做出任何让步。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001117-gr01-0000-0000-000000000000', 'inundate', '/ˈɪnʌndeɪt/', 'v.', '[{"pos": "v.", "meaning": "淹没，使应接不暇", "example": "The office was inundated with calls after the announcement.", "translation": "公告发出后，办公室被电话淹没。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001118-gr01-0000-0000-000000000000', 'inveigle', '/ɪnˈveɪɡəl/', 'v.', '[{"pos": "v.", "meaning": "诱骗，哄骗", "example": "She inveigled him into investing in her questionable scheme.", "translation": "她诱骗他投资她可疑的计划。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001119-gr01-0000-0000-000000000000', 'irascible', '/ɪˈræsəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "易怒的，暴躁的", "example": "The irascible professor was feared by his students.", "translation": "这位易怒的教授令学生们畏惧。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001120-gr01-0000-0000-000000000000', 'itinerant', '/aɪˈtɪnərənt/', 'adj.', '[{"pos": "adj.", "meaning": "流动的，巡回的", "example": "The itinerant workers moved from farm to farm following the harvest.", "translation": "流动工人随着收获季节从一个农场搬到另一个农场。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001121-gr01-0000-0000-000000000000', 'jaundiced', '/ˈdʒɔːndɪst/', 'adj.', '[{"pos": "adj.", "meaning": "偏见的，嫉妒的", "example": "His jaundiced view of the industry prevented him from seeing opportunities.", "translation": "他对行业偏见的看法使他看不到机会。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001122-gr01-0000-0000-000000000000', 'judicious', '/dʒuːˈdɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "明智的，审慎的", "example": "A judicious use of resources can improve outcomes significantly.", "translation": "明智地使用资源可以显著改善结果。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001123-gr01-0000-0000-000000000000', 'laconic', '/ləˈkɑːnɪk/', 'adj.', '[{"pos": "adj.", "meaning": "简洁的，言简意赅的", "example": "His laconic reply left much to be interpreted.", "translation": "他言简意赅的回复留有很多解释空间。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001124-gr01-0000-0000-000000000000', 'lament', '/ləˈment/', 'v.', '[{"pos": "v.", "meaning": "哀悼，悲叹", "example": "She lamented the loss of her childhood home.", "translation": "她哀悼失去了童年的家。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001125-gr01-0000-0000-000000000000', 'lassitude', '/ˈlæsɪtuːd/', 'n.', '[{"pos": "n.", "meaning": "疲倦，倦怠", "example": "A feeling of lassitude overcame her after the long journey.", "translation": "长途旅行后，一种倦怠感袭来。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001126-gr01-0000-0000-000000000000', 'libelous', '/ˈlaɪbələs/', 'adj.', '[{"pos": "adj.", "meaning": "诽谤的，中伤的", "example": "The libelous article was retracted after legal threats.", "translation": "在法律威胁后，那篇诽谤性文章被撤回。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001127-gr01-0000-0000-000000000000', 'litigious', '/lɪˈtɪdʒəs/', 'adj.', '[{"pos": "adj.", "meaning": "好诉讼的，爱争论的", "example": "The company''s litigious reputation deterred potential partners.", "translation": "公司好诉讼的声誉阻止了潜在合作伙伴。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001128-gr01-0000-0000-000000000000', 'loquacious', '/loʊˈkweɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "健谈的，话多的", "example": "The loquacious host kept the conversation flowing all evening.", "translation": "健谈的主持人让整个晚上的谈话流畅进行。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001129-gr01-0000-0000-000000000000', 'maudlin', '/ˈmɔːdlɪn/', 'adj.', '[{"pos": "adj.", "meaning": "伤感的，多愁善感的", "example": "The maudlin movie left the audience in tears.", "translation": "这部伤感的电影让观众泪流满面。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001130-gr01-0000-0000-000000000000', 'meander', '/miˈændər/', 'v.', '[{"pos": "v.", "meaning": "蜿蜒，漫步", "example": "The river meanders through the valley before reaching the sea.", "translation": "河流蜿蜒穿过山谷，最终流入大海。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001131-gr01-0000-0000-000000000000', 'mercenary', '/ˈmɜːrsəneri/', 'adj.', '[{"pos": "adj.", "meaning": "唯利是图的，雇佣的", "example": "His mercenary motives were evident in his business dealings.", "translation": "他唯利是图的动机在他的商业交易中显而易见。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001132-gr01-0000-0000-000000000000', 'mercurial', '/mɜːrˈkjʊriəl/', 'adj.', '[{"pos": "adj.", "meaning": "善变的，反复无常的", "example": "Her mercurial temperament made it difficult to predict her reactions.", "translation": "她善变的性情使人难以预测她的反应。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001133-gr01-0000-0000-000000000000', 'milieu', '/miːlˈjɜːr/', 'n.', '[{"pos": "n.", "meaning": "环境，背景", "example": "The novel accurately depicted the milieu of 19th-century Paris.", "translation": "这部小说准确地描绘了19世纪巴黎的环境。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001134-gr01-0000-0000-000000000000', 'misanthrope', '/ˈmɪsənθroʊp/', 'n.', '[{"pos": "n.", "meaning": "厌世者，愤世嫉俗的人", "example": "The misanthrope preferred the company of books to people.", "translation": "这位厌世者更喜欢书的陪伴而非人类。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001135-gr01-0000-0000-000000000000', 'mollify', '/ˈmɑːlɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "安抚，平息", "example": "She tried to mollify the angry customer with a full refund.", "translation": "她试图用全额退款来安抚愤怒的顾客。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001136-gr01-0000-0000-000000000000', 'morose', '/məˈroʊs/', 'adj.', '[{"pos": "adj.", "meaning": "忧郁的，阴沉的", "example": "He became morose after losing his job.", "translation": "失业后他变得忧郁。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001137-gr01-0000-0000-000000000000', 'munificent', '/mjuːˈnɪfɪsənt/', 'adj.', '[{"pos": "adj.", "meaning": "慷慨的，大方的", "example": "The munificent donation allowed the hospital to expand its facilities.", "translation": "慷慨的捐赠使医院得以扩展其设施。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001138-gr01-0000-0000-000000000000', 'nefarious', '/nɪˈferiəs/', 'adj.', '[{"pos": "adj.", "meaning": "邪恶的，不法的", "example": "The criminal''s nefarious scheme was eventually uncovered.", "translation": "罪犯的邪恶阴谋最终被揭穿。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001139-gr01-0000-0000-000000000000', 'neophyte', '/ˈniːəfaɪt/', 'n.', '[{"pos": "n.", "meaning": "新手，初学者", "example": "As a neophyte in the field, she had much to learn.", "translation": "作为该领域的新手，她有很多需要学习。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001140-gr01-0000-0000-000000000000', 'nihilism', '/ˈnaɪɪlɪzəm/', 'n.', '[{"pos": "n.", "meaning": "虚无主义", "example": "The philosopher''s writings explored themes of existential nihilism.", "translation": "这位哲学家的作品探讨了存在主义虚无主义的主题。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001141-gr01-0000-0000-000000000000', 'nonchalant', '/ˌnɑːnʃəˈlɑːnt/', 'adj.', '[{"pos": "adj.", "meaning": "漫不经心的，若无其事的", "example": "She remained nonchalant despite the mounting pressure.", "translation": "尽管压力不断增加，她仍然若无其事。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001142-gr01-0000-0000-000000000000', 'nostalgia', '/nɔːˈstældʒə/', 'n.', '[{"pos": "n.", "meaning": "怀旧，乡愁", "example": "The old photographs filled her with nostalgia for her childhood.", "translation": "旧照片让她充满了对童年的怀念。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001143-gr01-0000-0000-000000000000', 'obdurate', '/ˈɑːbdʒʊrət/', 'adj.', '[{"pos": "adj.", "meaning": "顽固的，执拗的", "example": "Despite all attempts at persuasion, he remained obdurate.", "translation": "尽管进行了所有说服尝试，他仍然顽固不化。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001144-gr01-0000-0000-000000000000', 'obsequious', '/əbˈsiːkwiəs/', 'adj.', '[{"pos": "adj.", "meaning": "谄媚的，奉承的", "example": "The obsequious assistant agreed with everything the boss said.", "translation": "谄媚的助手同意老板说的每一句话。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001145-gr01-0000-0000-000000000000', 'omnipotent', '/ɑːmˈnɪpətənt/', 'adj.', '[{"pos": "adj.", "meaning": "全能的，无所不能的", "example": "No leader is omnipotent, regardless of their power or authority.", "translation": "没有领导者是全能的，无论他们的权力或权威有多大。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001146-gr01-0000-0000-000000000000', 'onerous', '/ˈoʊnərəs/', 'adj.', '[{"pos": "adj.", "meaning": "繁重的，艰巨的", "example": "The onerous task of reforming the tax system fell to the new administration.", "translation": "改革税制的艰巨任务落到了新政府身上。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001147-gr01-0000-0000-000000000000', 'opulent', '/ˈɑːpjələnt/', 'adj.', '[{"pos": "adj.", "meaning": "富裕的，华丽的", "example": "The opulent ballroom was adorned with crystal chandeliers.", "translation": "华丽的宴会厅装饰着水晶吊灯。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001148-gr01-0000-0000-000000000000', 'ornate', '/ɔːrˈneɪt/', 'adj.', '[{"pos": "adj.", "meaning": "华丽的，装饰的", "example": "The ornate architecture of the cathedral took decades to complete.", "translation": "大教堂华丽的建筑花了数十年才完成。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001149-gr01-0000-0000-000000000000', 'ossify', '/ˈɑːsɪfaɪ/', 'v.', '[{"pos": "v.", "meaning": "僵化，骨化", "example": "The organization''s procedures had ossified over time.", "translation": "该组织的程序随着时间推移而僵化。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001150-gr01-0000-0000-000000000000', 'ostentatious', '/ˌɑːstenˈteɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "炫耀的，卖弄的", "example": "His ostentatious display of wealth alienated his modest friends.", "translation": "他炫耀财富的行为疏远了他谦虚的朋友们。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001151-gr01-0000-0000-000000000000', 'palatial', '/pəˈleɪʃəl/', 'adj.', '[{"pos": "adj.", "meaning": "宫殿般的，宏伟的", "example": "The palatial estate featured manicured gardens and marble floors.", "translation": "这座宫殿般的庄园拥有精心修剪的花园和大理石地板。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001152-gr01-0000-0000-000000000000', 'paragon', '/ˈpærəɡɑːn/', 'n.', '[{"pos": "n.", "meaning": "典范，榜样", "example": "She was considered a paragon of virtue in the community.", "translation": "她被视为社区美德的典范。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001153-gr01-0000-0000-000000000000', 'parsimonious', '/ˌpɑːrsɪˈmoʊniəs/', 'adj.', '[{"pos": "adj.", "meaning": "吝啬的，小气的", "example": "The parsimonious employer refused to give raises to his staff.", "translation": "吝啬的雇主拒绝给员工加薪。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001154-gr01-0000-0000-000000000000', 'pedantic', '/pɪˈdæntɪk/', 'adj.', '[{"pos": "adj.", "meaning": "学究式的，迂腐的", "example": "His pedantic approach to grammar annoyed his casual readers.", "translation": "他对语法的学究式方法惹恼了他随意的读者。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001155-gr01-0000-0000-000000000000', 'penitent', '/ˈpenɪtənt/', 'adj.', '[{"pos": "adj.", "meaning": "悔过的，忏悔的", "example": "The penitent criminal vowed never to offend again.", "translation": "悔过的罪犯发誓不再犯罪。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001156-gr01-0000-0000-000000000000', 'pensive', '/ˈpensɪv/', 'adj.', '[{"pos": "adj.", "meaning": "沉思的，忧郁的", "example": "She sat in a pensive mood, reflecting on her past decisions.", "translation": "她沉思着，反思过去的决定。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001157-gr01-0000-0000-000000000000', 'perfidious', '/pərˈfɪdiəs/', 'adj.', '[{"pos": "adj.", "meaning": "背信弃义的，不忠的", "example": "The perfidious ally betrayed them at the critical moment.", "translation": "背信弃义的盟友在关键时刻背叛了他们。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001158-gr01-0000-0000-000000000000', 'perfunctory', '/pərˈfʌŋktəri/', 'adj.', '[{"pos": "adj.", "meaning": "敷衍的，马虎的", "example": "He gave the report a perfunctory glance before signing it.", "translation": "他在签署报告前只是敷衍地看了一眼。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001159-gr01-0000-0000-000000000000', 'pernicious', '/pərˈnɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "有害的，致命的", "example": "The pernicious effects of corruption undermined public trust.", "translation": "腐败的有害影响削弱了公众信任。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001160-gr01-0000-0000-000000000000', 'perquisite', '/ˈpɜːrskwɪzɪt/', 'n.', '[{"pos": "n.", "meaning": "特权，额外津贴", "example": "The corner office was a perquisite of the CEO position.", "translation": "角落办公室是首席执行官职位的额外津贴。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001161-gr01-0000-0000-000000000000', 'pertinacious', '/ˌpɜːrtɪˈneɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "执着的，固执的", "example": "Her pertinacious pursuit of justice inspired many activists.", "translation": "她对正义的执着追求激励了许多活动家。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001162-gr01-0000-0000-000000000000', 'placate', '/ˈpleɪkeɪt/', 'v.', '[{"pos": "v.", "meaning": "安抚，平息", "example": "The company issued a public apology to placate angry customers.", "translation": "公司发布公开道歉以安抚愤怒的顾客。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001163-gr01-0000-0000-000000000000', 'platitude', '/ˈplætɪtuːd/', 'n.', '[{"pos": "n.", "meaning": "陈词滥调，老生常谈", "example": "The speech was full of platitudes that failed to inspire action.", "translation": "演讲充满了未能激发行动的陈词滥调。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001164-gr01-0000-0000-000000000000', 'polemical', '/pəˈlemɪkəl/', 'adj.', '[{"pos": "adj.", "meaning": "好争论的，论战的", "example": "His polemical essay sparked a fierce debate in academic circles.", "translation": "他论战性的论文在学术界引发了激烈的辩论。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001165-gr01-0000-0000-000000000000', 'prescient', '/ˈpreʃiənt/', 'adj.', '[{"pos": "adj.", "meaning": "有先见之明的", "example": "Her prescient warnings about the economic bubble were ignored.", "translation": "她对经济泡沫的先知性警告被忽视了。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001166-gr01-0000-0000-000000000000', 'proclivity', '/proʊˈklɪvəti/', 'n.', '[{"pos": "n.", "meaning": "倾向，嗜好", "example": "He had a proclivity for exaggeration in his storytelling.", "translation": "他在讲故事时有夸张的倾向。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001167-gr01-0000-0000-000000000000', 'prodigal', '/ˈprɑːdɪɡəl/', 'adj.', '[{"pos": "adj.", "meaning": "挥霍的，浪费的", "example": "The prodigal son eventually returned home after squandering his inheritance.", "translation": "挥霍的儿子在挥霍掉遗产后最终回到了家。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001168-gr01-0000-0000-000000000000', 'promulgate', '/ˈprɑːmʌlɡeɪt/', 'v.', '[{"pos": "v.", "meaning": "公布，颁布", "example": "The government promulgated new regulations to protect consumers.", "translation": "政府颁布了保护消费者的新法规。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001169-gr01-0000-0000-000000000000', 'propitious', '/prəˈpɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "吉利的，有利的", "example": "The propitious timing of the product launch maximized sales.", "translation": "产品发布的吉利时机最大化了销售额。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001170-gr01-0000-0000-000000000000', 'prosaic', '/proʊˈzeɪɪk/', 'adj.', '[{"pos": "adj.", "meaning": "平淡的，乏味的", "example": "The prosaic details of daily life rarely make for exciting reading.", "translation": "日常生活的平淡细节很少能成为精彩的阅读内容。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001171-gr01-0000-0000-000000000000', 'proscribe', '/proʊˈskraɪb/', 'v.', '[{"pos": "v.", "meaning": "禁止，排斥", "example": "The committee proscribed the use of certain chemicals in food production.", "translation": "委员会禁止在食品生产中使用某些化学品。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001172-gr01-0000-0000-000000000000', 'provenance', '/ˈprɑːvənəns/', 'n.', '[{"pos": "n.", "meaning": "来源，出处", "example": "The provenance of the painting was traced back to a 17th-century Italian studio.", "translation": "这幅画的来源可追溯到17世纪的一间意大利工作室。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001173-gr01-0000-0000-000000000000', 'puerile', '/ˈpjʊərɪl/', 'adj.', '[{"pos": "adj.", "meaning": "幼稚的，不成熟的", "example": "His puerile jokes were inappropriate for the formal occasion.", "translation": "他幼稚的笑话不适合正式场合。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001174-gr01-0000-0000-000000000000', 'pugnacious', '/pʌɡˈneɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "好斗的，爱争吵的", "example": "The pugnacious politician was always ready for a debate.", "translation": "这位好斗的政治家总是准备辩论。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001175-gr01-0000-0000-000000000000', 'quagmire', '/ˈkwæɡmaɪər/', 'n.', '[{"pos": "n.", "meaning": "困境，泥潭", "example": "The project became a quagmire of bureaucratic red tape.", "translation": "该项目变成了官僚主义繁文缛节的泥潭。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001176-gr01-0000-0000-000000000000', 'querulous', '/ˈkwerələs/', 'adj.', '[{"pos": "adj.", "meaning": "爱抱怨的，易怒的", "example": "The querulous customer complained about everything.", "translation": "爱抱怨的顾客对一切都感到不满。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001177-gr01-0000-0000-000000000000', 'quixotic', '/kwɪkˈsɑːtɪk/', 'adj.', '[{"pos": "adj.", "meaning": "不切实际的，空想的", "example": "His quixotic quest for absolute perfection was doomed to fail.", "translation": "他对绝对完美的不切实际追求注定要失败。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001178-gr01-0000-0000-000000000000', 'quotidian', '/kwoʊˈtɪdiən/', 'adj.', '[{"pos": "adj.", "meaning": "日常的，平凡的", "example": "She longed for adventure to escape her quotidian existence.", "translation": "她渴望冒险来逃离平凡的生活。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001179-gr01-0000-0000-000000000000', 'rancorous', '/ˈræŋkərəs/', 'adj.', '[{"pos": "adj.", "meaning": "充满怨恨的，刻毒的", "example": "The rancorous divorce proceedings dragged on for months.", "translation": "充满怨恨的离婚诉讼持续了数月。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001180-gr01-0000-0000-000000000000', 'rapacious', '/rəˈpeɪʃəs/', 'adj.', '[{"pos": "adj.", "meaning": "贪婪的，掠夺性的", "example": "The rapacious corporation exploited natural resources without regard for the environment.", "translation": "贪婪的公司在不顾环境的情况下掠夺自然资源。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001181-gr01-0000-0000-000000000000', 'rebuff', '/rɪˈbʌf/', 'n.', '[{"pos": "n.", "meaning": "断然拒绝，挫败", "example": "The proposal met with a firm rebuff from the committee.", "translation": "该提案遭到了委员会的断然拒绝。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001182-gr01-0000-0000-000000000000', 'recluse', '/rɪˈkluːs/', 'n.', '[{"pos": "n.", "meaning": "隐士，隐居者", "example": "The famous author became a recluse in her later years.", "translation": "这位著名作家晚年成了一位隐士。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001183-gr01-0000-0000-000000000000', 'redoubtable', '/rɪˈdaʊtəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "令人敬畏的，可怕的", "example": "She was a redoubtable opponent in any debate.", "translation": "她在任何辩论中都是令人敬畏的对手。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001184-gr01-0000-0000-000000000000', 'remorseful', '/rɪˈmɔːrsfəl/', 'adj.', '[{"pos": "adj.", "meaning": "悔恨的，懊悔的", "example": "The remorseful thief returned the stolen goods to the owner.", "translation": "悔恨的小偷将偷来的物品归还给主人。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001185-gr01-0000-0000-000000000000', 'remonstrate', '/ˈremənstreɪt/', 'v.', '[{"pos": "v.", "meaning": "抗议，告诫", "example": "She remonstrated with him about his reckless behavior.", "translation": "她就他的鲁莽行为对他进行告诫。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001186-gr01-0000-0000-000000000000', 'renounce', '/rɪˈnaʊns/', 'v.', '[{"pos": "v.", "meaning": "放弃，声明断绝关系", "example": "He renounced his citizenship to become a citizen of another country.", "translation": "他放弃了公民身份，成为另一个国家的公民。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001187-gr01-0000-0000-000000000000', 'replete', '/rɪˈpliːt/', 'adj.', '[{"pos": "adj.", "meaning": "充满的，饱食的", "example": "The book was replete with detailed illustrations.", "translation": "这本书充满了详细的插图。"}]'::jsonb, 'GRE', true)
;
INSERT INTO words (id, spelling, phonetic, pos, definitions, level, is_builtin) VALUES
  ('b0001188-gr01-0000-0000-000000000000', 'reprehensible', '/ˌreprɪˈhensəbəl/', 'adj.', '[{"pos": "adj.", "meaning": "应受谴责的，可耻的", "example": "The fraud was reprehensible and had devastating consequences.", "translation": "欺诈行为应受谴责，造成了毁灭性的后果。"}]'::jsonb, 'GRE', true)
;


INSERT INTO word_book_items (book_id, word_id, sort_order) VALUES
  ('a0000000-0000-0000-0000-000000000001', 'b0000000-ce14-0000-0000-000000000000', 0),
  ('a0000000-0000-0000-0000-000000000001', 'b0000001-ce14-0000-0000-000000000000', 1),
  ('a0000000-0000-0000-0000-000000000001', 'b0000002-ce14-0000-0000-000000000000', 2),
  ('a0000000-0000-0000-0000-000000000001', 'b0000003-ce14-0000-0000-000000000000', 3),
  ('a0000000-0000-0000-0000-000000000001', 'b0000004-ce14-0000-0000-000000000000', 4),
  ('a0000000-0000-0000-0000-000000000001', 'b0000005-ce14-0000-0000-000000000000', 5),
  ('a0000000-0000-0000-0000-000000000001', 'b0000006-ce14-0000-0000-000000000000', 6),
  ('a0000000-0000-0000-0000-000000000001', 'b0000007-ce14-0000-0000-000000000000', 7),
  ('a0000000-0000-0000-0000-000000000001', 'b0000008-ce14-0000-0000-000000000000', 8),
  ('a0000000-0000-0000-0000-000000000001', 'b0000009-ce14-0000-0000-000000000000', 9),
  ('a0000000-0000-0000-0000-000000000001', 'b0000010-ce14-0000-0000-000000000000', 10),
  ('a0000000-0000-0000-0000-000000000001', 'b0000011-ce14-0000-0000-000000000000', 11),
  ('a0000000-0000-0000-0000-000000000001', 'b0000012-ce14-0000-0000-000000000000', 12),
  ('a0000000-0000-0000-0000-000000000001', 'b0000013-ce14-0000-0000-000000000000', 13),
  ('a0000000-0000-0000-0000-000000000001', 'b0000014-ce14-0000-0000-000000000000', 14),
  ('a0000000-0000-0000-0000-000000000001', 'b0000015-ce14-0000-0000-000000000000', 15),
  ('a0000000-0000-0000-0000-000000000001', 'b0000016-ce14-0000-0000-000000000000', 16),
  ('a0000000-0000-0000-0000-000000000001', 'b0000017-ce14-0000-0000-000000000000', 17),
  ('a0000000-0000-0000-0000-000000000001', 'b0000018-ce14-0000-0000-000000000000', 18),
  ('a0000000-0000-0000-0000-000000000001', 'b0000019-ce14-0000-0000-000000000000', 19),
  ('a0000000-0000-0000-0000-000000000001', 'b0000020-ce14-0000-0000-000000000000', 20),
  ('a0000000-0000-0000-0000-000000000001', 'b0000021-ce14-0000-0000-000000000000', 21),
  ('a0000000-0000-0000-0000-000000000001', 'b0000022-ce14-0000-0000-000000000000', 22),
  ('a0000000-0000-0000-0000-000000000001', 'b0000023-ce14-0000-0000-000000000000', 23),
  ('a0000000-0000-0000-0000-000000000001', 'b0000024-ce14-0000-0000-000000000000', 24),
  ('a0000000-0000-0000-0000-000000000001', 'b0000025-ce14-0000-0000-000000000000', 25),
  ('a0000000-0000-0000-0000-000000000001', 'b0000026-ce14-0000-0000-000000000000', 26),
  ('a0000000-0000-0000-0000-000000000001', 'b0000027-ce14-0000-0000-000000000000', 27),
  ('a0000000-0000-0000-0000-000000000001', 'b0000028-ce14-0000-0000-000000000000', 28),
  ('a0000000-0000-0000-0000-000000000001', 'b0000029-ce14-0000-0000-000000000000', 29),
  ('a0000000-0000-0000-0000-000000000001', 'b0000030-ce14-0000-0000-000000000000', 30),
  ('a0000000-0000-0000-0000-000000000001', 'b0000031-ce14-0000-0000-000000000000', 31),
  ('a0000000-0000-0000-0000-000000000001', 'b0000032-ce14-0000-0000-000000000000', 32),
  ('a0000000-0000-0000-0000-000000000001', 'b0000033-ce14-0000-0000-000000000000', 33),
  ('a0000000-0000-0000-0000-000000000001', 'b0000034-ce14-0000-0000-000000000000', 34),
  ('a0000000-0000-0000-0000-000000000001', 'b0000035-ce14-0000-0000-000000000000', 35),
  ('a0000000-0000-0000-0000-000000000001', 'b0000036-ce14-0000-0000-000000000000', 36),
  ('a0000000-0000-0000-0000-000000000001', 'b0000037-ce14-0000-0000-000000000000', 37),
  ('a0000000-0000-0000-0000-000000000001', 'b0000038-ce14-0000-0000-000000000000', 38),
  ('a0000000-0000-0000-0000-000000000001', 'b0000039-ce14-0000-0000-000000000000', 39),
  ('a0000000-0000-0000-0000-000000000001', 'b0000040-ce14-0000-0000-000000000000', 40),
  ('a0000000-0000-0000-0000-000000000001', 'b0000041-ce14-0000-0000-000000000000', 41),
  ('a0000000-0000-0000-0000-000000000001', 'b0000042-ce14-0000-0000-000000000000', 42),
  ('a0000000-0000-0000-0000-000000000001', 'b0000043-ce14-0000-0000-000000000000', 43),
  ('a0000000-0000-0000-0000-000000000001', 'b0000044-ce14-0000-0000-000000000000', 44),
  ('a0000000-0000-0000-0000-000000000001', 'b0000045-ce14-0000-0000-000000000000', 45),
  ('a0000000-0000-0000-0000-000000000001', 'b0000046-ce14-0000-0000-000000000000', 46),
  ('a0000000-0000-0000-0000-000000000001', 'b0000047-ce14-0000-0000-000000000000', 47),
  ('a0000000-0000-0000-0000-000000000001', 'b0000048-ce14-0000-0000-000000000000', 48),
  ('a0000000-0000-0000-0000-000000000001', 'b0000049-ce14-0000-0000-000000000000', 49),
  ('a0000000-0000-0000-0000-000000000001', 'b0000050-ce14-0000-0000-000000000000', 50),
  ('a0000000-0000-0000-0000-000000000001', 'b0000051-ce14-0000-0000-000000000000', 51),
  ('a0000000-0000-0000-0000-000000000001', 'b0000052-ce14-0000-0000-000000000000', 52),
  ('a0000000-0000-0000-0000-000000000001', 'b0000053-ce14-0000-0000-000000000000', 53),
  ('a0000000-0000-0000-0000-000000000001', 'b0000054-ce14-0000-0000-000000000000', 54),
  ('a0000000-0000-0000-0000-000000000001', 'b0000055-ce14-0000-0000-000000000000', 55),
  ('a0000000-0000-0000-0000-000000000001', 'b0000056-ce14-0000-0000-000000000000', 56),
  ('a0000000-0000-0000-0000-000000000001', 'b0000057-ce14-0000-0000-000000000000', 57),
  ('a0000000-0000-0000-0000-000000000001', 'b0000058-ce14-0000-0000-000000000000', 58),
  ('a0000000-0000-0000-0000-000000000001', 'b0000059-ce14-0000-0000-000000000000', 59),
  ('a0000000-0000-0000-0000-000000000001', 'b0000060-ce14-0000-0000-000000000000', 60),
  ('a0000000-0000-0000-0000-000000000001', 'b0000061-ce14-0000-0000-000000000000', 61),
  ('a0000000-0000-0000-0000-000000000001', 'b0000062-ce14-0000-0000-000000000000', 62),
  ('a0000000-0000-0000-0000-000000000001', 'b0000063-ce14-0000-0000-000000000000', 63),
  ('a0000000-0000-0000-0000-000000000001', 'b0000064-ce14-0000-0000-000000000000', 64),
  ('a0000000-0000-0000-0000-000000000001', 'b0000065-ce14-0000-0000-000000000000', 65),
  ('a0000000-0000-0000-0000-000000000001', 'b0000066-ce14-0000-0000-000000000000', 66),
  ('a0000000-0000-0000-0000-000000000001', 'b0000067-ce14-0000-0000-000000000000', 67),
  ('a0000000-0000-0000-0000-000000000001', 'b0000068-ce14-0000-0000-000000000000', 68),
  ('a0000000-0000-0000-0000-000000000001', 'b0000069-ce14-0000-0000-000000000000', 69),
  ('a0000000-0000-0000-0000-000000000001', 'b0000070-ce14-0000-0000-000000000000', 70),
  ('a0000000-0000-0000-0000-000000000001', 'b0000071-ce14-0000-0000-000000000000', 71),
  ('a0000000-0000-0000-0000-000000000001', 'b0000072-ce14-0000-0000-000000000000', 72),
  ('a0000000-0000-0000-0000-000000000001', 'b0000073-ce14-0000-0000-000000000000', 73),
  ('a0000000-0000-0000-0000-000000000001', 'b0000074-ce14-0000-0000-000000000000', 74),
  ('a0000000-0000-0000-0000-000000000001', 'b0000075-ce14-0000-0000-000000000000', 75),
  ('a0000000-0000-0000-0000-000000000001', 'b0000076-ce14-0000-0000-000000000000', 76),
  ('a0000000-0000-0000-0000-000000000001', 'b0000077-ce14-0000-0000-000000000000', 77),
  ('a0000000-0000-0000-0000-000000000001', 'b0000078-ce14-0000-0000-000000000000', 78),
  ('a0000000-0000-0000-0000-000000000001', 'b0000079-ce14-0000-0000-000000000000', 79),
  ('a0000000-0000-0000-0000-000000000001', 'b0000080-ce14-0000-0000-000000000000', 80),
  ('a0000000-0000-0000-0000-000000000001', 'b0000081-ce14-0000-0000-000000000000', 81),
  ('a0000000-0000-0000-0000-000000000001', 'b0000082-ce14-0000-0000-000000000000', 82),
  ('a0000000-0000-0000-0000-000000000001', 'b0000083-ce14-0000-0000-000000000000', 83),
  ('a0000000-0000-0000-0000-000000000001', 'b0000084-ce14-0000-0000-000000000000', 84),
  ('a0000000-0000-0000-0000-000000000001', 'b0000085-ce14-0000-0000-000000000000', 85),
  ('a0000000-0000-0000-0000-000000000001', 'b0000086-ce14-0000-0000-000000000000', 86),
  ('a0000000-0000-0000-0000-000000000001', 'b0000087-ce14-0000-0000-000000000000', 87),
  ('a0000000-0000-0000-0000-000000000001', 'b0000088-ce14-0000-0000-000000000000', 88),
  ('a0000000-0000-0000-0000-000000000001', 'b0000089-ce14-0000-0000-000000000000', 89),
  ('a0000000-0000-0000-0000-000000000001', 'b0000090-ce14-0000-0000-000000000000', 90),
  ('a0000000-0000-0000-0000-000000000001', 'b0000091-ce14-0000-0000-000000000000', 91),
  ('a0000000-0000-0000-0000-000000000001', 'b0000092-ce14-0000-0000-000000000000', 92),
  ('a0000000-0000-0000-0000-000000000001', 'b0000093-ce14-0000-0000-000000000000', 93),
  ('a0000000-0000-0000-0000-000000000001', 'b0000094-ce14-0000-0000-000000000000', 94),
  ('a0000000-0000-0000-0000-000000000001', 'b0000095-ce14-0000-0000-000000000000', 95),
  ('a0000000-0000-0000-0000-000000000001', 'b0000096-ce14-0000-0000-000000000000', 96),
  ('a0000000-0000-0000-0000-000000000001', 'b0000097-ce14-0000-0000-000000000000', 97),
  ('a0000000-0000-0000-0000-000000000001', 'b0000098-ce14-0000-0000-000000000000', 98),
  ('a0000000-0000-0000-0000-000000000001', 'b0000099-ce14-0000-0000-000000000000', 99),
  ('a0000000-0000-0000-0000-000000000001', 'b0000100-ce14-0000-0000-000000000000', 100),
  ('a0000000-0000-0000-0000-000000000001', 'b0000101-ce14-0000-0000-000000000000', 101),
  ('a0000000-0000-0000-0000-000000000001', 'b0000102-ce14-0000-0000-000000000000', 102),
  ('a0000000-0000-0000-0000-000000000001', 'b0000103-ce14-0000-0000-000000000000', 103),
  ('a0000000-0000-0000-0000-000000000001', 'b0000104-ce14-0000-0000-000000000000', 104),
  ('a0000000-0000-0000-0000-000000000001', 'b0000105-ce14-0000-0000-000000000000', 105),
  ('a0000000-0000-0000-0000-000000000001', 'b0000106-ce14-0000-0000-000000000000', 106),
  ('a0000000-0000-0000-0000-000000000001', 'b0000107-ce14-0000-0000-000000000000', 107),
  ('a0000000-0000-0000-0000-000000000001', 'b0000108-ce14-0000-0000-000000000000', 108),
  ('a0000000-0000-0000-0000-000000000001', 'b0000109-ce14-0000-0000-000000000000', 109),
  ('a0000000-0000-0000-0000-000000000001', 'b0000110-ce14-0000-0000-000000000000', 110),
  ('a0000000-0000-0000-0000-000000000001', 'b0000111-ce14-0000-0000-000000000000', 111),
  ('a0000000-0000-0000-0000-000000000001', 'b0000112-ce14-0000-0000-000000000000', 112),
  ('a0000000-0000-0000-0000-000000000001', 'b0000113-ce14-0000-0000-000000000000', 113),
  ('a0000000-0000-0000-0000-000000000001', 'b0000114-ce14-0000-0000-000000000000', 114),
  ('a0000000-0000-0000-0000-000000000001', 'b0000115-ce14-0000-0000-000000000000', 115),
  ('a0000000-0000-0000-0000-000000000001', 'b0000116-ce14-0000-0000-000000000000', 116),
  ('a0000000-0000-0000-0000-000000000001', 'b0000117-ce14-0000-0000-000000000000', 117),
  ('a0000000-0000-0000-0000-000000000001', 'b0000118-ce14-0000-0000-000000000000', 118),
  ('a0000000-0000-0000-0000-000000000001', 'b0000119-ce14-0000-0000-000000000000', 119),
  ('a0000000-0000-0000-0000-000000000001', 'b0000120-ce14-0000-0000-000000000000', 120),
  ('a0000000-0000-0000-0000-000000000001', 'b0000121-ce14-0000-0000-000000000000', 121),
  ('a0000000-0000-0000-0000-000000000001', 'b0000122-ce14-0000-0000-000000000000', 122),
  ('a0000000-0000-0000-0000-000000000001', 'b0000123-ce14-0000-0000-000000000000', 123),
  ('a0000000-0000-0000-0000-000000000001', 'b0000124-ce14-0000-0000-000000000000', 124),
  ('a0000000-0000-0000-0000-000000000001', 'b0000125-ce14-0000-0000-000000000000', 125),
  ('a0000000-0000-0000-0000-000000000001', 'b0000126-ce14-0000-0000-000000000000', 126),
  ('a0000000-0000-0000-0000-000000000001', 'b0000127-ce14-0000-0000-000000000000', 127),
  ('a0000000-0000-0000-0000-000000000001', 'b0000128-ce14-0000-0000-000000000000', 128),
  ('a0000000-0000-0000-0000-000000000001', 'b0000129-ce14-0000-0000-000000000000', 129),
  ('a0000000-0000-0000-0000-000000000001', 'b0000130-ce14-0000-0000-000000000000', 130),
  ('a0000000-0000-0000-0000-000000000001', 'b0000131-ce14-0000-0000-000000000000', 131),
  ('a0000000-0000-0000-0000-000000000001', 'b0000132-ce14-0000-0000-000000000000', 132),
  ('a0000000-0000-0000-0000-000000000001', 'b0000133-ce14-0000-0000-000000000000', 133),
  ('a0000000-0000-0000-0000-000000000001', 'b0000134-ce14-0000-0000-000000000000', 134),
  ('a0000000-0000-0000-0000-000000000001', 'b0000135-ce14-0000-0000-000000000000', 135),
  ('a0000000-0000-0000-0000-000000000001', 'b0000136-ce14-0000-0000-000000000000', 136),
  ('a0000000-0000-0000-0000-000000000001', 'b0000137-ce14-0000-0000-000000000000', 137),
  ('a0000000-0000-0000-0000-000000000001', 'b0000138-ce14-0000-0000-000000000000', 138),
  ('a0000000-0000-0000-0000-000000000001', 'b0000139-ce14-0000-0000-000000000000', 139),
  ('a0000000-0000-0000-0000-000000000001', 'b0000140-ce14-0000-0000-000000000000', 140),
  ('a0000000-0000-0000-0000-000000000001', 'b0000141-ce14-0000-0000-000000000000', 141),
  ('a0000000-0000-0000-0000-000000000001', 'b0000142-ce14-0000-0000-000000000000', 142),
  ('a0000000-0000-0000-0000-000000000001', 'b0000143-ce14-0000-0000-000000000000', 143),
  ('a0000000-0000-0000-0000-000000000001', 'b0000144-ce14-0000-0000-000000000000', 144),
  ('a0000000-0000-0000-0000-000000000001', 'b0000145-ce14-0000-0000-000000000000', 145),
  ('a0000000-0000-0000-0000-000000000001', 'b0000146-ce14-0000-0000-000000000000', 146),
  ('a0000000-0000-0000-0000-000000000001', 'b0000147-ce14-0000-0000-000000000000', 147),
  ('a0000000-0000-0000-0000-000000000001', 'b0000148-ce14-0000-0000-000000000000', 148),
  ('a0000000-0000-0000-0000-000000000001', 'b0000149-ce14-0000-0000-000000000000', 149),
  ('a0000000-0000-0000-0000-000000000001', 'b0000150-ce14-0000-0000-000000000000', 150),
  ('a0000000-0000-0000-0000-000000000001', 'b0000151-ce14-0000-0000-000000000000', 151),
  ('a0000000-0000-0000-0000-000000000001', 'b0000152-ce14-0000-0000-000000000000', 152),
  ('a0000000-0000-0000-0000-000000000001', 'b0000153-ce14-0000-0000-000000000000', 153),
  ('a0000000-0000-0000-0000-000000000001', 'b0000154-ce14-0000-0000-000000000000', 154),
  ('a0000000-0000-0000-0000-000000000001', 'b0000155-ce14-0000-0000-000000000000', 155),
  ('a0000000-0000-0000-0000-000000000001', 'b0000156-ce14-0000-0000-000000000000', 156),
  ('a0000000-0000-0000-0000-000000000001', 'b0000157-ce14-0000-0000-000000000000', 157),
  ('a0000000-0000-0000-0000-000000000001', 'b0000158-ce14-0000-0000-000000000000', 158),
  ('a0000000-0000-0000-0000-000000000001', 'b0000159-ce14-0000-0000-000000000000', 159),
  ('a0000000-0000-0000-0000-000000000001', 'b0000160-ce14-0000-0000-000000000000', 160),
  ('a0000000-0000-0000-0000-000000000001', 'b0000161-ce14-0000-0000-000000000000', 161),
  ('a0000000-0000-0000-0000-000000000001', 'b0000162-ce14-0000-0000-000000000000', 162),
  ('a0000000-0000-0000-0000-000000000001', 'b0000163-ce14-0000-0000-000000000000', 163),
  ('a0000000-0000-0000-0000-000000000001', 'b0000164-ce14-0000-0000-000000000000', 164),
  ('a0000000-0000-0000-0000-000000000001', 'b0000165-ce14-0000-0000-000000000000', 165),
  ('a0000000-0000-0000-0000-000000000001', 'b0000166-ce14-0000-0000-000000000000', 166),
  ('a0000000-0000-0000-0000-000000000001', 'b0000167-ce14-0000-0000-000000000000', 167),
  ('a0000000-0000-0000-0000-000000000001', 'b0000168-ce14-0000-0000-000000000000', 168),
  ('a0000000-0000-0000-0000-000000000001', 'b0000169-ce14-0000-0000-000000000000', 169),
  ('a0000000-0000-0000-0000-000000000001', 'b0000170-ce14-0000-0000-000000000000', 170),
  ('a0000000-0000-0000-0000-000000000001', 'b0000171-ce14-0000-0000-000000000000', 171),
  ('a0000000-0000-0000-0000-000000000001', 'b0000172-ce14-0000-0000-000000000000', 172),
  ('a0000000-0000-0000-0000-000000000001', 'b0000173-ce14-0000-0000-000000000000', 173),
  ('a0000000-0000-0000-0000-000000000001', 'b0000174-ce14-0000-0000-000000000000', 174),
  ('a0000000-0000-0000-0000-000000000001', 'b0000175-ce14-0000-0000-000000000000', 175),
  ('a0000000-0000-0000-0000-000000000001', 'b0000176-ce14-0000-0000-000000000000', 176),
  ('a0000000-0000-0000-0000-000000000001', 'b0000177-ce14-0000-0000-000000000000', 177),
  ('a0000000-0000-0000-0000-000000000001', 'b0000178-ce14-0000-0000-000000000000', 178),
  ('a0000000-0000-0000-0000-000000000001', 'b0000179-ce14-0000-0000-000000000000', 179),
  ('a0000000-0000-0000-0000-000000000001', 'b0000180-ce14-0000-0000-000000000000', 180),
  ('a0000000-0000-0000-0000-000000000001', 'b0000181-ce14-0000-0000-000000000000', 181),
  ('a0000000-0000-0000-0000-000000000001', 'b0000182-ce14-0000-0000-000000000000', 182),
  ('a0000000-0000-0000-0000-000000000001', 'b0000183-ce14-0000-0000-000000000000', 183),
  ('a0000000-0000-0000-0000-000000000001', 'b0000184-ce14-0000-0000-000000000000', 184),
  ('a0000000-0000-0000-0000-000000000001', 'b0000185-ce14-0000-0000-000000000000', 185),
  ('a0000000-0000-0000-0000-000000000001', 'b0000186-ce14-0000-0000-000000000000', 186),
  ('a0000000-0000-0000-0000-000000000001', 'b0000187-ce14-0000-0000-000000000000', 187),
  ('a0000000-0000-0000-0000-000000000001', 'b0000188-ce14-0000-0000-000000000000', 188),
  ('a0000000-0000-0000-0000-000000000001', 'b0000189-ce14-0000-0000-000000000000', 189),
  ('a0000000-0000-0000-0000-000000000001', 'b0000190-ce14-0000-0000-000000000000', 190),
  ('a0000000-0000-0000-0000-000000000001', 'b0000191-ce14-0000-0000-000000000000', 191),
  ('a0000000-0000-0000-0000-000000000001', 'b0000192-ce14-0000-0000-000000000000', 192),
  ('a0000000-0000-0000-0000-000000000001', 'b0000193-ce14-0000-0000-000000000000', 193),
  ('a0000000-0000-0000-0000-000000000001', 'b0000194-ce14-0000-0000-000000000000', 194),
  ('a0000000-0000-0000-0000-000000000001', 'b0000195-ce14-0000-0000-000000000000', 195),
  ('a0000000-0000-0000-0000-000000000001', 'b0000196-ce14-0000-0000-000000000000', 196),
  ('a0000000-0000-0000-0000-000000000001', 'b0000197-ce14-0000-0000-000000000000', 197),
  ('a0000000-0000-0000-0000-000000000001', 'b0000198-ce14-0000-0000-000000000000', 198),
  ('a0000000-0000-0000-0000-000000000001', 'b0000199-ce14-0000-0000-000000000000', 199),
  ('a0000000-0000-0000-0000-000000000001', 'b0000200-ce14-0000-0000-000000000000', 200),
  ('a0000000-0000-0000-0000-000000000001', 'b0000201-ce14-0000-0000-000000000000', 201),
  ('a0000000-0000-0000-0000-000000000001', 'b0000202-ce14-0000-0000-000000000000', 202),
  ('a0000000-0000-0000-0000-000000000001', 'b0000203-ce14-0000-0000-000000000000', 203),
  ('a0000000-0000-0000-0000-000000000001', 'b0000204-ce14-0000-0000-000000000000', 204),
  ('a0000000-0000-0000-0000-000000000001', 'b0000205-ce14-0000-0000-000000000000', 205),
  ('a0000000-0000-0000-0000-000000000001', 'b0000206-ce14-0000-0000-000000000000', 206),
  ('a0000000-0000-0000-0000-000000000001', 'b0000207-ce14-0000-0000-000000000000', 207),
  ('a0000000-0000-0000-0000-000000000001', 'b0000208-ce14-0000-0000-000000000000', 208),
  ('a0000000-0000-0000-0000-000000000001', 'b0000209-ce14-0000-0000-000000000000', 209),
  ('a0000000-0000-0000-0000-000000000001', 'b0000210-ce14-0000-0000-000000000000', 210),
  ('a0000000-0000-0000-0000-000000000001', 'b0000211-ce14-0000-0000-000000000000', 211),
  ('a0000000-0000-0000-0000-000000000001', 'b0000212-ce14-0000-0000-000000000000', 212),
  ('a0000000-0000-0000-0000-000000000001', 'b0000213-ce14-0000-0000-000000000000', 213),
  ('a0000000-0000-0000-0000-000000000001', 'b0000214-ce14-0000-0000-000000000000', 214),
  ('a0000000-0000-0000-0000-000000000001', 'b0000215-ce14-0000-0000-000000000000', 215),
  ('a0000000-0000-0000-0000-000000000001', 'b0000216-ce14-0000-0000-000000000000', 216),
  ('a0000000-0000-0000-0000-000000000001', 'b0000217-ce14-0000-0000-000000000000', 217),
  ('a0000000-0000-0000-0000-000000000001', 'b0000218-ce14-0000-0000-000000000000', 218),
  ('a0000000-0000-0000-0000-000000000001', 'b0000219-ce14-0000-0000-000000000000', 219),
  ('a0000000-0000-0000-0000-000000000001', 'b0000220-ce14-0000-0000-000000000000', 220),
  ('a0000000-0000-0000-0000-000000000001', 'b0000221-ce14-0000-0000-000000000000', 221),
  ('a0000000-0000-0000-0000-000000000001', 'b0000222-ce14-0000-0000-000000000000', 222),
  ('a0000000-0000-0000-0000-000000000001', 'b0000223-ce14-0000-0000-000000000000', 223),
  ('a0000000-0000-0000-0000-000000000001', 'b0000224-ce14-0000-0000-000000000000', 224),
  ('a0000000-0000-0000-0000-000000000001', 'b0000225-ce14-0000-0000-000000000000', 225),
  ('a0000000-0000-0000-0000-000000000001', 'b0000226-ce14-0000-0000-000000000000', 226),
  ('a0000000-0000-0000-0000-000000000001', 'b0000227-ce14-0000-0000-000000000000', 227),
  ('a0000000-0000-0000-0000-000000000001', 'b0000228-ce14-0000-0000-000000000000', 228),
  ('a0000000-0000-0000-0000-000000000001', 'b0000229-ce14-0000-0000-000000000000', 229),
  ('a0000000-0000-0000-0000-000000000001', 'b0000230-ce14-0000-0000-000000000000', 230),
  ('a0000000-0000-0000-0000-000000000001', 'b0000231-ce14-0000-0000-000000000000', 231),
  ('a0000000-0000-0000-0000-000000000001', 'b0000232-ce14-0000-0000-000000000000', 232),
  ('a0000000-0000-0000-0000-000000000001', 'b0000233-ce14-0000-0000-000000000000', 233),
  ('a0000000-0000-0000-0000-000000000001', 'b0000234-ce14-0000-0000-000000000000', 234),
  ('a0000000-0000-0000-0000-000000000001', 'b0000235-ce14-0000-0000-000000000000', 235),
  ('a0000000-0000-0000-0000-000000000001', 'b0000236-ce14-0000-0000-000000000000', 236),
  ('a0000000-0000-0000-0000-000000000001', 'b0000237-ce14-0000-0000-000000000000', 237),
  ('a0000000-0000-0000-0000-000000000001', 'b0000238-ce14-0000-0000-000000000000', 238),
  ('a0000000-0000-0000-0000-000000000001', 'b0000239-ce14-0000-0000-000000000000', 239),
  ('a0000000-0000-0000-0000-000000000001', 'b0000240-ce14-0000-0000-000000000000', 240),
  ('a0000000-0000-0000-0000-000000000001', 'b0000241-ce14-0000-0000-000000000000', 241),
  ('a0000000-0000-0000-0000-000000000001', 'b0000242-ce14-0000-0000-000000000000', 242),
  ('a0000000-0000-0000-0000-000000000001', 'b0000243-ce14-0000-0000-000000000000', 243),
  ('a0000000-0000-0000-0000-000000000001', 'b0000244-ce14-0000-0000-000000000000', 244),
  ('a0000000-0000-0000-0000-000000000001', 'b0000245-ce14-0000-0000-000000000000', 245),
  ('a0000000-0000-0000-0000-000000000001', 'b0000246-ce14-0000-0000-000000000000', 246),
  ('a0000000-0000-0000-0000-000000000001', 'b0000247-ce14-0000-0000-000000000000', 247),
  ('a0000000-0000-0000-0000-000000000001', 'b0000248-ce14-0000-0000-000000000000', 248),
  ('a0000000-0000-0000-0000-000000000001', 'b0000249-ce14-0000-0000-000000000000', 249),
  ('a0000000-0000-0000-0000-000000000001', 'b0000250-ce14-0000-0000-000000000000', 250),
  ('a0000000-0000-0000-0000-000000000001', 'b0000251-ce14-0000-0000-000000000000', 251),
  ('a0000000-0000-0000-0000-000000000001', 'b0000252-ce14-0000-0000-000000000000', 252),
  ('a0000000-0000-0000-0000-000000000001', 'b0000253-ce14-0000-0000-000000000000', 253),
  ('a0000000-0000-0000-0000-000000000001', 'b0000254-ce14-0000-0000-000000000000', 254),
  ('a0000000-0000-0000-0000-000000000001', 'b0000255-ce14-0000-0000-000000000000', 255),
  ('a0000000-0000-0000-0000-000000000001', 'b0000256-ce14-0000-0000-000000000000', 256),
  ('a0000000-0000-0000-0000-000000000001', 'b0000257-ce14-0000-0000-000000000000', 257),
  ('a0000000-0000-0000-0000-000000000001', 'b0000258-ce14-0000-0000-000000000000', 258),
  ('a0000000-0000-0000-0000-000000000001', 'b0000259-ce14-0000-0000-000000000000', 259),
  ('a0000000-0000-0000-0000-000000000001', 'b0000260-ce14-0000-0000-000000000000', 260),
  ('a0000000-0000-0000-0000-000000000001', 'b0000261-ce14-0000-0000-000000000000', 261),
  ('a0000000-0000-0000-0000-000000000001', 'b0000262-ce14-0000-0000-000000000000', 262),
  ('a0000000-0000-0000-0000-000000000001', 'b0000263-ce14-0000-0000-000000000000', 263),
  ('a0000000-0000-0000-0000-000000000001', 'b0000264-ce14-0000-0000-000000000000', 264),
  ('a0000000-0000-0000-0000-000000000001', 'b0000265-ce14-0000-0000-000000000000', 265),
  ('a0000000-0000-0000-0000-000000000001', 'b0000266-ce14-0000-0000-000000000000', 266),
  ('a0000000-0000-0000-0000-000000000001', 'b0000267-ce14-0000-0000-000000000000', 267),
  ('a0000000-0000-0000-0000-000000000001', 'b0000268-ce14-0000-0000-000000000000', 268),
  ('a0000000-0000-0000-0000-000000000001', 'b0000269-ce14-0000-0000-000000000000', 269),
  ('a0000000-0000-0000-0000-000000000001', 'b0000270-ce14-0000-0000-000000000000', 270),
  ('a0000000-0000-0000-0000-000000000001', 'b0000271-ce14-0000-0000-000000000000', 271),
  ('a0000000-0000-0000-0000-000000000001', 'b0000272-ce14-0000-0000-000000000000', 272),
  ('a0000000-0000-0000-0000-000000000001', 'b0000273-ce14-0000-0000-000000000000', 273),
  ('a0000000-0000-0000-0000-000000000001', 'b0000274-ce14-0000-0000-000000000000', 274),
  ('a0000000-0000-0000-0000-000000000001', 'b0000275-ce14-0000-0000-000000000000', 275),
  ('a0000000-0000-0000-0000-000000000001', 'b0000276-ce14-0000-0000-000000000000', 276),
  ('a0000000-0000-0000-0000-000000000001', 'b0000277-ce14-0000-0000-000000000000', 277),
  ('a0000000-0000-0000-0000-000000000001', 'b0000278-ce14-0000-0000-000000000000', 278),
  ('a0000000-0000-0000-0000-000000000001', 'b0000279-ce14-0000-0000-000000000000', 279),
  ('a0000000-0000-0000-0000-000000000001', 'b0000280-ce14-0000-0000-000000000000', 280),
  ('a0000000-0000-0000-0000-000000000001', 'b0000281-ce14-0000-0000-000000000000', 281),
  ('a0000000-0000-0000-0000-000000000001', 'b0000282-ce14-0000-0000-000000000000', 282),
  ('a0000000-0000-0000-0000-000000000001', 'b0000283-ce14-0000-0000-000000000000', 283),
  ('a0000000-0000-0000-0000-000000000001', 'b0000284-ce14-0000-0000-000000000000', 284),
  ('a0000000-0000-0000-0000-000000000001', 'b0000285-ce14-0000-0000-000000000000', 285),
  ('a0000000-0000-0000-0000-000000000001', 'b0000286-ce14-0000-0000-000000000000', 286),
  ('a0000000-0000-0000-0000-000000000001', 'b0000287-ce14-0000-0000-000000000000', 287),
  ('a0000000-0000-0000-0000-000000000001', 'b0000288-ce14-0000-0000-000000000000', 288),
  ('a0000000-0000-0000-0000-000000000001', 'b0000289-ce14-0000-0000-000000000000', 289),
  ('a0000000-0000-0000-0000-000000000001', 'b0000290-ce14-0000-0000-000000000000', 290),
  ('a0000000-0000-0000-0000-000000000001', 'b0000291-ce14-0000-0000-000000000000', 291),
  ('a0000000-0000-0000-0000-000000000001', 'b0000292-ce14-0000-0000-000000000000', 292),
  ('a0000000-0000-0000-0000-000000000001', 'b0000293-ce14-0000-0000-000000000000', 293),
  ('a0000000-0000-0000-0000-000000000001', 'b0000294-ce14-0000-0000-000000000000', 294),
  ('a0000000-0000-0000-0000-000000000001', 'b0000295-ce14-0000-0000-000000000000', 295),
  ('a0000000-0000-0000-0000-000000000001', 'b0000296-ce14-0000-0000-000000000000', 296),
  ('a0000000-0000-0000-0000-000000000001', 'b0000297-ce14-0000-0000-000000000000', 297),
  ('a0000000-0000-0000-0000-000000000001', 'b0000298-ce14-0000-0000-000000000000', 298),
  ('a0000000-0000-0000-0000-000000000001', 'b0000299-ce14-0000-0000-000000000000', 299)
;

INSERT INTO word_book_items (book_id, word_id, sort_order) VALUES
  ('a0000000-0000-0000-0000-000000000002', 'b0000158-ce14-0000-0000-000000000000', 0),
  ('a0000000-0000-0000-0000-000000000002', 'b0000193-ce14-0000-0000-000000000000', 1),
  ('a0000000-0000-0000-0000-000000000002', 'b0000196-ce14-0000-0000-000000000000', 2),
  ('a0000000-0000-0000-0000-000000000002', 'b0000247-ce14-0000-0000-000000000000', 3),
  ('a0000000-0000-0000-0000-000000000002', 'b0000283-ce14-0000-0000-000000000000', 4),
  ('a0000000-0000-0000-0000-000000000002', 'b0000290-ce14-0000-0000-000000000000', 5),
  ('a0000000-0000-0000-0000-000000000002', 'b0000300-ce16-0000-0000-000000000000', 6),
  ('a0000000-0000-0000-0000-000000000002', 'b0000301-ce16-0000-0000-000000000000', 7),
  ('a0000000-0000-0000-0000-000000000002', 'b0000302-ce16-0000-0000-000000000000', 8),
  ('a0000000-0000-0000-0000-000000000002', 'b0000303-ce16-0000-0000-000000000000', 9),
  ('a0000000-0000-0000-0000-000000000002', 'b0000304-ce16-0000-0000-000000000000', 10),
  ('a0000000-0000-0000-0000-000000000002', 'b0000305-ce16-0000-0000-000000000000', 11),
  ('a0000000-0000-0000-0000-000000000002', 'b0000306-ce16-0000-0000-000000000000', 12),
  ('a0000000-0000-0000-0000-000000000002', 'b0000307-ce16-0000-0000-000000000000', 13),
  ('a0000000-0000-0000-0000-000000000002', 'b0000308-ce16-0000-0000-000000000000', 14),
  ('a0000000-0000-0000-0000-000000000002', 'b0000309-ce16-0000-0000-000000000000', 15),
  ('a0000000-0000-0000-0000-000000000002', 'b0000310-ce16-0000-0000-000000000000', 16),
  ('a0000000-0000-0000-0000-000000000002', 'b0000311-ce16-0000-0000-000000000000', 17),
  ('a0000000-0000-0000-0000-000000000002', 'b0000312-ce16-0000-0000-000000000000', 18),
  ('a0000000-0000-0000-0000-000000000002', 'b0000313-ce16-0000-0000-000000000000', 19),
  ('a0000000-0000-0000-0000-000000000002', 'b0000314-ce16-0000-0000-000000000000', 20),
  ('a0000000-0000-0000-0000-000000000002', 'b0000315-ce16-0000-0000-000000000000', 21),
  ('a0000000-0000-0000-0000-000000000002', 'b0000316-ce16-0000-0000-000000000000', 22),
  ('a0000000-0000-0000-0000-000000000002', 'b0000317-ce16-0000-0000-000000000000', 23),
  ('a0000000-0000-0000-0000-000000000002', 'b0000318-ce16-0000-0000-000000000000', 24),
  ('a0000000-0000-0000-0000-000000000002', 'b0000319-ce16-0000-0000-000000000000', 25),
  ('a0000000-0000-0000-0000-000000000002', 'b0000320-ce16-0000-0000-000000000000', 26),
  ('a0000000-0000-0000-0000-000000000002', 'b0000321-ce16-0000-0000-000000000000', 27),
  ('a0000000-0000-0000-0000-000000000002', 'b0000322-ce16-0000-0000-000000000000', 28),
  ('a0000000-0000-0000-0000-000000000002', 'b0000323-ce16-0000-0000-000000000000', 29),
  ('a0000000-0000-0000-0000-000000000002', 'b0000324-ce16-0000-0000-000000000000', 30),
  ('a0000000-0000-0000-0000-000000000002', 'b0000325-ce16-0000-0000-000000000000', 31),
  ('a0000000-0000-0000-0000-000000000002', 'b0000326-ce16-0000-0000-000000000000', 32),
  ('a0000000-0000-0000-0000-000000000002', 'b0000327-ce16-0000-0000-000000000000', 33),
  ('a0000000-0000-0000-0000-000000000002', 'b0000328-ce16-0000-0000-000000000000', 34),
  ('a0000000-0000-0000-0000-000000000002', 'b0000329-ce16-0000-0000-000000000000', 35),
  ('a0000000-0000-0000-0000-000000000002', 'b0000330-ce16-0000-0000-000000000000', 36),
  ('a0000000-0000-0000-0000-000000000002', 'b0000331-ce16-0000-0000-000000000000', 37),
  ('a0000000-0000-0000-0000-000000000002', 'b0000332-ce16-0000-0000-000000000000', 38),
  ('a0000000-0000-0000-0000-000000000002', 'b0000333-ce16-0000-0000-000000000000', 39),
  ('a0000000-0000-0000-0000-000000000002', 'b0000334-ce16-0000-0000-000000000000', 40),
  ('a0000000-0000-0000-0000-000000000002', 'b0000335-ce16-0000-0000-000000000000', 41),
  ('a0000000-0000-0000-0000-000000000002', 'b0000336-ce16-0000-0000-000000000000', 42),
  ('a0000000-0000-0000-0000-000000000002', 'b0000337-ce16-0000-0000-000000000000', 43),
  ('a0000000-0000-0000-0000-000000000002', 'b0000338-ce16-0000-0000-000000000000', 44),
  ('a0000000-0000-0000-0000-000000000002', 'b0000339-ce16-0000-0000-000000000000', 45),
  ('a0000000-0000-0000-0000-000000000002', 'b0000340-ce16-0000-0000-000000000000', 46),
  ('a0000000-0000-0000-0000-000000000002', 'b0000341-ce16-0000-0000-000000000000', 47),
  ('a0000000-0000-0000-0000-000000000002', 'b0000342-ce16-0000-0000-000000000000', 48),
  ('a0000000-0000-0000-0000-000000000002', 'b0000343-ce16-0000-0000-000000000000', 49),
  ('a0000000-0000-0000-0000-000000000002', 'b0000344-ce16-0000-0000-000000000000', 50),
  ('a0000000-0000-0000-0000-000000000002', 'b0000345-ce16-0000-0000-000000000000', 51),
  ('a0000000-0000-0000-0000-000000000002', 'b0000346-ce16-0000-0000-000000000000', 52),
  ('a0000000-0000-0000-0000-000000000002', 'b0000347-ce16-0000-0000-000000000000', 53),
  ('a0000000-0000-0000-0000-000000000002', 'b0000348-ce16-0000-0000-000000000000', 54),
  ('a0000000-0000-0000-0000-000000000002', 'b0000349-ce16-0000-0000-000000000000', 55),
  ('a0000000-0000-0000-0000-000000000002', 'b0000350-ce16-0000-0000-000000000000', 56),
  ('a0000000-0000-0000-0000-000000000002', 'b0000351-ce16-0000-0000-000000000000', 57),
  ('a0000000-0000-0000-0000-000000000002', 'b0000352-ce16-0000-0000-000000000000', 58),
  ('a0000000-0000-0000-0000-000000000002', 'b0000353-ce16-0000-0000-000000000000', 59),
  ('a0000000-0000-0000-0000-000000000002', 'b0000354-ce16-0000-0000-000000000000', 60),
  ('a0000000-0000-0000-0000-000000000002', 'b0000355-ce16-0000-0000-000000000000', 61),
  ('a0000000-0000-0000-0000-000000000002', 'b0000356-ce16-0000-0000-000000000000', 62),
  ('a0000000-0000-0000-0000-000000000002', 'b0000357-ce16-0000-0000-000000000000', 63),
  ('a0000000-0000-0000-0000-000000000002', 'b0000358-ce16-0000-0000-000000000000', 64),
  ('a0000000-0000-0000-0000-000000000002', 'b0000359-ce16-0000-0000-000000000000', 65),
  ('a0000000-0000-0000-0000-000000000002', 'b0000360-ce16-0000-0000-000000000000', 66),
  ('a0000000-0000-0000-0000-000000000002', 'b0000361-ce16-0000-0000-000000000000', 67),
  ('a0000000-0000-0000-0000-000000000002', 'b0000362-ce16-0000-0000-000000000000', 68),
  ('a0000000-0000-0000-0000-000000000002', 'b0000363-ce16-0000-0000-000000000000', 69),
  ('a0000000-0000-0000-0000-000000000002', 'b0000364-ce16-0000-0000-000000000000', 70),
  ('a0000000-0000-0000-0000-000000000002', 'b0000365-ce16-0000-0000-000000000000', 71),
  ('a0000000-0000-0000-0000-000000000002', 'b0000366-ce16-0000-0000-000000000000', 72),
  ('a0000000-0000-0000-0000-000000000002', 'b0000367-ce16-0000-0000-000000000000', 73),
  ('a0000000-0000-0000-0000-000000000002', 'b0000368-ce16-0000-0000-000000000000', 74),
  ('a0000000-0000-0000-0000-000000000002', 'b0000369-ce16-0000-0000-000000000000', 75),
  ('a0000000-0000-0000-0000-000000000002', 'b0000370-ce16-0000-0000-000000000000', 76),
  ('a0000000-0000-0000-0000-000000000002', 'b0000371-ce16-0000-0000-000000000000', 77),
  ('a0000000-0000-0000-0000-000000000002', 'b0000372-ce16-0000-0000-000000000000', 78),
  ('a0000000-0000-0000-0000-000000000002', 'b0000373-ce16-0000-0000-000000000000', 79),
  ('a0000000-0000-0000-0000-000000000002', 'b0000374-ce16-0000-0000-000000000000', 80),
  ('a0000000-0000-0000-0000-000000000002', 'b0000375-ce16-0000-0000-000000000000', 81),
  ('a0000000-0000-0000-0000-000000000002', 'b0000376-ce16-0000-0000-000000000000', 82),
  ('a0000000-0000-0000-0000-000000000002', 'b0000377-ce16-0000-0000-000000000000', 83),
  ('a0000000-0000-0000-0000-000000000002', 'b0000378-ce16-0000-0000-000000000000', 84),
  ('a0000000-0000-0000-0000-000000000002', 'b0000379-ce16-0000-0000-000000000000', 85),
  ('a0000000-0000-0000-0000-000000000002', 'b0000380-ce16-0000-0000-000000000000', 86),
  ('a0000000-0000-0000-0000-000000000002', 'b0000381-ce16-0000-0000-000000000000', 87),
  ('a0000000-0000-0000-0000-000000000002', 'b0000382-ce16-0000-0000-000000000000', 88),
  ('a0000000-0000-0000-0000-000000000002', 'b0000383-ce16-0000-0000-000000000000', 89),
  ('a0000000-0000-0000-0000-000000000002', 'b0000384-ce16-0000-0000-000000000000', 90),
  ('a0000000-0000-0000-0000-000000000002', 'b0000385-ce16-0000-0000-000000000000', 91),
  ('a0000000-0000-0000-0000-000000000002', 'b0000386-ce16-0000-0000-000000000000', 92),
  ('a0000000-0000-0000-0000-000000000002', 'b0000387-ce16-0000-0000-000000000000', 93),
  ('a0000000-0000-0000-0000-000000000002', 'b0000388-ce16-0000-0000-000000000000', 94),
  ('a0000000-0000-0000-0000-000000000002', 'b0000389-ce16-0000-0000-000000000000', 95),
  ('a0000000-0000-0000-0000-000000000002', 'b0000390-ce16-0000-0000-000000000000', 96),
  ('a0000000-0000-0000-0000-000000000002', 'b0000391-ce16-0000-0000-000000000000', 97),
  ('a0000000-0000-0000-0000-000000000002', 'b0000392-ce16-0000-0000-000000000000', 98),
  ('a0000000-0000-0000-0000-000000000002', 'b0000393-ce16-0000-0000-000000000000', 99),
  ('a0000000-0000-0000-0000-000000000002', 'b0000394-ce16-0000-0000-000000000000', 100),
  ('a0000000-0000-0000-0000-000000000002', 'b0000395-ce16-0000-0000-000000000000', 101),
  ('a0000000-0000-0000-0000-000000000002', 'b0000396-ce16-0000-0000-000000000000', 102),
  ('a0000000-0000-0000-0000-000000000002', 'b0000397-ce16-0000-0000-000000000000', 103),
  ('a0000000-0000-0000-0000-000000000002', 'b0000398-ce16-0000-0000-000000000000', 104),
  ('a0000000-0000-0000-0000-000000000002', 'b0000399-ce16-0000-0000-000000000000', 105),
  ('a0000000-0000-0000-0000-000000000002', 'b0000400-ce16-0000-0000-000000000000', 106),
  ('a0000000-0000-0000-0000-000000000002', 'b0000401-ce16-0000-0000-000000000000', 107),
  ('a0000000-0000-0000-0000-000000000002', 'b0000402-ce16-0000-0000-000000000000', 108),
  ('a0000000-0000-0000-0000-000000000002', 'b0000403-ce16-0000-0000-000000000000', 109),
  ('a0000000-0000-0000-0000-000000000002', 'b0000404-ce16-0000-0000-000000000000', 110),
  ('a0000000-0000-0000-0000-000000000002', 'b0000405-ce16-0000-0000-000000000000', 111),
  ('a0000000-0000-0000-0000-000000000002', 'b0000406-ce16-0000-0000-000000000000', 112),
  ('a0000000-0000-0000-0000-000000000002', 'b0000407-ce16-0000-0000-000000000000', 113),
  ('a0000000-0000-0000-0000-000000000002', 'b0000408-ce16-0000-0000-000000000000', 114),
  ('a0000000-0000-0000-0000-000000000002', 'b0000409-ce16-0000-0000-000000000000', 115),
  ('a0000000-0000-0000-0000-000000000002', 'b0000410-ce16-0000-0000-000000000000', 116),
  ('a0000000-0000-0000-0000-000000000002', 'b0000411-ce16-0000-0000-000000000000', 117),
  ('a0000000-0000-0000-0000-000000000002', 'b0000412-ce16-0000-0000-000000000000', 118),
  ('a0000000-0000-0000-0000-000000000002', 'b0000413-ce16-0000-0000-000000000000', 119),
  ('a0000000-0000-0000-0000-000000000002', 'b0000414-ce16-0000-0000-000000000000', 120),
  ('a0000000-0000-0000-0000-000000000002', 'b0000415-ce16-0000-0000-000000000000', 121),
  ('a0000000-0000-0000-0000-000000000002', 'b0000416-ce16-0000-0000-000000000000', 122),
  ('a0000000-0000-0000-0000-000000000002', 'b0000417-ce16-0000-0000-000000000000', 123),
  ('a0000000-0000-0000-0000-000000000002', 'b0000418-ce16-0000-0000-000000000000', 124),
  ('a0000000-0000-0000-0000-000000000002', 'b0000419-ce16-0000-0000-000000000000', 125),
  ('a0000000-0000-0000-0000-000000000002', 'b0000420-ce16-0000-0000-000000000000', 126),
  ('a0000000-0000-0000-0000-000000000002', 'b0000421-ce16-0000-0000-000000000000', 127),
  ('a0000000-0000-0000-0000-000000000002', 'b0000422-ce16-0000-0000-000000000000', 128),
  ('a0000000-0000-0000-0000-000000000002', 'b0000423-ce16-0000-0000-000000000000', 129),
  ('a0000000-0000-0000-0000-000000000002', 'b0000424-ce16-0000-0000-000000000000', 130),
  ('a0000000-0000-0000-0000-000000000002', 'b0000425-ce16-0000-0000-000000000000', 131),
  ('a0000000-0000-0000-0000-000000000002', 'b0000426-ce16-0000-0000-000000000000', 132),
  ('a0000000-0000-0000-0000-000000000002', 'b0000427-ce16-0000-0000-000000000000', 133),
  ('a0000000-0000-0000-0000-000000000002', 'b0000428-ce16-0000-0000-000000000000', 134),
  ('a0000000-0000-0000-0000-000000000002', 'b0000429-ce16-0000-0000-000000000000', 135),
  ('a0000000-0000-0000-0000-000000000002', 'b0000430-ce16-0000-0000-000000000000', 136),
  ('a0000000-0000-0000-0000-000000000002', 'b0000431-ce16-0000-0000-000000000000', 137),
  ('a0000000-0000-0000-0000-000000000002', 'b0000432-ce16-0000-0000-000000000000', 138),
  ('a0000000-0000-0000-0000-000000000002', 'b0000433-ce16-0000-0000-000000000000', 139),
  ('a0000000-0000-0000-0000-000000000002', 'b0000434-ce16-0000-0000-000000000000', 140),
  ('a0000000-0000-0000-0000-000000000002', 'b0000435-ce16-0000-0000-000000000000', 141),
  ('a0000000-0000-0000-0000-000000000002', 'b0000436-ce16-0000-0000-000000000000', 142),
  ('a0000000-0000-0000-0000-000000000002', 'b0000437-ce16-0000-0000-000000000000', 143),
  ('a0000000-0000-0000-0000-000000000002', 'b0000438-ce16-0000-0000-000000000000', 144),
  ('a0000000-0000-0000-0000-000000000002', 'b0000439-ce16-0000-0000-000000000000', 145),
  ('a0000000-0000-0000-0000-000000000002', 'b0000440-ce16-0000-0000-000000000000', 146),
  ('a0000000-0000-0000-0000-000000000002', 'b0000441-ce16-0000-0000-000000000000', 147),
  ('a0000000-0000-0000-0000-000000000002', 'b0000442-ce16-0000-0000-000000000000', 148),
  ('a0000000-0000-0000-0000-000000000002', 'b0000443-ce16-0000-0000-000000000000', 149),
  ('a0000000-0000-0000-0000-000000000002', 'b0000444-ce16-0000-0000-000000000000', 150),
  ('a0000000-0000-0000-0000-000000000002', 'b0000445-ce16-0000-0000-000000000000', 151),
  ('a0000000-0000-0000-0000-000000000002', 'b0000446-ce16-0000-0000-000000000000', 152),
  ('a0000000-0000-0000-0000-000000000002', 'b0000447-ce16-0000-0000-000000000000', 153),
  ('a0000000-0000-0000-0000-000000000002', 'b0000448-ce16-0000-0000-000000000000', 154),
  ('a0000000-0000-0000-0000-000000000002', 'b0000449-ce16-0000-0000-000000000000', 155),
  ('a0000000-0000-0000-0000-000000000002', 'b0000450-ce16-0000-0000-000000000000', 156),
  ('a0000000-0000-0000-0000-000000000002', 'b0000451-ce16-0000-0000-000000000000', 157),
  ('a0000000-0000-0000-0000-000000000002', 'b0000452-ce16-0000-0000-000000000000', 158),
  ('a0000000-0000-0000-0000-000000000002', 'b0000453-ce16-0000-0000-000000000000', 159),
  ('a0000000-0000-0000-0000-000000000002', 'b0000454-ce16-0000-0000-000000000000', 160),
  ('a0000000-0000-0000-0000-000000000002', 'b0000455-ce16-0000-0000-000000000000', 161),
  ('a0000000-0000-0000-0000-000000000002', 'b0000456-ce16-0000-0000-000000000000', 162),
  ('a0000000-0000-0000-0000-000000000002', 'b0000457-ce16-0000-0000-000000000000', 163),
  ('a0000000-0000-0000-0000-000000000002', 'b0000458-ce16-0000-0000-000000000000', 164),
  ('a0000000-0000-0000-0000-000000000002', 'b0000459-ce16-0000-0000-000000000000', 165),
  ('a0000000-0000-0000-0000-000000000002', 'b0000460-ce16-0000-0000-000000000000', 166),
  ('a0000000-0000-0000-0000-000000000002', 'b0000461-ce16-0000-0000-000000000000', 167),
  ('a0000000-0000-0000-0000-000000000002', 'b0000462-ce16-0000-0000-000000000000', 168),
  ('a0000000-0000-0000-0000-000000000002', 'b0000463-ce16-0000-0000-000000000000', 169),
  ('a0000000-0000-0000-0000-000000000002', 'b0000464-ce16-0000-0000-000000000000', 170),
  ('a0000000-0000-0000-0000-000000000002', 'b0000465-ce16-0000-0000-000000000000', 171),
  ('a0000000-0000-0000-0000-000000000002', 'b0000466-ce16-0000-0000-000000000000', 172),
  ('a0000000-0000-0000-0000-000000000002', 'b0000467-ce16-0000-0000-000000000000', 173),
  ('a0000000-0000-0000-0000-000000000002', 'b0000468-ce16-0000-0000-000000000000', 174),
  ('a0000000-0000-0000-0000-000000000002', 'b0000469-ce16-0000-0000-000000000000', 175),
  ('a0000000-0000-0000-0000-000000000002', 'b0000470-ce16-0000-0000-000000000000', 176),
  ('a0000000-0000-0000-0000-000000000002', 'b0000471-ce16-0000-0000-000000000000', 177),
  ('a0000000-0000-0000-0000-000000000002', 'b0000472-ce16-0000-0000-000000000000', 178),
  ('a0000000-0000-0000-0000-000000000002', 'b0000473-ce16-0000-0000-000000000000', 179),
  ('a0000000-0000-0000-0000-000000000002', 'b0000474-ce16-0000-0000-000000000000', 180),
  ('a0000000-0000-0000-0000-000000000002', 'b0000475-ce16-0000-0000-000000000000', 181),
  ('a0000000-0000-0000-0000-000000000002', 'b0000476-ce16-0000-0000-000000000000', 182),
  ('a0000000-0000-0000-0000-000000000002', 'b0000477-ce16-0000-0000-000000000000', 183),
  ('a0000000-0000-0000-0000-000000000002', 'b0000478-ce16-0000-0000-000000000000', 184),
  ('a0000000-0000-0000-0000-000000000002', 'b0000479-ce16-0000-0000-000000000000', 185),
  ('a0000000-0000-0000-0000-000000000002', 'b0000480-ce16-0000-0000-000000000000', 186),
  ('a0000000-0000-0000-0000-000000000002', 'b0000481-ce16-0000-0000-000000000000', 187),
  ('a0000000-0000-0000-0000-000000000002', 'b0000482-ce16-0000-0000-000000000000', 188),
  ('a0000000-0000-0000-0000-000000000002', 'b0000483-ce16-0000-0000-000000000000', 189),
  ('a0000000-0000-0000-0000-000000000002', 'b0000484-ce16-0000-0000-000000000000', 190),
  ('a0000000-0000-0000-0000-000000000002', 'b0000485-ce16-0000-0000-000000000000', 191),
  ('a0000000-0000-0000-0000-000000000002', 'b0000486-ce16-0000-0000-000000000000', 192),
  ('a0000000-0000-0000-0000-000000000002', 'b0000487-ce16-0000-0000-000000000000', 193),
  ('a0000000-0000-0000-0000-000000000002', 'b0000488-ce16-0000-0000-000000000000', 194),
  ('a0000000-0000-0000-0000-000000000002', 'b0000489-ce16-0000-0000-000000000000', 195),
  ('a0000000-0000-0000-0000-000000000002', 'b0000490-ce16-0000-0000-000000000000', 196),
  ('a0000000-0000-0000-0000-000000000002', 'b0000491-ce16-0000-0000-000000000000', 197),
  ('a0000000-0000-0000-0000-000000000002', 'b0000492-ce16-0000-0000-000000000000', 198),
  ('a0000000-0000-0000-0000-000000000002', 'b0000493-ce16-0000-0000-000000000000', 199),
  ('a0000000-0000-0000-0000-000000000002', 'b0000494-ce16-0000-0000-000000000000', 200),
  ('a0000000-0000-0000-0000-000000000002', 'b0000495-ce16-0000-0000-000000000000', 201),
  ('a0000000-0000-0000-0000-000000000002', 'b0000496-ce16-0000-0000-000000000000', 202),
  ('a0000000-0000-0000-0000-000000000002', 'b0000497-ce16-0000-0000-000000000000', 203),
  ('a0000000-0000-0000-0000-000000000002', 'b0000498-ce16-0000-0000-000000000000', 204),
  ('a0000000-0000-0000-0000-000000000002', 'b0000499-ce16-0000-0000-000000000000', 205),
  ('a0000000-0000-0000-0000-000000000002', 'b0000500-ce16-0000-0000-000000000000', 206),
  ('a0000000-0000-0000-0000-000000000002', 'b0000501-ce16-0000-0000-000000000000', 207),
  ('a0000000-0000-0000-0000-000000000002', 'b0000502-ce16-0000-0000-000000000000', 208),
  ('a0000000-0000-0000-0000-000000000002', 'b0000503-ce16-0000-0000-000000000000', 209),
  ('a0000000-0000-0000-0000-000000000002', 'b0000504-ce16-0000-0000-000000000000', 210),
  ('a0000000-0000-0000-0000-000000000002', 'b0000505-ce16-0000-0000-000000000000', 211),
  ('a0000000-0000-0000-0000-000000000002', 'b0000506-ce16-0000-0000-000000000000', 212),
  ('a0000000-0000-0000-0000-000000000002', 'b0000507-ce16-0000-0000-000000000000', 213),
  ('a0000000-0000-0000-0000-000000000002', 'b0000508-ce16-0000-0000-000000000000', 214),
  ('a0000000-0000-0000-0000-000000000002', 'b0000509-ce16-0000-0000-000000000000', 215),
  ('a0000000-0000-0000-0000-000000000002', 'b0000510-ce16-0000-0000-000000000000', 216),
  ('a0000000-0000-0000-0000-000000000002', 'b0000511-ce16-0000-0000-000000000000', 217),
  ('a0000000-0000-0000-0000-000000000002', 'b0000512-ce16-0000-0000-000000000000', 218),
  ('a0000000-0000-0000-0000-000000000002', 'b0000513-ce16-0000-0000-000000000000', 219),
  ('a0000000-0000-0000-0000-000000000002', 'b0000514-ce16-0000-0000-000000000000', 220),
  ('a0000000-0000-0000-0000-000000000002', 'b0000515-ce16-0000-0000-000000000000', 221),
  ('a0000000-0000-0000-0000-000000000002', 'b0000516-ce16-0000-0000-000000000000', 222),
  ('a0000000-0000-0000-0000-000000000002', 'b0000517-ce16-0000-0000-000000000000', 223),
  ('a0000000-0000-0000-0000-000000000002', 'b0000518-ce16-0000-0000-000000000000', 224),
  ('a0000000-0000-0000-0000-000000000002', 'b0000519-ce16-0000-0000-000000000000', 225),
  ('a0000000-0000-0000-0000-000000000002', 'b0000520-ce16-0000-0000-000000000000', 226),
  ('a0000000-0000-0000-0000-000000000002', 'b0000521-ce16-0000-0000-000000000000', 227),
  ('a0000000-0000-0000-0000-000000000002', 'b0000522-ce16-0000-0000-000000000000', 228),
  ('a0000000-0000-0000-0000-000000000002', 'b0000523-ce16-0000-0000-000000000000', 229),
  ('a0000000-0000-0000-0000-000000000002', 'b0000524-ce16-0000-0000-000000000000', 230),
  ('a0000000-0000-0000-0000-000000000002', 'b0000525-ce16-0000-0000-000000000000', 231),
  ('a0000000-0000-0000-0000-000000000002', 'b0000526-ce16-0000-0000-000000000000', 232),
  ('a0000000-0000-0000-0000-000000000002', 'b0000527-ce16-0000-0000-000000000000', 233),
  ('a0000000-0000-0000-0000-000000000002', 'b0000528-ce16-0000-0000-000000000000', 234),
  ('a0000000-0000-0000-0000-000000000002', 'b0000529-ce16-0000-0000-000000000000', 235),
  ('a0000000-0000-0000-0000-000000000002', 'b0000530-ce16-0000-0000-000000000000', 236),
  ('a0000000-0000-0000-0000-000000000002', 'b0000531-ce16-0000-0000-000000000000', 237),
  ('a0000000-0000-0000-0000-000000000002', 'b0000532-ce16-0000-0000-000000000000', 238),
  ('a0000000-0000-0000-0000-000000000002', 'b0000533-ce16-0000-0000-000000000000', 239),
  ('a0000000-0000-0000-0000-000000000002', 'b0000534-ce16-0000-0000-000000000000', 240),
  ('a0000000-0000-0000-0000-000000000002', 'b0000535-ce16-0000-0000-000000000000', 241),
  ('a0000000-0000-0000-0000-000000000002', 'b0000536-ce16-0000-0000-000000000000', 242),
  ('a0000000-0000-0000-0000-000000000002', 'b0000537-ce16-0000-0000-000000000000', 243),
  ('a0000000-0000-0000-0000-000000000002', 'b0000538-ce16-0000-0000-000000000000', 244),
  ('a0000000-0000-0000-0000-000000000002', 'b0000539-ce16-0000-0000-000000000000', 245),
  ('a0000000-0000-0000-0000-000000000002', 'b0000540-ce16-0000-0000-000000000000', 246),
  ('a0000000-0000-0000-0000-000000000002', 'b0000541-ce16-0000-0000-000000000000', 247),
  ('a0000000-0000-0000-0000-000000000002', 'b0000542-ce16-0000-0000-000000000000', 248),
  ('a0000000-0000-0000-0000-000000000002', 'b0000543-ce16-0000-0000-000000000000', 249),
  ('a0000000-0000-0000-0000-000000000002', 'b0000544-ce16-0000-0000-000000000000', 250),
  ('a0000000-0000-0000-0000-000000000002', 'b0000545-ce16-0000-0000-000000000000', 251),
  ('a0000000-0000-0000-0000-000000000002', 'b0000546-ce16-0000-0000-000000000000', 252),
  ('a0000000-0000-0000-0000-000000000002', 'b0000547-ce16-0000-0000-000000000000', 253),
  ('a0000000-0000-0000-0000-000000000002', 'b0000548-ce16-0000-0000-000000000000', 254),
  ('a0000000-0000-0000-0000-000000000002', 'b0000549-ce16-0000-0000-000000000000', 255),
  ('a0000000-0000-0000-0000-000000000002', 'b0000550-ce16-0000-0000-000000000000', 256),
  ('a0000000-0000-0000-0000-000000000002', 'b0000551-ce16-0000-0000-000000000000', 257),
  ('a0000000-0000-0000-0000-000000000002', 'b0000552-ce16-0000-0000-000000000000', 258),
  ('a0000000-0000-0000-0000-000000000002', 'b0000553-ce16-0000-0000-000000000000', 259),
  ('a0000000-0000-0000-0000-000000000002', 'b0000554-ce16-0000-0000-000000000000', 260),
  ('a0000000-0000-0000-0000-000000000002', 'b0000555-ce16-0000-0000-000000000000', 261),
  ('a0000000-0000-0000-0000-000000000002', 'b0000556-ce16-0000-0000-000000000000', 262),
  ('a0000000-0000-0000-0000-000000000002', 'b0000557-ce16-0000-0000-000000000000', 263),
  ('a0000000-0000-0000-0000-000000000002', 'b0000558-ce16-0000-0000-000000000000', 264),
  ('a0000000-0000-0000-0000-000000000002', 'b0000559-ce16-0000-0000-000000000000', 265),
  ('a0000000-0000-0000-0000-000000000002', 'b0000560-ce16-0000-0000-000000000000', 266),
  ('a0000000-0000-0000-0000-000000000002', 'b0000561-ce16-0000-0000-000000000000', 267),
  ('a0000000-0000-0000-0000-000000000002', 'b0000562-ce16-0000-0000-000000000000', 268),
  ('a0000000-0000-0000-0000-000000000002', 'b0000563-ce16-0000-0000-000000000000', 269),
  ('a0000000-0000-0000-0000-000000000002', 'b0000564-ce16-0000-0000-000000000000', 270),
  ('a0000000-0000-0000-0000-000000000002', 'b0000565-ce16-0000-0000-000000000000', 271),
  ('a0000000-0000-0000-0000-000000000002', 'b0000566-ce16-0000-0000-000000000000', 272),
  ('a0000000-0000-0000-0000-000000000002', 'b0000567-ce16-0000-0000-000000000000', 273),
  ('a0000000-0000-0000-0000-000000000002', 'b0000568-ce16-0000-0000-000000000000', 274),
  ('a0000000-0000-0000-0000-000000000002', 'b0000569-ce16-0000-0000-000000000000', 275),
  ('a0000000-0000-0000-0000-000000000002', 'b0000570-ce16-0000-0000-000000000000', 276),
  ('a0000000-0000-0000-0000-000000000002', 'b0000571-ce16-0000-0000-000000000000', 277),
  ('a0000000-0000-0000-0000-000000000002', 'b0000572-ce16-0000-0000-000000000000', 278),
  ('a0000000-0000-0000-0000-000000000002', 'b0000573-ce16-0000-0000-000000000000', 279),
  ('a0000000-0000-0000-0000-000000000002', 'b0000574-ce16-0000-0000-000000000000', 280),
  ('a0000000-0000-0000-0000-000000000002', 'b0000575-ce16-0000-0000-000000000000', 281),
  ('a0000000-0000-0000-0000-000000000002', 'b0000576-ce16-0000-0000-000000000000', 282),
  ('a0000000-0000-0000-0000-000000000002', 'b0000577-ce16-0000-0000-000000000000', 283),
  ('a0000000-0000-0000-0000-000000000002', 'b0000578-ce16-0000-0000-000000000000', 284),
  ('a0000000-0000-0000-0000-000000000002', 'b0000579-ce16-0000-0000-000000000000', 285),
  ('a0000000-0000-0000-0000-000000000002', 'b0000580-ce16-0000-0000-000000000000', 286),
  ('a0000000-0000-0000-0000-000000000002', 'b0000581-ce16-0000-0000-000000000000', 287),
  ('a0000000-0000-0000-0000-000000000002', 'b0000582-ce16-0000-0000-000000000000', 288),
  ('a0000000-0000-0000-0000-000000000002', 'b0000583-ce16-0000-0000-000000000000', 289),
  ('a0000000-0000-0000-0000-000000000002', 'b0000584-ce16-0000-0000-000000000000', 290),
  ('a0000000-0000-0000-0000-000000000002', 'b0000585-ce16-0000-0000-000000000000', 291),
  ('a0000000-0000-0000-0000-000000000002', 'b0000586-ce16-0000-0000-000000000000', 292),
  ('a0000000-0000-0000-0000-000000000002', 'b0000587-ce16-0000-0000-000000000000', 293),
  ('a0000000-0000-0000-0000-000000000002', 'b0000588-ce16-0000-0000-000000000000', 294),
  ('a0000000-0000-0000-0000-000000000002', 'b0000589-ce16-0000-0000-000000000000', 295),
  ('a0000000-0000-0000-0000-000000000002', 'b0000590-ce16-0000-0000-000000000000', 296),
  ('a0000000-0000-0000-0000-000000000002', 'b0000591-ce16-0000-0000-000000000000', 297),
  ('a0000000-0000-0000-0000-000000000002', 'b0000592-ce16-0000-0000-000000000000', 298)
;

INSERT INTO word_book_items (book_id, word_id, sort_order) VALUES
  ('a0000000-0000-0000-0000-000000000003', 'b0000000-ce14-0000-0000-000000000000', 0),
  ('a0000000-0000-0000-0000-000000000003', 'b0000004-ce14-0000-0000-000000000000', 1),
  ('a0000000-0000-0000-0000-000000000003', 'b0000007-ce14-0000-0000-000000000000', 2),
  ('a0000000-0000-0000-0000-000000000003', 'b0000011-ce14-0000-0000-000000000000', 3),
  ('a0000000-0000-0000-0000-000000000003', 'b0000012-ce14-0000-0000-000000000000', 4),
  ('a0000000-0000-0000-0000-000000000003', 'b0000013-ce14-0000-0000-000000000000', 5),
  ('a0000000-0000-0000-0000-000000000003', 'b0000015-ce14-0000-0000-000000000000', 6),
  ('a0000000-0000-0000-0000-000000000003', 'b0000016-ce14-0000-0000-000000000000', 7),
  ('a0000000-0000-0000-0000-000000000003', 'b0000019-ce14-0000-0000-000000000000', 8),
  ('a0000000-0000-0000-0000-000000000003', 'b0000020-ce14-0000-0000-000000000000', 9),
  ('a0000000-0000-0000-0000-000000000003', 'b0000021-ce14-0000-0000-000000000000', 10),
  ('a0000000-0000-0000-0000-000000000003', 'b0000022-ce14-0000-0000-000000000000', 11),
  ('a0000000-0000-0000-0000-000000000003', 'b0000023-ce14-0000-0000-000000000000', 12),
  ('a0000000-0000-0000-0000-000000000003', 'b0000031-ce14-0000-0000-000000000000', 13),
  ('a0000000-0000-0000-0000-000000000003', 'b0000034-ce14-0000-0000-000000000000', 14),
  ('a0000000-0000-0000-0000-000000000003', 'b0000039-ce14-0000-0000-000000000000', 15),
  ('a0000000-0000-0000-0000-000000000003', 'b0000052-ce14-0000-0000-000000000000', 16),
  ('a0000000-0000-0000-0000-000000000003', 'b0000055-ce14-0000-0000-000000000000', 17),
  ('a0000000-0000-0000-0000-000000000003', 'b0000062-ce14-0000-0000-000000000000', 18),
  ('a0000000-0000-0000-0000-000000000003', 'b0000068-ce14-0000-0000-000000000000', 19),
  ('a0000000-0000-0000-0000-000000000003', 'b0000069-ce14-0000-0000-000000000000', 20),
  ('a0000000-0000-0000-0000-000000000003', 'b0000071-ce14-0000-0000-000000000000', 21),
  ('a0000000-0000-0000-0000-000000000003', 'b0000072-ce14-0000-0000-000000000000', 22),
  ('a0000000-0000-0000-0000-000000000003', 'b0000073-ce14-0000-0000-000000000000', 23),
  ('a0000000-0000-0000-0000-000000000003', 'b0000139-ce14-0000-0000-000000000000', 24),
  ('a0000000-0000-0000-0000-000000000003', 'b0000144-ce14-0000-0000-000000000000', 25),
  ('a0000000-0000-0000-0000-000000000003', 'b0000147-ce14-0000-0000-000000000000', 26),
  ('a0000000-0000-0000-0000-000000000003', 'b0000196-ce14-0000-0000-000000000000', 27),
  ('a0000000-0000-0000-0000-000000000003', 'b0000198-ce14-0000-0000-000000000000', 28),
  ('a0000000-0000-0000-0000-000000000003', 'b0000201-ce14-0000-0000-000000000000', 29),
  ('a0000000-0000-0000-0000-000000000003', 'b0000203-ce14-0000-0000-000000000000', 30),
  ('a0000000-0000-0000-0000-000000000003', 'b0000204-ce14-0000-0000-000000000000', 31),
  ('a0000000-0000-0000-0000-000000000003', 'b0000216-ce14-0000-0000-000000000000', 32),
  ('a0000000-0000-0000-0000-000000000003', 'b0000217-ce14-0000-0000-000000000000', 33),
  ('a0000000-0000-0000-0000-000000000003', 'b0000225-ce14-0000-0000-000000000000', 34),
  ('a0000000-0000-0000-0000-000000000003', 'b0000231-ce14-0000-0000-000000000000', 35),
  ('a0000000-0000-0000-0000-000000000003', 'b0000237-ce14-0000-0000-000000000000', 36),
  ('a0000000-0000-0000-0000-000000000003', 'b0000247-ce14-0000-0000-000000000000', 37),
  ('a0000000-0000-0000-0000-000000000003', 'b0000254-ce14-0000-0000-000000000000', 38),
  ('a0000000-0000-0000-0000-000000000003', 'b0000262-ce14-0000-0000-000000000000', 39),
  ('a0000000-0000-0000-0000-000000000003', 'b0000271-ce14-0000-0000-000000000000', 40),
  ('a0000000-0000-0000-0000-000000000003', 'b0000276-ce14-0000-0000-000000000000', 41),
  ('a0000000-0000-0000-0000-000000000003', 'b0000290-ce14-0000-0000-000000000000', 42),
  ('a0000000-0000-0000-0000-000000000003', 'b0000293-ce14-0000-0000-000000000000', 43),
  ('a0000000-0000-0000-0000-000000000003', 'b0000294-ce14-0000-0000-000000000000', 44),
  ('a0000000-0000-0000-0000-000000000003', 'b0000295-ce14-0000-0000-000000000000', 45),
  ('a0000000-0000-0000-0000-000000000003', 'b0000297-ce14-0000-0000-000000000000', 46),
  ('a0000000-0000-0000-0000-000000000003', 'b0000310-ce16-0000-0000-000000000000', 47),
  ('a0000000-0000-0000-0000-000000000003', 'b0000312-ce16-0000-0000-000000000000', 48),
  ('a0000000-0000-0000-0000-000000000003', 'b0000313-ce16-0000-0000-000000000000', 49),
  ('a0000000-0000-0000-0000-000000000003', 'b0000318-ce16-0000-0000-000000000000', 50),
  ('a0000000-0000-0000-0000-000000000003', 'b0000322-ce16-0000-0000-000000000000', 51),
  ('a0000000-0000-0000-0000-000000000003', 'b0000323-ce16-0000-0000-000000000000', 52),
  ('a0000000-0000-0000-0000-000000000003', 'b0000324-ce16-0000-0000-000000000000', 53),
  ('a0000000-0000-0000-0000-000000000003', 'b0000325-ce16-0000-0000-000000000000', 54),
  ('a0000000-0000-0000-0000-000000000003', 'b0000327-ce16-0000-0000-000000000000', 55),
  ('a0000000-0000-0000-0000-000000000003', 'b0000331-ce16-0000-0000-000000000000', 56),
  ('a0000000-0000-0000-0000-000000000003', 'b0000343-ce16-0000-0000-000000000000', 57),
  ('a0000000-0000-0000-0000-000000000003', 'b0000358-ce16-0000-0000-000000000000', 58),
  ('a0000000-0000-0000-0000-000000000003', 'b0000366-ce16-0000-0000-000000000000', 59),
  ('a0000000-0000-0000-0000-000000000003', 'b0000368-ce16-0000-0000-000000000000', 60),
  ('a0000000-0000-0000-0000-000000000003', 'b0000374-ce16-0000-0000-000000000000', 61),
  ('a0000000-0000-0000-0000-000000000003', 'b0000380-ce16-0000-0000-000000000000', 62),
  ('a0000000-0000-0000-0000-000000000003', 'b0000381-ce16-0000-0000-000000000000', 63),
  ('a0000000-0000-0000-0000-000000000003', 'b0000396-ce16-0000-0000-000000000000', 64),
  ('a0000000-0000-0000-0000-000000000003', 'b0000400-ce16-0000-0000-000000000000', 65),
  ('a0000000-0000-0000-0000-000000000003', 'b0000408-ce16-0000-0000-000000000000', 66),
  ('a0000000-0000-0000-0000-000000000003', 'b0000421-ce16-0000-0000-000000000000', 67),
  ('a0000000-0000-0000-0000-000000000003', 'b0000423-ce16-0000-0000-000000000000', 68),
  ('a0000000-0000-0000-0000-000000000003', 'b0000425-ce16-0000-0000-000000000000', 69),
  ('a0000000-0000-0000-0000-000000000003', 'b0000427-ce16-0000-0000-000000000000', 70),
  ('a0000000-0000-0000-0000-000000000003', 'b0000432-ce16-0000-0000-000000000000', 71),
  ('a0000000-0000-0000-0000-000000000003', 'b0000442-ce16-0000-0000-000000000000', 72),
  ('a0000000-0000-0000-0000-000000000003', 'b0000453-ce16-0000-0000-000000000000', 73),
  ('a0000000-0000-0000-0000-000000000003', 'b0000458-ce16-0000-0000-000000000000', 74),
  ('a0000000-0000-0000-0000-000000000003', 'b0000459-ce16-0000-0000-000000000000', 75),
  ('a0000000-0000-0000-0000-000000000003', 'b0000460-ce16-0000-0000-000000000000', 76),
  ('a0000000-0000-0000-0000-000000000003', 'b0000462-ce16-0000-0000-000000000000', 77),
  ('a0000000-0000-0000-0000-000000000003', 'b0000464-ce16-0000-0000-000000000000', 78),
  ('a0000000-0000-0000-0000-000000000003', 'b0000469-ce16-0000-0000-000000000000', 79),
  ('a0000000-0000-0000-0000-000000000003', 'b0000470-ce16-0000-0000-000000000000', 80),
  ('a0000000-0000-0000-0000-000000000003', 'b0000471-ce16-0000-0000-000000000000', 81),
  ('a0000000-0000-0000-0000-000000000003', 'b0000475-ce16-0000-0000-000000000000', 82),
  ('a0000000-0000-0000-0000-000000000003', 'b0000484-ce16-0000-0000-000000000000', 83),
  ('a0000000-0000-0000-0000-000000000003', 'b0000485-ce16-0000-0000-000000000000', 84),
  ('a0000000-0000-0000-0000-000000000003', 'b0000492-ce16-0000-0000-000000000000', 85),
  ('a0000000-0000-0000-0000-000000000003', 'b0000494-ce16-0000-0000-000000000000', 86),
  ('a0000000-0000-0000-0000-000000000003', 'b0000518-ce16-0000-0000-000000000000', 87),
  ('a0000000-0000-0000-0000-000000000003', 'b0000532-ce16-0000-0000-000000000000', 88),
  ('a0000000-0000-0000-0000-000000000003', 'b0000535-ce16-0000-0000-000000000000', 89),
  ('a0000000-0000-0000-0000-000000000003', 'b0000545-ce16-0000-0000-000000000000', 90),
  ('a0000000-0000-0000-0000-000000000003', 'b0000548-ce16-0000-0000-000000000000', 91),
  ('a0000000-0000-0000-0000-000000000003', 'b0000553-ce16-0000-0000-000000000000', 92),
  ('a0000000-0000-0000-0000-000000000003', 'b0000554-ce16-0000-0000-000000000000', 93),
  ('a0000000-0000-0000-0000-000000000003', 'b0000557-ce16-0000-0000-000000000000', 94),
  ('a0000000-0000-0000-0000-000000000003', 'b0000560-ce16-0000-0000-000000000000', 95),
  ('a0000000-0000-0000-0000-000000000003', 'b0000567-ce16-0000-0000-000000000000', 96),
  ('a0000000-0000-0000-0000-000000000003', 'b0000572-ce16-0000-0000-000000000000', 97),
  ('a0000000-0000-0000-0000-000000000003', 'b0000584-ce16-0000-0000-000000000000', 98),
  ('a0000000-0000-0000-0000-000000000003', 'b0000585-ce16-0000-0000-000000000000', 99),
  ('a0000000-0000-0000-0000-000000000003', 'b0000586-ce16-0000-0000-000000000000', 100),
  ('a0000000-0000-0000-0000-000000000003', 'b0000590-ce16-0000-0000-000000000000', 101),
  ('a0000000-0000-0000-0000-000000000003', 'b0000592-ce16-0000-0000-000000000000', 102),
  ('a0000000-0000-0000-0000-000000000003', 'b0000593-ka01-0000-0000-000000000000', 103),
  ('a0000000-0000-0000-0000-000000000003', 'b0000594-ka01-0000-0000-000000000000', 104),
  ('a0000000-0000-0000-0000-000000000003', 'b0000595-ka01-0000-0000-000000000000', 105),
  ('a0000000-0000-0000-0000-000000000003', 'b0000596-ka01-0000-0000-000000000000', 106),
  ('a0000000-0000-0000-0000-000000000003', 'b0000597-ka01-0000-0000-000000000000', 107),
  ('a0000000-0000-0000-0000-000000000003', 'b0000598-ka01-0000-0000-000000000000', 108),
  ('a0000000-0000-0000-0000-000000000003', 'b0000599-ka01-0000-0000-000000000000', 109),
  ('a0000000-0000-0000-0000-000000000003', 'b0000600-ka01-0000-0000-000000000000', 110),
  ('a0000000-0000-0000-0000-000000000003', 'b0000601-ka01-0000-0000-000000000000', 111),
  ('a0000000-0000-0000-0000-000000000003', 'b0000602-ka01-0000-0000-000000000000', 112),
  ('a0000000-0000-0000-0000-000000000003', 'b0000603-ka01-0000-0000-000000000000', 113),
  ('a0000000-0000-0000-0000-000000000003', 'b0000604-ka01-0000-0000-000000000000', 114),
  ('a0000000-0000-0000-0000-000000000003', 'b0000605-ka01-0000-0000-000000000000', 115),
  ('a0000000-0000-0000-0000-000000000003', 'b0000606-ka01-0000-0000-000000000000', 116),
  ('a0000000-0000-0000-0000-000000000003', 'b0000607-ka01-0000-0000-000000000000', 117),
  ('a0000000-0000-0000-0000-000000000003', 'b0000608-ka01-0000-0000-000000000000', 118),
  ('a0000000-0000-0000-0000-000000000003', 'b0000609-ka01-0000-0000-000000000000', 119),
  ('a0000000-0000-0000-0000-000000000003', 'b0000610-ka01-0000-0000-000000000000', 120),
  ('a0000000-0000-0000-0000-000000000003', 'b0000611-ka01-0000-0000-000000000000', 121),
  ('a0000000-0000-0000-0000-000000000003', 'b0000612-ka01-0000-0000-000000000000', 122),
  ('a0000000-0000-0000-0000-000000000003', 'b0000613-ka01-0000-0000-000000000000', 123),
  ('a0000000-0000-0000-0000-000000000003', 'b0000614-ka01-0000-0000-000000000000', 124),
  ('a0000000-0000-0000-0000-000000000003', 'b0000615-ka01-0000-0000-000000000000', 125),
  ('a0000000-0000-0000-0000-000000000003', 'b0000616-ka01-0000-0000-000000000000', 126),
  ('a0000000-0000-0000-0000-000000000003', 'b0000617-ka01-0000-0000-000000000000', 127),
  ('a0000000-0000-0000-0000-000000000003', 'b0000618-ka01-0000-0000-000000000000', 128),
  ('a0000000-0000-0000-0000-000000000003', 'b0000619-ka01-0000-0000-000000000000', 129),
  ('a0000000-0000-0000-0000-000000000003', 'b0000620-ka01-0000-0000-000000000000', 130),
  ('a0000000-0000-0000-0000-000000000003', 'b0000621-ka01-0000-0000-000000000000', 131),
  ('a0000000-0000-0000-0000-000000000003', 'b0000622-ka01-0000-0000-000000000000', 132),
  ('a0000000-0000-0000-0000-000000000003', 'b0000623-ka01-0000-0000-000000000000', 133),
  ('a0000000-0000-0000-0000-000000000003', 'b0000624-ka01-0000-0000-000000000000', 134),
  ('a0000000-0000-0000-0000-000000000003', 'b0000625-ka01-0000-0000-000000000000', 135),
  ('a0000000-0000-0000-0000-000000000003', 'b0000626-ka01-0000-0000-000000000000', 136),
  ('a0000000-0000-0000-0000-000000000003', 'b0000627-ka01-0000-0000-000000000000', 137),
  ('a0000000-0000-0000-0000-000000000003', 'b0000628-ka01-0000-0000-000000000000', 138),
  ('a0000000-0000-0000-0000-000000000003', 'b0000629-ka01-0000-0000-000000000000', 139),
  ('a0000000-0000-0000-0000-000000000003', 'b0000630-ka01-0000-0000-000000000000', 140),
  ('a0000000-0000-0000-0000-000000000003', 'b0000631-ka01-0000-0000-000000000000', 141),
  ('a0000000-0000-0000-0000-000000000003', 'b0000632-ka01-0000-0000-000000000000', 142),
  ('a0000000-0000-0000-0000-000000000003', 'b0000633-ka01-0000-0000-000000000000', 143),
  ('a0000000-0000-0000-0000-000000000003', 'b0000634-ka01-0000-0000-000000000000', 144),
  ('a0000000-0000-0000-0000-000000000003', 'b0000635-ka01-0000-0000-000000000000', 145),
  ('a0000000-0000-0000-0000-000000000003', 'b0000636-ka01-0000-0000-000000000000', 146),
  ('a0000000-0000-0000-0000-000000000003', 'b0000637-ka01-0000-0000-000000000000', 147),
  ('a0000000-0000-0000-0000-000000000003', 'b0000638-ka01-0000-0000-000000000000', 148),
  ('a0000000-0000-0000-0000-000000000003', 'b0000639-ka01-0000-0000-000000000000', 149),
  ('a0000000-0000-0000-0000-000000000003', 'b0000640-ka01-0000-0000-000000000000', 150),
  ('a0000000-0000-0000-0000-000000000003', 'b0000641-ka01-0000-0000-000000000000', 151),
  ('a0000000-0000-0000-0000-000000000003', 'b0000642-ka01-0000-0000-000000000000', 152),
  ('a0000000-0000-0000-0000-000000000003', 'b0000643-ka01-0000-0000-000000000000', 153),
  ('a0000000-0000-0000-0000-000000000003', 'b0000644-ka01-0000-0000-000000000000', 154),
  ('a0000000-0000-0000-0000-000000000003', 'b0000645-ka01-0000-0000-000000000000', 155),
  ('a0000000-0000-0000-0000-000000000003', 'b0000646-ka01-0000-0000-000000000000', 156),
  ('a0000000-0000-0000-0000-000000000003', 'b0000647-ka01-0000-0000-000000000000', 157),
  ('a0000000-0000-0000-0000-000000000003', 'b0000648-ka01-0000-0000-000000000000', 158),
  ('a0000000-0000-0000-0000-000000000003', 'b0000649-ka01-0000-0000-000000000000', 159),
  ('a0000000-0000-0000-0000-000000000003', 'b0000650-ka01-0000-0000-000000000000', 160),
  ('a0000000-0000-0000-0000-000000000003', 'b0000651-ka01-0000-0000-000000000000', 161),
  ('a0000000-0000-0000-0000-000000000003', 'b0000652-ka01-0000-0000-000000000000', 162),
  ('a0000000-0000-0000-0000-000000000003', 'b0000653-ka01-0000-0000-000000000000', 163),
  ('a0000000-0000-0000-0000-000000000003', 'b0000654-ka01-0000-0000-000000000000', 164),
  ('a0000000-0000-0000-0000-000000000003', 'b0000655-ka01-0000-0000-000000000000', 165),
  ('a0000000-0000-0000-0000-000000000003', 'b0000656-ka01-0000-0000-000000000000', 166),
  ('a0000000-0000-0000-0000-000000000003', 'b0000657-ka01-0000-0000-000000000000', 167),
  ('a0000000-0000-0000-0000-000000000003', 'b0000658-ka01-0000-0000-000000000000', 168),
  ('a0000000-0000-0000-0000-000000000003', 'b0000659-ka01-0000-0000-000000000000', 169),
  ('a0000000-0000-0000-0000-000000000003', 'b0000660-ka01-0000-0000-000000000000', 170),
  ('a0000000-0000-0000-0000-000000000003', 'b0000661-ka01-0000-0000-000000000000', 171),
  ('a0000000-0000-0000-0000-000000000003', 'b0000662-ka01-0000-0000-000000000000', 172),
  ('a0000000-0000-0000-0000-000000000003', 'b0000663-ka01-0000-0000-000000000000', 173),
  ('a0000000-0000-0000-0000-000000000003', 'b0000664-ka01-0000-0000-000000000000', 174),
  ('a0000000-0000-0000-0000-000000000003', 'b0000665-ka01-0000-0000-000000000000', 175),
  ('a0000000-0000-0000-0000-000000000003', 'b0000666-ka01-0000-0000-000000000000', 176),
  ('a0000000-0000-0000-0000-000000000003', 'b0000667-ka01-0000-0000-000000000000', 177),
  ('a0000000-0000-0000-0000-000000000003', 'b0000668-ka01-0000-0000-000000000000', 178),
  ('a0000000-0000-0000-0000-000000000003', 'b0000669-ka01-0000-0000-000000000000', 179),
  ('a0000000-0000-0000-0000-000000000003', 'b0000670-ka01-0000-0000-000000000000', 180),
  ('a0000000-0000-0000-0000-000000000003', 'b0000671-ka01-0000-0000-000000000000', 181),
  ('a0000000-0000-0000-0000-000000000003', 'b0000672-ka01-0000-0000-000000000000', 182),
  ('a0000000-0000-0000-0000-000000000003', 'b0000673-ka01-0000-0000-000000000000', 183),
  ('a0000000-0000-0000-0000-000000000003', 'b0000674-ka01-0000-0000-000000000000', 184),
  ('a0000000-0000-0000-0000-000000000003', 'b0000675-ka01-0000-0000-000000000000', 185),
  ('a0000000-0000-0000-0000-000000000003', 'b0000676-ka01-0000-0000-000000000000', 186),
  ('a0000000-0000-0000-0000-000000000003', 'b0000677-ka01-0000-0000-000000000000', 187),
  ('a0000000-0000-0000-0000-000000000003', 'b0000678-ka01-0000-0000-000000000000', 188),
  ('a0000000-0000-0000-0000-000000000003', 'b0000679-ka01-0000-0000-000000000000', 189),
  ('a0000000-0000-0000-0000-000000000003', 'b0000680-ka01-0000-0000-000000000000', 190),
  ('a0000000-0000-0000-0000-000000000003', 'b0000681-ka01-0000-0000-000000000000', 191),
  ('a0000000-0000-0000-0000-000000000003', 'b0000682-ka01-0000-0000-000000000000', 192),
  ('a0000000-0000-0000-0000-000000000003', 'b0000683-ka01-0000-0000-000000000000', 193),
  ('a0000000-0000-0000-0000-000000000003', 'b0000684-ka01-0000-0000-000000000000', 194),
  ('a0000000-0000-0000-0000-000000000003', 'b0000685-ka01-0000-0000-000000000000', 195),
  ('a0000000-0000-0000-0000-000000000003', 'b0000686-ka01-0000-0000-000000000000', 196),
  ('a0000000-0000-0000-0000-000000000003', 'b0000687-ka01-0000-0000-000000000000', 197),
  ('a0000000-0000-0000-0000-000000000003', 'b0000688-ka01-0000-0000-000000000000', 198),
  ('a0000000-0000-0000-0000-000000000003', 'b0000689-ka01-0000-0000-000000000000', 199),
  ('a0000000-0000-0000-0000-000000000003', 'b0000690-ka01-0000-0000-000000000000', 200),
  ('a0000000-0000-0000-0000-000000000003', 'b0000691-ka01-0000-0000-000000000000', 201),
  ('a0000000-0000-0000-0000-000000000003', 'b0000692-ka01-0000-0000-000000000000', 202),
  ('a0000000-0000-0000-0000-000000000003', 'b0000693-ka01-0000-0000-000000000000', 203),
  ('a0000000-0000-0000-0000-000000000003', 'b0000694-ka01-0000-0000-000000000000', 204),
  ('a0000000-0000-0000-0000-000000000003', 'b0000695-ka01-0000-0000-000000000000', 205),
  ('a0000000-0000-0000-0000-000000000003', 'b0000696-ka01-0000-0000-000000000000', 206),
  ('a0000000-0000-0000-0000-000000000003', 'b0000697-ka01-0000-0000-000000000000', 207),
  ('a0000000-0000-0000-0000-000000000003', 'b0000698-ka01-0000-0000-000000000000', 208),
  ('a0000000-0000-0000-0000-000000000003', 'b0000699-ka01-0000-0000-000000000000', 209),
  ('a0000000-0000-0000-0000-000000000003', 'b0000700-ka01-0000-0000-000000000000', 210),
  ('a0000000-0000-0000-0000-000000000003', 'b0000701-ka01-0000-0000-000000000000', 211),
  ('a0000000-0000-0000-0000-000000000003', 'b0000702-ka01-0000-0000-000000000000', 212),
  ('a0000000-0000-0000-0000-000000000003', 'b0000703-ka01-0000-0000-000000000000', 213),
  ('a0000000-0000-0000-0000-000000000003', 'b0000704-ka01-0000-0000-000000000000', 214),
  ('a0000000-0000-0000-0000-000000000003', 'b0000705-ka01-0000-0000-000000000000', 215),
  ('a0000000-0000-0000-0000-000000000003', 'b0000706-ka01-0000-0000-000000000000', 216),
  ('a0000000-0000-0000-0000-000000000003', 'b0000707-ka01-0000-0000-000000000000', 217),
  ('a0000000-0000-0000-0000-000000000003', 'b0000708-ka01-0000-0000-000000000000', 218),
  ('a0000000-0000-0000-0000-000000000003', 'b0000709-ka01-0000-0000-000000000000', 219),
  ('a0000000-0000-0000-0000-000000000003', 'b0000710-ka01-0000-0000-000000000000', 220),
  ('a0000000-0000-0000-0000-000000000003', 'b0000711-ka01-0000-0000-000000000000', 221),
  ('a0000000-0000-0000-0000-000000000003', 'b0000712-ka01-0000-0000-000000000000', 222),
  ('a0000000-0000-0000-0000-000000000003', 'b0000713-ka01-0000-0000-000000000000', 223),
  ('a0000000-0000-0000-0000-000000000003', 'b0000714-ka01-0000-0000-000000000000', 224),
  ('a0000000-0000-0000-0000-000000000003', 'b0000715-ka01-0000-0000-000000000000', 225),
  ('a0000000-0000-0000-0000-000000000003', 'b0000716-ka01-0000-0000-000000000000', 226),
  ('a0000000-0000-0000-0000-000000000003', 'b0000717-ka01-0000-0000-000000000000', 227),
  ('a0000000-0000-0000-0000-000000000003', 'b0000718-ka01-0000-0000-000000000000', 228),
  ('a0000000-0000-0000-0000-000000000003', 'b0000719-ka01-0000-0000-000000000000', 229),
  ('a0000000-0000-0000-0000-000000000003', 'b0000720-ka01-0000-0000-000000000000', 230),
  ('a0000000-0000-0000-0000-000000000003', 'b0000721-ka01-0000-0000-000000000000', 231),
  ('a0000000-0000-0000-0000-000000000003', 'b0000722-ka01-0000-0000-000000000000', 232),
  ('a0000000-0000-0000-0000-000000000003', 'b0000723-ka01-0000-0000-000000000000', 233),
  ('a0000000-0000-0000-0000-000000000003', 'b0000724-ka01-0000-0000-000000000000', 234),
  ('a0000000-0000-0000-0000-000000000003', 'b0000725-ka01-0000-0000-000000000000', 235),
  ('a0000000-0000-0000-0000-000000000003', 'b0000726-ka01-0000-0000-000000000000', 236),
  ('a0000000-0000-0000-0000-000000000003', 'b0000727-ka01-0000-0000-000000000000', 237),
  ('a0000000-0000-0000-0000-000000000003', 'b0000728-ka01-0000-0000-000000000000', 238),
  ('a0000000-0000-0000-0000-000000000003', 'b0000729-ka01-0000-0000-000000000000', 239),
  ('a0000000-0000-0000-0000-000000000003', 'b0000730-ka01-0000-0000-000000000000', 240),
  ('a0000000-0000-0000-0000-000000000003', 'b0000731-ka01-0000-0000-000000000000', 241),
  ('a0000000-0000-0000-0000-000000000003', 'b0000732-ka01-0000-0000-000000000000', 242),
  ('a0000000-0000-0000-0000-000000000003', 'b0000733-ka01-0000-0000-000000000000', 243),
  ('a0000000-0000-0000-0000-000000000003', 'b0000734-ka01-0000-0000-000000000000', 244),
  ('a0000000-0000-0000-0000-000000000003', 'b0000735-ka01-0000-0000-000000000000', 245),
  ('a0000000-0000-0000-0000-000000000003', 'b0000736-ka01-0000-0000-000000000000', 246),
  ('a0000000-0000-0000-0000-000000000003', 'b0000737-ka01-0000-0000-000000000000', 247),
  ('a0000000-0000-0000-0000-000000000003', 'b0000738-ka01-0000-0000-000000000000', 248),
  ('a0000000-0000-0000-0000-000000000003', 'b0000739-ka01-0000-0000-000000000000', 249),
  ('a0000000-0000-0000-0000-000000000003', 'b0000740-ka01-0000-0000-000000000000', 250),
  ('a0000000-0000-0000-0000-000000000003', 'b0000741-ka01-0000-0000-000000000000', 251),
  ('a0000000-0000-0000-0000-000000000003', 'b0000742-ka01-0000-0000-000000000000', 252),
  ('a0000000-0000-0000-0000-000000000003', 'b0000743-ka01-0000-0000-000000000000', 253),
  ('a0000000-0000-0000-0000-000000000003', 'b0000744-ka01-0000-0000-000000000000', 254),
  ('a0000000-0000-0000-0000-000000000003', 'b0000745-ka01-0000-0000-000000000000', 255),
  ('a0000000-0000-0000-0000-000000000003', 'b0000746-ka01-0000-0000-000000000000', 256),
  ('a0000000-0000-0000-0000-000000000003', 'b0000747-ka01-0000-0000-000000000000', 257),
  ('a0000000-0000-0000-0000-000000000003', 'b0000748-ka01-0000-0000-000000000000', 258),
  ('a0000000-0000-0000-0000-000000000003', 'b0000749-ka01-0000-0000-000000000000', 259),
  ('a0000000-0000-0000-0000-000000000003', 'b0000750-ka01-0000-0000-000000000000', 260),
  ('a0000000-0000-0000-0000-000000000003', 'b0000751-ka01-0000-0000-000000000000', 261),
  ('a0000000-0000-0000-0000-000000000003', 'b0000752-ka01-0000-0000-000000000000', 262),
  ('a0000000-0000-0000-0000-000000000003', 'b0000753-ka01-0000-0000-000000000000', 263),
  ('a0000000-0000-0000-0000-000000000003', 'b0000754-ka01-0000-0000-000000000000', 264),
  ('a0000000-0000-0000-0000-000000000003', 'b0000755-ka01-0000-0000-000000000000', 265),
  ('a0000000-0000-0000-0000-000000000003', 'b0000756-ka01-0000-0000-000000000000', 266),
  ('a0000000-0000-0000-0000-000000000003', 'b0000757-ka01-0000-0000-000000000000', 267),
  ('a0000000-0000-0000-0000-000000000003', 'b0000758-ka01-0000-0000-000000000000', 268),
  ('a0000000-0000-0000-0000-000000000003', 'b0000759-ka01-0000-0000-000000000000', 269),
  ('a0000000-0000-0000-0000-000000000003', 'b0000760-ka01-0000-0000-000000000000', 270),
  ('a0000000-0000-0000-0000-000000000003', 'b0000761-ka01-0000-0000-000000000000', 271),
  ('a0000000-0000-0000-0000-000000000003', 'b0000762-ka01-0000-0000-000000000000', 272),
  ('a0000000-0000-0000-0000-000000000003', 'b0000763-ka01-0000-0000-000000000000', 273),
  ('a0000000-0000-0000-0000-000000000003', 'b0000764-ka01-0000-0000-000000000000', 274),
  ('a0000000-0000-0000-0000-000000000003', 'b0000765-ka01-0000-0000-000000000000', 275),
  ('a0000000-0000-0000-0000-000000000003', 'b0000766-ka01-0000-0000-000000000000', 276),
  ('a0000000-0000-0000-0000-000000000003', 'b0000767-ka01-0000-0000-000000000000', 277),
  ('a0000000-0000-0000-0000-000000000003', 'b0000768-ka01-0000-0000-000000000000', 278),
  ('a0000000-0000-0000-0000-000000000003', 'b0000769-ka01-0000-0000-000000000000', 279),
  ('a0000000-0000-0000-0000-000000000003', 'b0000770-ka01-0000-0000-000000000000', 280),
  ('a0000000-0000-0000-0000-000000000003', 'b0000771-ka01-0000-0000-000000000000', 281),
  ('a0000000-0000-0000-0000-000000000003', 'b0000772-ka01-0000-0000-000000000000', 282),
  ('a0000000-0000-0000-0000-000000000003', 'b0000773-ka01-0000-0000-000000000000', 283),
  ('a0000000-0000-0000-0000-000000000003', 'b0000774-ka01-0000-0000-000000000000', 284),
  ('a0000000-0000-0000-0000-000000000003', 'b0000775-ka01-0000-0000-000000000000', 285),
  ('a0000000-0000-0000-0000-000000000003', 'b0000776-ka01-0000-0000-000000000000', 286),
  ('a0000000-0000-0000-0000-000000000003', 'b0000777-ka01-0000-0000-000000000000', 287),
  ('a0000000-0000-0000-0000-000000000003', 'b0000778-ka01-0000-0000-000000000000', 288),
  ('a0000000-0000-0000-0000-000000000003', 'b0000779-ka01-0000-0000-000000000000', 289),
  ('a0000000-0000-0000-0000-000000000003', 'b0000780-ka01-0000-0000-000000000000', 290),
  ('a0000000-0000-0000-0000-000000000003', 'b0000781-ka01-0000-0000-000000000000', 291),
  ('a0000000-0000-0000-0000-000000000003', 'b0000782-ka01-0000-0000-000000000000', 292),
  ('a0000000-0000-0000-0000-000000000003', 'b0000783-ka01-0000-0000-000000000000', 293),
  ('a0000000-0000-0000-0000-000000000003', 'b0000784-ka01-0000-0000-000000000000', 294),
  ('a0000000-0000-0000-0000-000000000003', 'b0000785-ka01-0000-0000-000000000000', 295),
  ('a0000000-0000-0000-0000-000000000003', 'b0000786-ka01-0000-0000-000000000000', 296),
  ('a0000000-0000-0000-0000-000000000003', 'b0000787-ka01-0000-0000-000000000000', 297),
  ('a0000000-0000-0000-0000-000000000003', 'b0000788-ka01-0000-0000-000000000000', 298),
  ('a0000000-0000-0000-0000-000000000003', 'b0000789-ka01-0000-0000-000000000000', 299)
;

INSERT INTO word_book_items (book_id, word_id, sort_order) VALUES
  ('a0000000-0000-0000-0000-000000000004', 'b0000000-ce14-0000-0000-000000000000', 0),
  ('a0000000-0000-0000-0000-000000000004', 'b0000001-ce14-0000-0000-000000000000', 1),
  ('a0000000-0000-0000-0000-000000000004', 'b0000003-ce14-0000-0000-000000000000', 2),
  ('a0000000-0000-0000-0000-000000000004', 'b0000004-ce14-0000-0000-000000000000', 3),
  ('a0000000-0000-0000-0000-000000000004', 'b0000005-ce14-0000-0000-000000000000', 4),
  ('a0000000-0000-0000-0000-000000000004', 'b0000007-ce14-0000-0000-000000000000', 5),
  ('a0000000-0000-0000-0000-000000000004', 'b0000009-ce14-0000-0000-000000000000', 6),
  ('a0000000-0000-0000-0000-000000000004', 'b0000011-ce14-0000-0000-000000000000', 7),
  ('a0000000-0000-0000-0000-000000000004', 'b0000013-ce14-0000-0000-000000000000', 8),
  ('a0000000-0000-0000-0000-000000000004', 'b0000016-ce14-0000-0000-000000000000', 9),
  ('a0000000-0000-0000-0000-000000000004', 'b0000018-ce14-0000-0000-000000000000', 10),
  ('a0000000-0000-0000-0000-000000000004', 'b0000019-ce14-0000-0000-000000000000', 11),
  ('a0000000-0000-0000-0000-000000000004', 'b0000020-ce14-0000-0000-000000000000', 12),
  ('a0000000-0000-0000-0000-000000000004', 'b0000021-ce14-0000-0000-000000000000', 13),
  ('a0000000-0000-0000-0000-000000000004', 'b0000022-ce14-0000-0000-000000000000', 14),
  ('a0000000-0000-0000-0000-000000000004', 'b0000023-ce14-0000-0000-000000000000', 15),
  ('a0000000-0000-0000-0000-000000000004', 'b0000031-ce14-0000-0000-000000000000', 16),
  ('a0000000-0000-0000-0000-000000000004', 'b0000032-ce14-0000-0000-000000000000', 17),
  ('a0000000-0000-0000-0000-000000000004', 'b0000033-ce14-0000-0000-000000000000', 18),
  ('a0000000-0000-0000-0000-000000000004', 'b0000039-ce14-0000-0000-000000000000', 19),
  ('a0000000-0000-0000-0000-000000000004', 'b0000041-ce14-0000-0000-000000000000', 20),
  ('a0000000-0000-0000-0000-000000000004', 'b0000042-ce14-0000-0000-000000000000', 21),
  ('a0000000-0000-0000-0000-000000000004', 'b0000044-ce14-0000-0000-000000000000', 22),
  ('a0000000-0000-0000-0000-000000000004', 'b0000047-ce14-0000-0000-000000000000', 23),
  ('a0000000-0000-0000-0000-000000000004', 'b0000052-ce14-0000-0000-000000000000', 24),
  ('a0000000-0000-0000-0000-000000000004', 'b0000055-ce14-0000-0000-000000000000', 25),
  ('a0000000-0000-0000-0000-000000000004', 'b0000061-ce14-0000-0000-000000000000', 26),
  ('a0000000-0000-0000-0000-000000000004', 'b0000062-ce14-0000-0000-000000000000', 27),
  ('a0000000-0000-0000-0000-000000000004', 'b0000063-ce14-0000-0000-000000000000', 28),
  ('a0000000-0000-0000-0000-000000000004', 'b0000064-ce14-0000-0000-000000000000', 29),
  ('a0000000-0000-0000-0000-000000000004', 'b0000068-ce14-0000-0000-000000000000', 30),
  ('a0000000-0000-0000-0000-000000000004', 'b0000069-ce14-0000-0000-000000000000', 31),
  ('a0000000-0000-0000-0000-000000000004', 'b0000070-ce14-0000-0000-000000000000', 32),
  ('a0000000-0000-0000-0000-000000000004', 'b0000072-ce14-0000-0000-000000000000', 33),
  ('a0000000-0000-0000-0000-000000000004', 'b0000073-ce14-0000-0000-000000000000', 34),
  ('a0000000-0000-0000-0000-000000000004', 'b0000074-ce14-0000-0000-000000000000', 35),
  ('a0000000-0000-0000-0000-000000000004', 'b0000075-ce14-0000-0000-000000000000', 36),
  ('a0000000-0000-0000-0000-000000000004', 'b0000076-ce14-0000-0000-000000000000', 37),
  ('a0000000-0000-0000-0000-000000000004', 'b0000077-ce14-0000-0000-000000000000', 38),
  ('a0000000-0000-0000-0000-000000000004', 'b0000082-ce14-0000-0000-000000000000', 39),
  ('a0000000-0000-0000-0000-000000000004', 'b0000084-ce14-0000-0000-000000000000', 40),
  ('a0000000-0000-0000-0000-000000000004', 'b0000086-ce14-0000-0000-000000000000', 41),
  ('a0000000-0000-0000-0000-000000000004', 'b0000090-ce14-0000-0000-000000000000', 42),
  ('a0000000-0000-0000-0000-000000000004', 'b0000095-ce14-0000-0000-000000000000', 43),
  ('a0000000-0000-0000-0000-000000000004', 'b0000104-ce14-0000-0000-000000000000', 44),
  ('a0000000-0000-0000-0000-000000000004', 'b0000108-ce14-0000-0000-000000000000', 45),
  ('a0000000-0000-0000-0000-000000000004', 'b0000113-ce14-0000-0000-000000000000', 46),
  ('a0000000-0000-0000-0000-000000000004', 'b0000117-ce14-0000-0000-000000000000', 47),
  ('a0000000-0000-0000-0000-000000000004', 'b0000123-ce14-0000-0000-000000000000', 48),
  ('a0000000-0000-0000-0000-000000000004', 'b0000124-ce14-0000-0000-000000000000', 49),
  ('a0000000-0000-0000-0000-000000000004', 'b0000128-ce14-0000-0000-000000000000', 50),
  ('a0000000-0000-0000-0000-000000000004', 'b0000130-ce14-0000-0000-000000000000', 51),
  ('a0000000-0000-0000-0000-000000000004', 'b0000140-ce14-0000-0000-000000000000', 52),
  ('a0000000-0000-0000-0000-000000000004', 'b0000143-ce14-0000-0000-000000000000', 53),
  ('a0000000-0000-0000-0000-000000000004', 'b0000144-ce14-0000-0000-000000000000', 54),
  ('a0000000-0000-0000-0000-000000000004', 'b0000146-ce14-0000-0000-000000000000', 55),
  ('a0000000-0000-0000-0000-000000000004', 'b0000147-ce14-0000-0000-000000000000', 56),
  ('a0000000-0000-0000-0000-000000000004', 'b0000148-ce14-0000-0000-000000000000', 57),
  ('a0000000-0000-0000-0000-000000000004', 'b0000149-ce14-0000-0000-000000000000', 58),
  ('a0000000-0000-0000-0000-000000000004', 'b0000150-ce14-0000-0000-000000000000', 59),
  ('a0000000-0000-0000-0000-000000000004', 'b0000153-ce14-0000-0000-000000000000', 60),
  ('a0000000-0000-0000-0000-000000000004', 'b0000154-ce14-0000-0000-000000000000', 61),
  ('a0000000-0000-0000-0000-000000000004', 'b0000155-ce14-0000-0000-000000000000', 62),
  ('a0000000-0000-0000-0000-000000000004', 'b0000158-ce14-0000-0000-000000000000', 63),
  ('a0000000-0000-0000-0000-000000000004', 'b0000159-ce14-0000-0000-000000000000', 64),
  ('a0000000-0000-0000-0000-000000000004', 'b0000162-ce14-0000-0000-000000000000', 65),
  ('a0000000-0000-0000-0000-000000000004', 'b0000163-ce14-0000-0000-000000000000', 66),
  ('a0000000-0000-0000-0000-000000000004', 'b0000166-ce14-0000-0000-000000000000', 67),
  ('a0000000-0000-0000-0000-000000000004', 'b0000167-ce14-0000-0000-000000000000', 68),
  ('a0000000-0000-0000-0000-000000000004', 'b0000169-ce14-0000-0000-000000000000', 69),
  ('a0000000-0000-0000-0000-000000000004', 'b0000171-ce14-0000-0000-000000000000', 70),
  ('a0000000-0000-0000-0000-000000000004', 'b0000173-ce14-0000-0000-000000000000', 71),
  ('a0000000-0000-0000-0000-000000000004', 'b0000174-ce14-0000-0000-000000000000', 72),
  ('a0000000-0000-0000-0000-000000000004', 'b0000177-ce14-0000-0000-000000000000', 73),
  ('a0000000-0000-0000-0000-000000000004', 'b0000178-ce14-0000-0000-000000000000', 74),
  ('a0000000-0000-0000-0000-000000000004', 'b0000183-ce14-0000-0000-000000000000', 75),
  ('a0000000-0000-0000-0000-000000000004', 'b0000184-ce14-0000-0000-000000000000', 76),
  ('a0000000-0000-0000-0000-000000000004', 'b0000185-ce14-0000-0000-000000000000', 77),
  ('a0000000-0000-0000-0000-000000000004', 'b0000186-ce14-0000-0000-000000000000', 78),
  ('a0000000-0000-0000-0000-000000000004', 'b0000187-ce14-0000-0000-000000000000', 79),
  ('a0000000-0000-0000-0000-000000000004', 'b0000188-ce14-0000-0000-000000000000', 80),
  ('a0000000-0000-0000-0000-000000000004', 'b0000191-ce14-0000-0000-000000000000', 81),
  ('a0000000-0000-0000-0000-000000000004', 'b0000192-ce14-0000-0000-000000000000', 82),
  ('a0000000-0000-0000-0000-000000000004', 'b0000193-ce14-0000-0000-000000000000', 83),
  ('a0000000-0000-0000-0000-000000000004', 'b0000194-ce14-0000-0000-000000000000', 84),
  ('a0000000-0000-0000-0000-000000000004', 'b0000196-ce14-0000-0000-000000000000', 85),
  ('a0000000-0000-0000-0000-000000000004', 'b0000197-ce14-0000-0000-000000000000', 86),
  ('a0000000-0000-0000-0000-000000000004', 'b0000199-ce14-0000-0000-000000000000', 87),
  ('a0000000-0000-0000-0000-000000000004', 'b0000200-ce14-0000-0000-000000000000', 88),
  ('a0000000-0000-0000-0000-000000000004', 'b0000202-ce14-0000-0000-000000000000', 89),
  ('a0000000-0000-0000-0000-000000000004', 'b0000203-ce14-0000-0000-000000000000', 90),
  ('a0000000-0000-0000-0000-000000000004', 'b0000216-ce14-0000-0000-000000000000', 91),
  ('a0000000-0000-0000-0000-000000000004', 'b0000217-ce14-0000-0000-000000000000', 92),
  ('a0000000-0000-0000-0000-000000000004', 'b0000221-ce14-0000-0000-000000000000', 93),
  ('a0000000-0000-0000-0000-000000000004', 'b0000223-ce14-0000-0000-000000000000', 94),
  ('a0000000-0000-0000-0000-000000000004', 'b0000228-ce14-0000-0000-000000000000', 95),
  ('a0000000-0000-0000-0000-000000000004', 'b0000231-ce14-0000-0000-000000000000', 96),
  ('a0000000-0000-0000-0000-000000000004', 'b0000234-ce14-0000-0000-000000000000', 97),
  ('a0000000-0000-0000-0000-000000000004', 'b0000235-ce14-0000-0000-000000000000', 98),
  ('a0000000-0000-0000-0000-000000000004', 'b0000241-ce14-0000-0000-000000000000', 99),
  ('a0000000-0000-0000-0000-000000000004', 'b0000242-ce14-0000-0000-000000000000', 100),
  ('a0000000-0000-0000-0000-000000000004', 'b0000244-ce14-0000-0000-000000000000', 101),
  ('a0000000-0000-0000-0000-000000000004', 'b0000247-ce14-0000-0000-000000000000', 102),
  ('a0000000-0000-0000-0000-000000000004', 'b0000250-ce14-0000-0000-000000000000', 103),
  ('a0000000-0000-0000-0000-000000000004', 'b0000254-ce14-0000-0000-000000000000', 104),
  ('a0000000-0000-0000-0000-000000000004', 'b0000255-ce14-0000-0000-000000000000', 105),
  ('a0000000-0000-0000-0000-000000000004', 'b0000258-ce14-0000-0000-000000000000', 106),
  ('a0000000-0000-0000-0000-000000000004', 'b0000261-ce14-0000-0000-000000000000', 107),
  ('a0000000-0000-0000-0000-000000000004', 'b0000262-ce14-0000-0000-000000000000', 108),
  ('a0000000-0000-0000-0000-000000000004', 'b0000264-ce14-0000-0000-000000000000', 109),
  ('a0000000-0000-0000-0000-000000000004', 'b0000265-ce14-0000-0000-000000000000', 110),
  ('a0000000-0000-0000-0000-000000000004', 'b0000271-ce14-0000-0000-000000000000', 111),
  ('a0000000-0000-0000-0000-000000000004', 'b0000272-ce14-0000-0000-000000000000', 112),
  ('a0000000-0000-0000-0000-000000000004', 'b0000273-ce14-0000-0000-000000000000', 113),
  ('a0000000-0000-0000-0000-000000000004', 'b0000274-ce14-0000-0000-000000000000', 114),
  ('a0000000-0000-0000-0000-000000000004', 'b0000275-ce14-0000-0000-000000000000', 115),
  ('a0000000-0000-0000-0000-000000000004', 'b0000276-ce14-0000-0000-000000000000', 116),
  ('a0000000-0000-0000-0000-000000000004', 'b0000279-ce14-0000-0000-000000000000', 117),
  ('a0000000-0000-0000-0000-000000000004', 'b0000285-ce14-0000-0000-000000000000', 118),
  ('a0000000-0000-0000-0000-000000000004', 'b0000289-ce14-0000-0000-000000000000', 119),
  ('a0000000-0000-0000-0000-000000000004', 'b0000292-ce14-0000-0000-000000000000', 120),
  ('a0000000-0000-0000-0000-000000000004', 'b0000293-ce14-0000-0000-000000000000', 121),
  ('a0000000-0000-0000-0000-000000000004', 'b0000295-ce14-0000-0000-000000000000', 122),
  ('a0000000-0000-0000-0000-000000000004', 'b0000299-ce14-0000-0000-000000000000', 123),
  ('a0000000-0000-0000-0000-000000000004', 'b0000331-ce16-0000-0000-000000000000', 124),
  ('a0000000-0000-0000-0000-000000000004', 'b0000338-ce16-0000-0000-000000000000', 125),
  ('a0000000-0000-0000-0000-000000000004', 'b0000380-ce16-0000-0000-000000000000', 126),
  ('a0000000-0000-0000-0000-000000000004', 'b0000419-ce16-0000-0000-000000000000', 127),
  ('a0000000-0000-0000-0000-000000000004', 'b0000421-ce16-0000-0000-000000000000', 128),
  ('a0000000-0000-0000-0000-000000000004', 'b0000423-ce16-0000-0000-000000000000', 129),
  ('a0000000-0000-0000-0000-000000000004', 'b0000425-ce16-0000-0000-000000000000', 130),
  ('a0000000-0000-0000-0000-000000000004', 'b0000427-ce16-0000-0000-000000000000', 131),
  ('a0000000-0000-0000-0000-000000000004', 'b0000447-ce16-0000-0000-000000000000', 132),
  ('a0000000-0000-0000-0000-000000000004', 'b0000458-ce16-0000-0000-000000000000', 133),
  ('a0000000-0000-0000-0000-000000000004', 'b0000462-ce16-0000-0000-000000000000', 134),
  ('a0000000-0000-0000-0000-000000000004', 'b0000485-ce16-0000-0000-000000000000', 135),
  ('a0000000-0000-0000-0000-000000000004', 'b0000595-ka01-0000-0000-000000000000', 136),
  ('a0000000-0000-0000-0000-000000000004', 'b0000597-ka01-0000-0000-000000000000', 137),
  ('a0000000-0000-0000-0000-000000000004', 'b0000617-ka01-0000-0000-000000000000', 138),
  ('a0000000-0000-0000-0000-000000000004', 'b0000618-ka01-0000-0000-000000000000', 139),
  ('a0000000-0000-0000-0000-000000000004', 'b0000620-ka01-0000-0000-000000000000', 140),
  ('a0000000-0000-0000-0000-000000000004', 'b0000621-ka01-0000-0000-000000000000', 141),
  ('a0000000-0000-0000-0000-000000000004', 'b0000626-ka01-0000-0000-000000000000', 142),
  ('a0000000-0000-0000-0000-000000000004', 'b0000655-ka01-0000-0000-000000000000', 143),
  ('a0000000-0000-0000-0000-000000000004', 'b0000659-ka01-0000-0000-000000000000', 144),
  ('a0000000-0000-0000-0000-000000000004', 'b0000660-ka01-0000-0000-000000000000', 145),
  ('a0000000-0000-0000-0000-000000000004', 'b0000661-ka01-0000-0000-000000000000', 146),
  ('a0000000-0000-0000-0000-000000000004', 'b0000663-ka01-0000-0000-000000000000', 147),
  ('a0000000-0000-0000-0000-000000000004', 'b0000664-ka01-0000-0000-000000000000', 148),
  ('a0000000-0000-0000-0000-000000000004', 'b0000666-ka01-0000-0000-000000000000', 149),
  ('a0000000-0000-0000-0000-000000000004', 'b0000667-ka01-0000-0000-000000000000', 150),
  ('a0000000-0000-0000-0000-000000000004', 'b0000670-ka01-0000-0000-000000000000', 151),
  ('a0000000-0000-0000-0000-000000000004', 'b0000673-ka01-0000-0000-000000000000', 152),
  ('a0000000-0000-0000-0000-000000000004', 'b0000677-ka01-0000-0000-000000000000', 153),
  ('a0000000-0000-0000-0000-000000000004', 'b0000681-ka01-0000-0000-000000000000', 154),
  ('a0000000-0000-0000-0000-000000000004', 'b0000683-ka01-0000-0000-000000000000', 155),
  ('a0000000-0000-0000-0000-000000000004', 'b0000684-ka01-0000-0000-000000000000', 156),
  ('a0000000-0000-0000-0000-000000000004', 'b0000689-ka01-0000-0000-000000000000', 157),
  ('a0000000-0000-0000-0000-000000000004', 'b0000690-ka01-0000-0000-000000000000', 158),
  ('a0000000-0000-0000-0000-000000000004', 'b0000692-ka01-0000-0000-000000000000', 159),
  ('a0000000-0000-0000-0000-000000000004', 'b0000694-ka01-0000-0000-000000000000', 160),
  ('a0000000-0000-0000-0000-000000000004', 'b0000697-ka01-0000-0000-000000000000', 161),
  ('a0000000-0000-0000-0000-000000000004', 'b0000698-ka01-0000-0000-000000000000', 162),
  ('a0000000-0000-0000-0000-000000000004', 'b0000699-ka01-0000-0000-000000000000', 163),
  ('a0000000-0000-0000-0000-000000000004', 'b0000700-ka01-0000-0000-000000000000', 164),
  ('a0000000-0000-0000-0000-000000000004', 'b0000702-ka01-0000-0000-000000000000', 165),
  ('a0000000-0000-0000-0000-000000000004', 'b0000703-ka01-0000-0000-000000000000', 166),
  ('a0000000-0000-0000-0000-000000000004', 'b0000704-ka01-0000-0000-000000000000', 167),
  ('a0000000-0000-0000-0000-000000000004', 'b0000707-ka01-0000-0000-000000000000', 168),
  ('a0000000-0000-0000-0000-000000000004', 'b0000708-ka01-0000-0000-000000000000', 169),
  ('a0000000-0000-0000-0000-000000000004', 'b0000709-ka01-0000-0000-000000000000', 170),
  ('a0000000-0000-0000-0000-000000000004', 'b0000711-ka01-0000-0000-000000000000', 171),
  ('a0000000-0000-0000-0000-000000000004', 'b0000715-ka01-0000-0000-000000000000', 172),
  ('a0000000-0000-0000-0000-000000000004', 'b0000716-ka01-0000-0000-000000000000', 173),
  ('a0000000-0000-0000-0000-000000000004', 'b0000717-ka01-0000-0000-000000000000', 174),
  ('a0000000-0000-0000-0000-000000000004', 'b0000719-ka01-0000-0000-000000000000', 175),
  ('a0000000-0000-0000-0000-000000000004', 'b0000721-ka01-0000-0000-000000000000', 176),
  ('a0000000-0000-0000-0000-000000000004', 'b0000722-ka01-0000-0000-000000000000', 177),
  ('a0000000-0000-0000-0000-000000000004', 'b0000724-ka01-0000-0000-000000000000', 178),
  ('a0000000-0000-0000-0000-000000000004', 'b0000725-ka01-0000-0000-000000000000', 179),
  ('a0000000-0000-0000-0000-000000000004', 'b0000727-ka01-0000-0000-000000000000', 180),
  ('a0000000-0000-0000-0000-000000000004', 'b0000729-ka01-0000-0000-000000000000', 181),
  ('a0000000-0000-0000-0000-000000000004', 'b0000732-ka01-0000-0000-000000000000', 182),
  ('a0000000-0000-0000-0000-000000000004', 'b0000733-ka01-0000-0000-000000000000', 183),
  ('a0000000-0000-0000-0000-000000000004', 'b0000735-ka01-0000-0000-000000000000', 184),
  ('a0000000-0000-0000-0000-000000000004', 'b0000736-ka01-0000-0000-000000000000', 185),
  ('a0000000-0000-0000-0000-000000000004', 'b0000740-ka01-0000-0000-000000000000', 186),
  ('a0000000-0000-0000-0000-000000000004', 'b0000790-ie01-0000-0000-000000000000', 187),
  ('a0000000-0000-0000-0000-000000000004', 'b0000791-ie01-0000-0000-000000000000', 188),
  ('a0000000-0000-0000-0000-000000000004', 'b0000792-ie01-0000-0000-000000000000', 189),
  ('a0000000-0000-0000-0000-000000000004', 'b0000793-ie01-0000-0000-000000000000', 190),
  ('a0000000-0000-0000-0000-000000000004', 'b0000794-ie01-0000-0000-000000000000', 191),
  ('a0000000-0000-0000-0000-000000000004', 'b0000795-ie01-0000-0000-000000000000', 192),
  ('a0000000-0000-0000-0000-000000000004', 'b0000796-ie01-0000-0000-000000000000', 193),
  ('a0000000-0000-0000-0000-000000000004', 'b0000797-ie01-0000-0000-000000000000', 194),
  ('a0000000-0000-0000-0000-000000000004', 'b0000798-ie01-0000-0000-000000000000', 195),
  ('a0000000-0000-0000-0000-000000000004', 'b0000799-ie01-0000-0000-000000000000', 196),
  ('a0000000-0000-0000-0000-000000000004', 'b0000800-ie01-0000-0000-000000000000', 197),
  ('a0000000-0000-0000-0000-000000000004', 'b0000801-ie01-0000-0000-000000000000', 198),
  ('a0000000-0000-0000-0000-000000000004', 'b0000802-ie01-0000-0000-000000000000', 199),
  ('a0000000-0000-0000-0000-000000000004', 'b0000803-ie01-0000-0000-000000000000', 200),
  ('a0000000-0000-0000-0000-000000000004', 'b0000804-ie01-0000-0000-000000000000', 201),
  ('a0000000-0000-0000-0000-000000000004', 'b0000805-ie01-0000-0000-000000000000', 202),
  ('a0000000-0000-0000-0000-000000000004', 'b0000806-ie01-0000-0000-000000000000', 203),
  ('a0000000-0000-0000-0000-000000000004', 'b0000807-ie01-0000-0000-000000000000', 204),
  ('a0000000-0000-0000-0000-000000000004', 'b0000808-ie01-0000-0000-000000000000', 205),
  ('a0000000-0000-0000-0000-000000000004', 'b0000809-ie01-0000-0000-000000000000', 206),
  ('a0000000-0000-0000-0000-000000000004', 'b0000810-ie01-0000-0000-000000000000', 207),
  ('a0000000-0000-0000-0000-000000000004', 'b0000811-ie01-0000-0000-000000000000', 208),
  ('a0000000-0000-0000-0000-000000000004', 'b0000812-ie01-0000-0000-000000000000', 209),
  ('a0000000-0000-0000-0000-000000000004', 'b0000813-ie01-0000-0000-000000000000', 210),
  ('a0000000-0000-0000-0000-000000000004', 'b0000814-ie01-0000-0000-000000000000', 211),
  ('a0000000-0000-0000-0000-000000000004', 'b0000815-ie01-0000-0000-000000000000', 212),
  ('a0000000-0000-0000-0000-000000000004', 'b0000816-ie01-0000-0000-000000000000', 213),
  ('a0000000-0000-0000-0000-000000000004', 'b0000817-ie01-0000-0000-000000000000', 214),
  ('a0000000-0000-0000-0000-000000000004', 'b0000818-ie01-0000-0000-000000000000', 215),
  ('a0000000-0000-0000-0000-000000000004', 'b0000819-ie01-0000-0000-000000000000', 216),
  ('a0000000-0000-0000-0000-000000000004', 'b0000820-ie01-0000-0000-000000000000', 217),
  ('a0000000-0000-0000-0000-000000000004', 'b0000821-ie01-0000-0000-000000000000', 218),
  ('a0000000-0000-0000-0000-000000000004', 'b0000822-ie01-0000-0000-000000000000', 219),
  ('a0000000-0000-0000-0000-000000000004', 'b0000823-ie01-0000-0000-000000000000', 220),
  ('a0000000-0000-0000-0000-000000000004', 'b0000824-ie01-0000-0000-000000000000', 221),
  ('a0000000-0000-0000-0000-000000000004', 'b0000825-ie01-0000-0000-000000000000', 222),
  ('a0000000-0000-0000-0000-000000000004', 'b0000826-ie01-0000-0000-000000000000', 223),
  ('a0000000-0000-0000-0000-000000000004', 'b0000827-ie01-0000-0000-000000000000', 224),
  ('a0000000-0000-0000-0000-000000000004', 'b0000828-ie01-0000-0000-000000000000', 225),
  ('a0000000-0000-0000-0000-000000000004', 'b0000829-ie01-0000-0000-000000000000', 226),
  ('a0000000-0000-0000-0000-000000000004', 'b0000830-ie01-0000-0000-000000000000', 227),
  ('a0000000-0000-0000-0000-000000000004', 'b0000831-ie01-0000-0000-000000000000', 228),
  ('a0000000-0000-0000-0000-000000000004', 'b0000832-ie01-0000-0000-000000000000', 229),
  ('a0000000-0000-0000-0000-000000000004', 'b0000833-ie01-0000-0000-000000000000', 230),
  ('a0000000-0000-0000-0000-000000000004', 'b0000834-ie01-0000-0000-000000000000', 231),
  ('a0000000-0000-0000-0000-000000000004', 'b0000835-ie01-0000-0000-000000000000', 232),
  ('a0000000-0000-0000-0000-000000000004', 'b0000836-ie01-0000-0000-000000000000', 233),
  ('a0000000-0000-0000-0000-000000000004', 'b0000837-ie01-0000-0000-000000000000', 234),
  ('a0000000-0000-0000-0000-000000000004', 'b0000838-ie01-0000-0000-000000000000', 235),
  ('a0000000-0000-0000-0000-000000000004', 'b0000839-ie01-0000-0000-000000000000', 236),
  ('a0000000-0000-0000-0000-000000000004', 'b0000840-ie01-0000-0000-000000000000', 237),
  ('a0000000-0000-0000-0000-000000000004', 'b0000841-ie01-0000-0000-000000000000', 238),
  ('a0000000-0000-0000-0000-000000000004', 'b0000842-ie01-0000-0000-000000000000', 239),
  ('a0000000-0000-0000-0000-000000000004', 'b0000843-ie01-0000-0000-000000000000', 240),
  ('a0000000-0000-0000-0000-000000000004', 'b0000844-ie01-0000-0000-000000000000', 241),
  ('a0000000-0000-0000-0000-000000000004', 'b0000845-ie01-0000-0000-000000000000', 242),
  ('a0000000-0000-0000-0000-000000000004', 'b0000846-ie01-0000-0000-000000000000', 243),
  ('a0000000-0000-0000-0000-000000000004', 'b0000847-ie01-0000-0000-000000000000', 244),
  ('a0000000-0000-0000-0000-000000000004', 'b0000848-ie01-0000-0000-000000000000', 245),
  ('a0000000-0000-0000-0000-000000000004', 'b0000849-ie01-0000-0000-000000000000', 246),
  ('a0000000-0000-0000-0000-000000000004', 'b0000850-ie01-0000-0000-000000000000', 247),
  ('a0000000-0000-0000-0000-000000000004', 'b0000851-ie01-0000-0000-000000000000', 248),
  ('a0000000-0000-0000-0000-000000000004', 'b0000852-ie01-0000-0000-000000000000', 249),
  ('a0000000-0000-0000-0000-000000000004', 'b0000853-ie01-0000-0000-000000000000', 250),
  ('a0000000-0000-0000-0000-000000000004', 'b0000854-ie01-0000-0000-000000000000', 251),
  ('a0000000-0000-0000-0000-000000000004', 'b0000855-ie01-0000-0000-000000000000', 252),
  ('a0000000-0000-0000-0000-000000000004', 'b0000856-ie01-0000-0000-000000000000', 253),
  ('a0000000-0000-0000-0000-000000000004', 'b0000857-ie01-0000-0000-000000000000', 254),
  ('a0000000-0000-0000-0000-000000000004', 'b0000858-ie01-0000-0000-000000000000', 255),
  ('a0000000-0000-0000-0000-000000000004', 'b0000859-ie01-0000-0000-000000000000', 256),
  ('a0000000-0000-0000-0000-000000000004', 'b0000860-ie01-0000-0000-000000000000', 257),
  ('a0000000-0000-0000-0000-000000000004', 'b0000861-ie01-0000-0000-000000000000', 258),
  ('a0000000-0000-0000-0000-000000000004', 'b0000862-ie01-0000-0000-000000000000', 259),
  ('a0000000-0000-0000-0000-000000000004', 'b0000863-ie01-0000-0000-000000000000', 260),
  ('a0000000-0000-0000-0000-000000000004', 'b0000864-ie01-0000-0000-000000000000', 261),
  ('a0000000-0000-0000-0000-000000000004', 'b0000865-ie01-0000-0000-000000000000', 262),
  ('a0000000-0000-0000-0000-000000000004', 'b0000866-ie01-0000-0000-000000000000', 263),
  ('a0000000-0000-0000-0000-000000000004', 'b0000867-ie01-0000-0000-000000000000', 264),
  ('a0000000-0000-0000-0000-000000000004', 'b0000868-ie01-0000-0000-000000000000', 265),
  ('a0000000-0000-0000-0000-000000000004', 'b0000869-ie01-0000-0000-000000000000', 266),
  ('a0000000-0000-0000-0000-000000000004', 'b0000870-ie01-0000-0000-000000000000', 267),
  ('a0000000-0000-0000-0000-000000000004', 'b0000871-ie01-0000-0000-000000000000', 268),
  ('a0000000-0000-0000-0000-000000000004', 'b0000872-ie01-0000-0000-000000000000', 269),
  ('a0000000-0000-0000-0000-000000000004', 'b0000873-ie01-0000-0000-000000000000', 270),
  ('a0000000-0000-0000-0000-000000000004', 'b0000874-ie01-0000-0000-000000000000', 271),
  ('a0000000-0000-0000-0000-000000000004', 'b0000875-ie01-0000-0000-000000000000', 272),
  ('a0000000-0000-0000-0000-000000000004', 'b0000876-ie01-0000-0000-000000000000', 273),
  ('a0000000-0000-0000-0000-000000000004', 'b0000877-ie01-0000-0000-000000000000', 274),
  ('a0000000-0000-0000-0000-000000000004', 'b0000878-ie01-0000-0000-000000000000', 275),
  ('a0000000-0000-0000-0000-000000000004', 'b0000879-ie01-0000-0000-000000000000', 276),
  ('a0000000-0000-0000-0000-000000000004', 'b0000880-ie01-0000-0000-000000000000', 277),
  ('a0000000-0000-0000-0000-000000000004', 'b0000881-ie01-0000-0000-000000000000', 278),
  ('a0000000-0000-0000-0000-000000000004', 'b0000882-ie01-0000-0000-000000000000', 279),
  ('a0000000-0000-0000-0000-000000000004', 'b0000883-ie01-0000-0000-000000000000', 280),
  ('a0000000-0000-0000-0000-000000000004', 'b0000884-ie01-0000-0000-000000000000', 281),
  ('a0000000-0000-0000-0000-000000000004', 'b0000885-ie01-0000-0000-000000000000', 282),
  ('a0000000-0000-0000-0000-000000000004', 'b0000886-ie01-0000-0000-000000000000', 283),
  ('a0000000-0000-0000-0000-000000000004', 'b0000887-ie01-0000-0000-000000000000', 284),
  ('a0000000-0000-0000-0000-000000000004', 'b0000888-ie01-0000-0000-000000000000', 285),
  ('a0000000-0000-0000-0000-000000000004', 'b0000889-ie01-0000-0000-000000000000', 286),
  ('a0000000-0000-0000-0000-000000000004', 'b0000890-ie01-0000-0000-000000000000', 287),
  ('a0000000-0000-0000-0000-000000000004', 'b0000891-ie01-0000-0000-000000000000', 288),
  ('a0000000-0000-0000-0000-000000000004', 'b0000892-ie01-0000-0000-000000000000', 289),
  ('a0000000-0000-0000-0000-000000000004', 'b0000893-ie01-0000-0000-000000000000', 290),
  ('a0000000-0000-0000-0000-000000000004', 'b0000894-ie01-0000-0000-000000000000', 291),
  ('a0000000-0000-0000-0000-000000000004', 'b0000895-ie01-0000-0000-000000000000', 292),
  ('a0000000-0000-0000-0000-000000000004', 'b0000896-ie01-0000-0000-000000000000', 293),
  ('a0000000-0000-0000-0000-000000000004', 'b0000897-ie01-0000-0000-000000000000', 294),
  ('a0000000-0000-0000-0000-000000000004', 'b0000898-ie01-0000-0000-000000000000', 295),
  ('a0000000-0000-0000-0000-000000000004', 'b0000899-ie01-0000-0000-000000000000', 296),
  ('a0000000-0000-0000-0000-000000000004', 'b0000900-ie01-0000-0000-000000000000', 297),
  ('a0000000-0000-0000-0000-000000000004', 'b0000901-ie01-0000-0000-000000000000', 298),
  ('a0000000-0000-0000-0000-000000000004', 'b0000902-ie01-0000-0000-000000000000', 299)
;

INSERT INTO word_book_items (book_id, word_id, sort_order) VALUES
  ('a0000000-0000-0000-0000-000000000005', 'b0000000-ce14-0000-0000-000000000000', 0),
  ('a0000000-0000-0000-0000-000000000005', 'b0000004-ce14-0000-0000-000000000000', 1),
  ('a0000000-0000-0000-0000-000000000005', 'b0000011-ce14-0000-0000-000000000000', 2),
  ('a0000000-0000-0000-0000-000000000005', 'b0000015-ce14-0000-0000-000000000000', 3),
  ('a0000000-0000-0000-0000-000000000005', 'b0000016-ce14-0000-0000-000000000000', 4),
  ('a0000000-0000-0000-0000-000000000005', 'b0000019-ce14-0000-0000-000000000000', 5),
  ('a0000000-0000-0000-0000-000000000005', 'b0000020-ce14-0000-0000-000000000000', 6),
  ('a0000000-0000-0000-0000-000000000005', 'b0000022-ce14-0000-0000-000000000000', 7),
  ('a0000000-0000-0000-0000-000000000005', 'b0000031-ce14-0000-0000-000000000000', 8),
  ('a0000000-0000-0000-0000-000000000005', 'b0000039-ce14-0000-0000-000000000000', 9),
  ('a0000000-0000-0000-0000-000000000005', 'b0000041-ce14-0000-0000-000000000000', 10),
  ('a0000000-0000-0000-0000-000000000005', 'b0000052-ce14-0000-0000-000000000000', 11),
  ('a0000000-0000-0000-0000-000000000005', 'b0000055-ce14-0000-0000-000000000000', 12),
  ('a0000000-0000-0000-0000-000000000005', 'b0000060-ce14-0000-0000-000000000000', 13),
  ('a0000000-0000-0000-0000-000000000005', 'b0000061-ce14-0000-0000-000000000000', 14),
  ('a0000000-0000-0000-0000-000000000005', 'b0000062-ce14-0000-0000-000000000000', 15),
  ('a0000000-0000-0000-0000-000000000005', 'b0000072-ce14-0000-0000-000000000000', 16),
  ('a0000000-0000-0000-0000-000000000005', 'b0000082-ce14-0000-0000-000000000000', 17),
  ('a0000000-0000-0000-0000-000000000005', 'b0000140-ce14-0000-0000-000000000000', 18),
  ('a0000000-0000-0000-0000-000000000005', 'b0000147-ce14-0000-0000-000000000000', 19),
  ('a0000000-0000-0000-0000-000000000005', 'b0000158-ce14-0000-0000-000000000000', 20),
  ('a0000000-0000-0000-0000-000000000005', 'b0000159-ce14-0000-0000-000000000000', 21),
  ('a0000000-0000-0000-0000-000000000005', 'b0000162-ce14-0000-0000-000000000000', 22),
  ('a0000000-0000-0000-0000-000000000005', 'b0000166-ce14-0000-0000-000000000000', 23),
  ('a0000000-0000-0000-0000-000000000005', 'b0000167-ce14-0000-0000-000000000000', 24),
  ('a0000000-0000-0000-0000-000000000005', 'b0000169-ce14-0000-0000-000000000000', 25),
  ('a0000000-0000-0000-0000-000000000005', 'b0000171-ce14-0000-0000-000000000000', 26),
  ('a0000000-0000-0000-0000-000000000005', 'b0000173-ce14-0000-0000-000000000000', 27),
  ('a0000000-0000-0000-0000-000000000005', 'b0000178-ce14-0000-0000-000000000000', 28),
  ('a0000000-0000-0000-0000-000000000005', 'b0000188-ce14-0000-0000-000000000000', 29),
  ('a0000000-0000-0000-0000-000000000005', 'b0000193-ce14-0000-0000-000000000000', 30),
  ('a0000000-0000-0000-0000-000000000005', 'b0000196-ce14-0000-0000-000000000000', 31),
  ('a0000000-0000-0000-0000-000000000005', 'b0000203-ce14-0000-0000-000000000000', 32),
  ('a0000000-0000-0000-0000-000000000005', 'b0000216-ce14-0000-0000-000000000000', 33),
  ('a0000000-0000-0000-0000-000000000005', 'b0000217-ce14-0000-0000-000000000000', 34),
  ('a0000000-0000-0000-0000-000000000005', 'b0000221-ce14-0000-0000-000000000000', 35),
  ('a0000000-0000-0000-0000-000000000005', 'b0000228-ce14-0000-0000-000000000000', 36),
  ('a0000000-0000-0000-0000-000000000005', 'b0000235-ce14-0000-0000-000000000000', 37),
  ('a0000000-0000-0000-0000-000000000005', 'b0000241-ce14-0000-0000-000000000000', 38),
  ('a0000000-0000-0000-0000-000000000005', 'b0000247-ce14-0000-0000-000000000000', 39),
  ('a0000000-0000-0000-0000-000000000005', 'b0000254-ce14-0000-0000-000000000000', 40),
  ('a0000000-0000-0000-0000-000000000005', 'b0000257-ce14-0000-0000-000000000000', 41),
  ('a0000000-0000-0000-0000-000000000005', 'b0000261-ce14-0000-0000-000000000000', 42),
  ('a0000000-0000-0000-0000-000000000005', 'b0000262-ce14-0000-0000-000000000000', 43),
  ('a0000000-0000-0000-0000-000000000005', 'b0000271-ce14-0000-0000-000000000000', 44),
  ('a0000000-0000-0000-0000-000000000005', 'b0000276-ce14-0000-0000-000000000000', 45),
  ('a0000000-0000-0000-0000-000000000005', 'b0000279-ce14-0000-0000-000000000000', 46),
  ('a0000000-0000-0000-0000-000000000005', 'b0000290-ce14-0000-0000-000000000000', 47),
  ('a0000000-0000-0000-0000-000000000005', 'b0000293-ce14-0000-0000-000000000000', 48),
  ('a0000000-0000-0000-0000-000000000005', 'b0000294-ce14-0000-0000-000000000000', 49),
  ('a0000000-0000-0000-0000-000000000005', 'b0000295-ce14-0000-0000-000000000000', 50),
  ('a0000000-0000-0000-0000-000000000005', 'b0000297-ce14-0000-0000-000000000000', 51),
  ('a0000000-0000-0000-0000-000000000005', 'b0000299-ce14-0000-0000-000000000000', 52),
  ('a0000000-0000-0000-0000-000000000005', 'b0000311-ce16-0000-0000-000000000000', 53),
  ('a0000000-0000-0000-0000-000000000005', 'b0000312-ce16-0000-0000-000000000000', 54),
  ('a0000000-0000-0000-0000-000000000005', 'b0000318-ce16-0000-0000-000000000000', 55),
  ('a0000000-0000-0000-0000-000000000005', 'b0000322-ce16-0000-0000-000000000000', 56),
  ('a0000000-0000-0000-0000-000000000005', 'b0000325-ce16-0000-0000-000000000000', 57),
  ('a0000000-0000-0000-0000-000000000005', 'b0000331-ce16-0000-0000-000000000000', 58),
  ('a0000000-0000-0000-0000-000000000005', 'b0000338-ce16-0000-0000-000000000000', 59),
  ('a0000000-0000-0000-0000-000000000005', 'b0000343-ce16-0000-0000-000000000000', 60),
  ('a0000000-0000-0000-0000-000000000005', 'b0000352-ce16-0000-0000-000000000000', 61),
  ('a0000000-0000-0000-0000-000000000005', 'b0000390-ce16-0000-0000-000000000000', 62),
  ('a0000000-0000-0000-0000-000000000005', 'b0000419-ce16-0000-0000-000000000000', 63),
  ('a0000000-0000-0000-0000-000000000005', 'b0000421-ce16-0000-0000-000000000000', 64),
  ('a0000000-0000-0000-0000-000000000005', 'b0000423-ce16-0000-0000-000000000000', 65),
  ('a0000000-0000-0000-0000-000000000005', 'b0000425-ce16-0000-0000-000000000000', 66),
  ('a0000000-0000-0000-0000-000000000005', 'b0000427-ce16-0000-0000-000000000000', 67),
  ('a0000000-0000-0000-0000-000000000005', 'b0000447-ce16-0000-0000-000000000000', 68),
  ('a0000000-0000-0000-0000-000000000005', 'b0000453-ce16-0000-0000-000000000000', 69),
  ('a0000000-0000-0000-0000-000000000005', 'b0000458-ce16-0000-0000-000000000000', 70),
  ('a0000000-0000-0000-0000-000000000005', 'b0000464-ce16-0000-0000-000000000000', 71),
  ('a0000000-0000-0000-0000-000000000005', 'b0000470-ce16-0000-0000-000000000000', 72),
  ('a0000000-0000-0000-0000-000000000005', 'b0000471-ce16-0000-0000-000000000000', 73),
  ('a0000000-0000-0000-0000-000000000005', 'b0000485-ce16-0000-0000-000000000000', 74),
  ('a0000000-0000-0000-0000-000000000005', 'b0000519-ce16-0000-0000-000000000000', 75),
  ('a0000000-0000-0000-0000-000000000005', 'b0000553-ce16-0000-0000-000000000000', 76),
  ('a0000000-0000-0000-0000-000000000005', 'b0000560-ce16-0000-0000-000000000000', 77),
  ('a0000000-0000-0000-0000-000000000005', 'b0000567-ce16-0000-0000-000000000000', 78),
  ('a0000000-0000-0000-0000-000000000005', 'b0000585-ce16-0000-0000-000000000000', 79),
  ('a0000000-0000-0000-0000-000000000005', 'b0000596-ka01-0000-0000-000000000000', 80),
  ('a0000000-0000-0000-0000-000000000005', 'b0000611-ka01-0000-0000-000000000000', 81),
  ('a0000000-0000-0000-0000-000000000005', 'b0000612-ka01-0000-0000-000000000000', 82),
  ('a0000000-0000-0000-0000-000000000005', 'b0000613-ka01-0000-0000-000000000000', 83),
  ('a0000000-0000-0000-0000-000000000005', 'b0000614-ka01-0000-0000-000000000000', 84),
  ('a0000000-0000-0000-0000-000000000005', 'b0000615-ka01-0000-0000-000000000000', 85),
  ('a0000000-0000-0000-0000-000000000005', 'b0000616-ka01-0000-0000-000000000000', 86),
  ('a0000000-0000-0000-0000-000000000005', 'b0000617-ka01-0000-0000-000000000000', 87),
  ('a0000000-0000-0000-0000-000000000005', 'b0000620-ka01-0000-0000-000000000000', 88),
  ('a0000000-0000-0000-0000-000000000005', 'b0000621-ka01-0000-0000-000000000000', 89),
  ('a0000000-0000-0000-0000-000000000005', 'b0000622-ka01-0000-0000-000000000000', 90),
  ('a0000000-0000-0000-0000-000000000005', 'b0000626-ka01-0000-0000-000000000000', 91),
  ('a0000000-0000-0000-0000-000000000005', 'b0000627-ka01-0000-0000-000000000000', 92),
  ('a0000000-0000-0000-0000-000000000005', 'b0000628-ka01-0000-0000-000000000000', 93),
  ('a0000000-0000-0000-0000-000000000005', 'b0000631-ka01-0000-0000-000000000000', 94),
  ('a0000000-0000-0000-0000-000000000005', 'b0000635-ka01-0000-0000-000000000000', 95),
  ('a0000000-0000-0000-0000-000000000005', 'b0000637-ka01-0000-0000-000000000000', 96),
  ('a0000000-0000-0000-0000-000000000005', 'b0000639-ka01-0000-0000-000000000000', 97),
  ('a0000000-0000-0000-0000-000000000005', 'b0000640-ka01-0000-0000-000000000000', 98),
  ('a0000000-0000-0000-0000-000000000005', 'b0000644-ka01-0000-0000-000000000000', 99),
  ('a0000000-0000-0000-0000-000000000005', 'b0000645-ka01-0000-0000-000000000000', 100),
  ('a0000000-0000-0000-0000-000000000005', 'b0000646-ka01-0000-0000-000000000000', 101),
  ('a0000000-0000-0000-0000-000000000005', 'b0000647-ka01-0000-0000-000000000000', 102),
  ('a0000000-0000-0000-0000-000000000005', 'b0000651-ka01-0000-0000-000000000000', 103),
  ('a0000000-0000-0000-0000-000000000005', 'b0000655-ka01-0000-0000-000000000000', 104),
  ('a0000000-0000-0000-0000-000000000005', 'b0000658-ka01-0000-0000-000000000000', 105),
  ('a0000000-0000-0000-0000-000000000005', 'b0000659-ka01-0000-0000-000000000000', 106),
  ('a0000000-0000-0000-0000-000000000005', 'b0000660-ka01-0000-0000-000000000000', 107),
  ('a0000000-0000-0000-0000-000000000005', 'b0000661-ka01-0000-0000-000000000000', 108),
  ('a0000000-0000-0000-0000-000000000005', 'b0000663-ka01-0000-0000-000000000000', 109),
  ('a0000000-0000-0000-0000-000000000005', 'b0000664-ka01-0000-0000-000000000000', 110),
  ('a0000000-0000-0000-0000-000000000005', 'b0000666-ka01-0000-0000-000000000000', 111),
  ('a0000000-0000-0000-0000-000000000005', 'b0000667-ka01-0000-0000-000000000000', 112),
  ('a0000000-0000-0000-0000-000000000005', 'b0000670-ka01-0000-0000-000000000000', 113),
  ('a0000000-0000-0000-0000-000000000005', 'b0000673-ka01-0000-0000-000000000000', 114),
  ('a0000000-0000-0000-0000-000000000005', 'b0000677-ka01-0000-0000-000000000000', 115),
  ('a0000000-0000-0000-0000-000000000005', 'b0000678-ka01-0000-0000-000000000000', 116),
  ('a0000000-0000-0000-0000-000000000005', 'b0000681-ka01-0000-0000-000000000000', 117),
  ('a0000000-0000-0000-0000-000000000005', 'b0000683-ka01-0000-0000-000000000000', 118),
  ('a0000000-0000-0000-0000-000000000005', 'b0000684-ka01-0000-0000-000000000000', 119),
  ('a0000000-0000-0000-0000-000000000005', 'b0000689-ka01-0000-0000-000000000000', 120),
  ('a0000000-0000-0000-0000-000000000005', 'b0000690-ka01-0000-0000-000000000000', 121),
  ('a0000000-0000-0000-0000-000000000005', 'b0000692-ka01-0000-0000-000000000000', 122),
  ('a0000000-0000-0000-0000-000000000005', 'b0000693-ka01-0000-0000-000000000000', 123),
  ('a0000000-0000-0000-0000-000000000005', 'b0000694-ka01-0000-0000-000000000000', 124),
  ('a0000000-0000-0000-0000-000000000005', 'b0000695-ka01-0000-0000-000000000000', 125),
  ('a0000000-0000-0000-0000-000000000005', 'b0000696-ka01-0000-0000-000000000000', 126),
  ('a0000000-0000-0000-0000-000000000005', 'b0000697-ka01-0000-0000-000000000000', 127),
  ('a0000000-0000-0000-0000-000000000005', 'b0000698-ka01-0000-0000-000000000000', 128),
  ('a0000000-0000-0000-0000-000000000005', 'b0000699-ka01-0000-0000-000000000000', 129),
  ('a0000000-0000-0000-0000-000000000005', 'b0000700-ka01-0000-0000-000000000000', 130),
  ('a0000000-0000-0000-0000-000000000005', 'b0000701-ka01-0000-0000-000000000000', 131),
  ('a0000000-0000-0000-0000-000000000005', 'b0000702-ka01-0000-0000-000000000000', 132),
  ('a0000000-0000-0000-0000-000000000005', 'b0000703-ka01-0000-0000-000000000000', 133),
  ('a0000000-0000-0000-0000-000000000005', 'b0000704-ka01-0000-0000-000000000000', 134),
  ('a0000000-0000-0000-0000-000000000005', 'b0000707-ka01-0000-0000-000000000000', 135),
  ('a0000000-0000-0000-0000-000000000005', 'b0000708-ka01-0000-0000-000000000000', 136),
  ('a0000000-0000-0000-0000-000000000005', 'b0000711-ka01-0000-0000-000000000000', 137),
  ('a0000000-0000-0000-0000-000000000005', 'b0000715-ka01-0000-0000-000000000000', 138),
  ('a0000000-0000-0000-0000-000000000005', 'b0000717-ka01-0000-0000-000000000000', 139),
  ('a0000000-0000-0000-0000-000000000005', 'b0000718-ka01-0000-0000-000000000000', 140),
  ('a0000000-0000-0000-0000-000000000005', 'b0000719-ka01-0000-0000-000000000000', 141),
  ('a0000000-0000-0000-0000-000000000005', 'b0000720-ka01-0000-0000-000000000000', 142),
  ('a0000000-0000-0000-0000-000000000005', 'b0000721-ka01-0000-0000-000000000000', 143),
  ('a0000000-0000-0000-0000-000000000005', 'b0000722-ka01-0000-0000-000000000000', 144),
  ('a0000000-0000-0000-0000-000000000005', 'b0000723-ka01-0000-0000-000000000000', 145),
  ('a0000000-0000-0000-0000-000000000005', 'b0000725-ka01-0000-0000-000000000000', 146),
  ('a0000000-0000-0000-0000-000000000005', 'b0000727-ka01-0000-0000-000000000000', 147),
  ('a0000000-0000-0000-0000-000000000005', 'b0000732-ka01-0000-0000-000000000000', 148),
  ('a0000000-0000-0000-0000-000000000005', 'b0000733-ka01-0000-0000-000000000000', 149),
  ('a0000000-0000-0000-0000-000000000005', 'b0000735-ka01-0000-0000-000000000000', 150),
  ('a0000000-0000-0000-0000-000000000005', 'b0000736-ka01-0000-0000-000000000000', 151),
  ('a0000000-0000-0000-0000-000000000005', 'b0000738-ka01-0000-0000-000000000000', 152),
  ('a0000000-0000-0000-0000-000000000005', 'b0000739-ka01-0000-0000-000000000000', 153),
  ('a0000000-0000-0000-0000-000000000005', 'b0000740-ka01-0000-0000-000000000000', 154),
  ('a0000000-0000-0000-0000-000000000005', 'b0000741-ka01-0000-0000-000000000000', 155),
  ('a0000000-0000-0000-0000-000000000005', 'b0000742-ka01-0000-0000-000000000000', 156),
  ('a0000000-0000-0000-0000-000000000005', 'b0000743-ka01-0000-0000-000000000000', 157),
  ('a0000000-0000-0000-0000-000000000005', 'b0000744-ka01-0000-0000-000000000000', 158),
  ('a0000000-0000-0000-0000-000000000005', 'b0000748-ka01-0000-0000-000000000000', 159),
  ('a0000000-0000-0000-0000-000000000005', 'b0000749-ka01-0000-0000-000000000000', 160),
  ('a0000000-0000-0000-0000-000000000005', 'b0000750-ka01-0000-0000-000000000000', 161),
  ('a0000000-0000-0000-0000-000000000005', 'b0000751-ka01-0000-0000-000000000000', 162),
  ('a0000000-0000-0000-0000-000000000005', 'b0000752-ka01-0000-0000-000000000000', 163),
  ('a0000000-0000-0000-0000-000000000005', 'b0000753-ka01-0000-0000-000000000000', 164),
  ('a0000000-0000-0000-0000-000000000005', 'b0000754-ka01-0000-0000-000000000000', 165),
  ('a0000000-0000-0000-0000-000000000005', 'b0000756-ka01-0000-0000-000000000000', 166),
  ('a0000000-0000-0000-0000-000000000005', 'b0000757-ka01-0000-0000-000000000000', 167),
  ('a0000000-0000-0000-0000-000000000005', 'b0000758-ka01-0000-0000-000000000000', 168),
  ('a0000000-0000-0000-0000-000000000005', 'b0000762-ka01-0000-0000-000000000000', 169),
  ('a0000000-0000-0000-0000-000000000005', 'b0000763-ka01-0000-0000-000000000000', 170),
  ('a0000000-0000-0000-0000-000000000005', 'b0000766-ka01-0000-0000-000000000000', 171),
  ('a0000000-0000-0000-0000-000000000005', 'b0000767-ka01-0000-0000-000000000000', 172),
  ('a0000000-0000-0000-0000-000000000005', 'b0000771-ka01-0000-0000-000000000000', 173),
  ('a0000000-0000-0000-0000-000000000005', 'b0000772-ka01-0000-0000-000000000000', 174),
  ('a0000000-0000-0000-0000-000000000005', 'b0000774-ka01-0000-0000-000000000000', 175),
  ('a0000000-0000-0000-0000-000000000005', 'b0000775-ka01-0000-0000-000000000000', 176),
  ('a0000000-0000-0000-0000-000000000005', 'b0000777-ka01-0000-0000-000000000000', 177),
  ('a0000000-0000-0000-0000-000000000005', 'b0000778-ka01-0000-0000-000000000000', 178),
  ('a0000000-0000-0000-0000-000000000005', 'b0000779-ka01-0000-0000-000000000000', 179),
  ('a0000000-0000-0000-0000-000000000005', 'b0000781-ka01-0000-0000-000000000000', 180),
  ('a0000000-0000-0000-0000-000000000005', 'b0000792-ie01-0000-0000-000000000000', 181),
  ('a0000000-0000-0000-0000-000000000005', 'b0000795-ie01-0000-0000-000000000000', 182),
  ('a0000000-0000-0000-0000-000000000005', 'b0000797-ie01-0000-0000-000000000000', 183),
  ('a0000000-0000-0000-0000-000000000005', 'b0000798-ie01-0000-0000-000000000000', 184),
  ('a0000000-0000-0000-0000-000000000005', 'b0000799-ie01-0000-0000-000000000000', 185),
  ('a0000000-0000-0000-0000-000000000005', 'b0000801-ie01-0000-0000-000000000000', 186),
  ('a0000000-0000-0000-0000-000000000005', 'b0000805-ie01-0000-0000-000000000000', 187),
  ('a0000000-0000-0000-0000-000000000005', 'b0000806-ie01-0000-0000-000000000000', 188),
  ('a0000000-0000-0000-0000-000000000005', 'b0000810-ie01-0000-0000-000000000000', 189),
  ('a0000000-0000-0000-0000-000000000005', 'b0000813-ie01-0000-0000-000000000000', 190),
  ('a0000000-0000-0000-0000-000000000005', 'b0000817-ie01-0000-0000-000000000000', 191),
  ('a0000000-0000-0000-0000-000000000005', 'b0000818-ie01-0000-0000-000000000000', 192),
  ('a0000000-0000-0000-0000-000000000005', 'b0000821-ie01-0000-0000-000000000000', 193),
  ('a0000000-0000-0000-0000-000000000005', 'b0000822-ie01-0000-0000-000000000000', 194),
  ('a0000000-0000-0000-0000-000000000005', 'b0000823-ie01-0000-0000-000000000000', 195),
  ('a0000000-0000-0000-0000-000000000005', 'b0000826-ie01-0000-0000-000000000000', 196),
  ('a0000000-0000-0000-0000-000000000005', 'b0000827-ie01-0000-0000-000000000000', 197),
  ('a0000000-0000-0000-0000-000000000005', 'b0000828-ie01-0000-0000-000000000000', 198),
  ('a0000000-0000-0000-0000-000000000005', 'b0000829-ie01-0000-0000-000000000000', 199),
  ('a0000000-0000-0000-0000-000000000005', 'b0000830-ie01-0000-0000-000000000000', 200),
  ('a0000000-0000-0000-0000-000000000005', 'b0000833-ie01-0000-0000-000000000000', 201),
  ('a0000000-0000-0000-0000-000000000005', 'b0000835-ie01-0000-0000-000000000000', 202),
  ('a0000000-0000-0000-0000-000000000005', 'b0000836-ie01-0000-0000-000000000000', 203),
  ('a0000000-0000-0000-0000-000000000005', 'b0000838-ie01-0000-0000-000000000000', 204),
  ('a0000000-0000-0000-0000-000000000005', 'b0000840-ie01-0000-0000-000000000000', 205),
  ('a0000000-0000-0000-0000-000000000005', 'b0000841-ie01-0000-0000-000000000000', 206),
  ('a0000000-0000-0000-0000-000000000005', 'b0000845-ie01-0000-0000-000000000000', 207),
  ('a0000000-0000-0000-0000-000000000005', 'b0000846-ie01-0000-0000-000000000000', 208),
  ('a0000000-0000-0000-0000-000000000005', 'b0000850-ie01-0000-0000-000000000000', 209),
  ('a0000000-0000-0000-0000-000000000005', 'b0000851-ie01-0000-0000-000000000000', 210),
  ('a0000000-0000-0000-0000-000000000005', 'b0000852-ie01-0000-0000-000000000000', 211),
  ('a0000000-0000-0000-0000-000000000005', 'b0000853-ie01-0000-0000-000000000000', 212),
  ('a0000000-0000-0000-0000-000000000005', 'b0000854-ie01-0000-0000-000000000000', 213),
  ('a0000000-0000-0000-0000-000000000005', 'b0000856-ie01-0000-0000-000000000000', 214),
  ('a0000000-0000-0000-0000-000000000005', 'b0000857-ie01-0000-0000-000000000000', 215),
  ('a0000000-0000-0000-0000-000000000005', 'b0000858-ie01-0000-0000-000000000000', 216),
  ('a0000000-0000-0000-0000-000000000005', 'b0000859-ie01-0000-0000-000000000000', 217),
  ('a0000000-0000-0000-0000-000000000005', 'b0000861-ie01-0000-0000-000000000000', 218),
  ('a0000000-0000-0000-0000-000000000005', 'b0000862-ie01-0000-0000-000000000000', 219),
  ('a0000000-0000-0000-0000-000000000005', 'b0000864-ie01-0000-0000-000000000000', 220),
  ('a0000000-0000-0000-0000-000000000005', 'b0000865-ie01-0000-0000-000000000000', 221),
  ('a0000000-0000-0000-0000-000000000005', 'b0000866-ie01-0000-0000-000000000000', 222),
  ('a0000000-0000-0000-0000-000000000005', 'b0000868-ie01-0000-0000-000000000000', 223),
  ('a0000000-0000-0000-0000-000000000005', 'b0000875-ie01-0000-0000-000000000000', 224),
  ('a0000000-0000-0000-0000-000000000005', 'b0000876-ie01-0000-0000-000000000000', 225),
  ('a0000000-0000-0000-0000-000000000005', 'b0000878-ie01-0000-0000-000000000000', 226),
  ('a0000000-0000-0000-0000-000000000005', 'b0000880-ie01-0000-0000-000000000000', 227),
  ('a0000000-0000-0000-0000-000000000005', 'b0000883-ie01-0000-0000-000000000000', 228),
  ('a0000000-0000-0000-0000-000000000005', 'b0000887-ie01-0000-0000-000000000000', 229),
  ('a0000000-0000-0000-0000-000000000005', 'b0000888-ie01-0000-0000-000000000000', 230),
  ('a0000000-0000-0000-0000-000000000005', 'b0000889-ie01-0000-0000-000000000000', 231),
  ('a0000000-0000-0000-0000-000000000005', 'b0000890-ie01-0000-0000-000000000000', 232),
  ('a0000000-0000-0000-0000-000000000005', 'b0000891-ie01-0000-0000-000000000000', 233),
  ('a0000000-0000-0000-0000-000000000005', 'b0000892-ie01-0000-0000-000000000000', 234),
  ('a0000000-0000-0000-0000-000000000005', 'b0000893-ie01-0000-0000-000000000000', 235),
  ('a0000000-0000-0000-0000-000000000005', 'b0000894-ie01-0000-0000-000000000000', 236),
  ('a0000000-0000-0000-0000-000000000005', 'b0000895-ie01-0000-0000-000000000000', 237),
  ('a0000000-0000-0000-0000-000000000005', 'b0000896-ie01-0000-0000-000000000000', 238),
  ('a0000000-0000-0000-0000-000000000005', 'b0000897-ie01-0000-0000-000000000000', 239),
  ('a0000000-0000-0000-0000-000000000005', 'b0000899-ie01-0000-0000-000000000000', 240),
  ('a0000000-0000-0000-0000-000000000005', 'b0000902-ie01-0000-0000-000000000000', 241),
  ('a0000000-0000-0000-0000-000000000005', 'b0000903-to01-0000-0000-000000000000', 242),
  ('a0000000-0000-0000-0000-000000000005', 'b0000904-to01-0000-0000-000000000000', 243),
  ('a0000000-0000-0000-0000-000000000005', 'b0000905-to01-0000-0000-000000000000', 244),
  ('a0000000-0000-0000-0000-000000000005', 'b0000906-to01-0000-0000-000000000000', 245),
  ('a0000000-0000-0000-0000-000000000005', 'b0000907-to01-0000-0000-000000000000', 246),
  ('a0000000-0000-0000-0000-000000000005', 'b0000908-to01-0000-0000-000000000000', 247),
  ('a0000000-0000-0000-0000-000000000005', 'b0000909-to01-0000-0000-000000000000', 248),
  ('a0000000-0000-0000-0000-000000000005', 'b0000910-to01-0000-0000-000000000000', 249),
  ('a0000000-0000-0000-0000-000000000005', 'b0000911-to01-0000-0000-000000000000', 250),
  ('a0000000-0000-0000-0000-000000000005', 'b0000912-to01-0000-0000-000000000000', 251),
  ('a0000000-0000-0000-0000-000000000005', 'b0000913-to01-0000-0000-000000000000', 252),
  ('a0000000-0000-0000-0000-000000000005', 'b0000914-to01-0000-0000-000000000000', 253),
  ('a0000000-0000-0000-0000-000000000005', 'b0000915-to01-0000-0000-000000000000', 254),
  ('a0000000-0000-0000-0000-000000000005', 'b0000916-to01-0000-0000-000000000000', 255),
  ('a0000000-0000-0000-0000-000000000005', 'b0000917-to01-0000-0000-000000000000', 256),
  ('a0000000-0000-0000-0000-000000000005', 'b0000918-to01-0000-0000-000000000000', 257),
  ('a0000000-0000-0000-0000-000000000005', 'b0000919-to01-0000-0000-000000000000', 258),
  ('a0000000-0000-0000-0000-000000000005', 'b0000920-to01-0000-0000-000000000000', 259),
  ('a0000000-0000-0000-0000-000000000005', 'b0000921-to01-0000-0000-000000000000', 260),
  ('a0000000-0000-0000-0000-000000000005', 'b0000922-to01-0000-0000-000000000000', 261),
  ('a0000000-0000-0000-0000-000000000005', 'b0000923-to01-0000-0000-000000000000', 262),
  ('a0000000-0000-0000-0000-000000000005', 'b0000924-to01-0000-0000-000000000000', 263),
  ('a0000000-0000-0000-0000-000000000005', 'b0000925-to01-0000-0000-000000000000', 264),
  ('a0000000-0000-0000-0000-000000000005', 'b0000926-to01-0000-0000-000000000000', 265),
  ('a0000000-0000-0000-0000-000000000005', 'b0000927-to01-0000-0000-000000000000', 266),
  ('a0000000-0000-0000-0000-000000000005', 'b0000928-to01-0000-0000-000000000000', 267),
  ('a0000000-0000-0000-0000-000000000005', 'b0000929-to01-0000-0000-000000000000', 268),
  ('a0000000-0000-0000-0000-000000000005', 'b0000930-to01-0000-0000-000000000000', 269),
  ('a0000000-0000-0000-0000-000000000005', 'b0000931-to01-0000-0000-000000000000', 270),
  ('a0000000-0000-0000-0000-000000000005', 'b0000932-to01-0000-0000-000000000000', 271),
  ('a0000000-0000-0000-0000-000000000005', 'b0000933-to01-0000-0000-000000000000', 272),
  ('a0000000-0000-0000-0000-000000000005', 'b0000934-to01-0000-0000-000000000000', 273),
  ('a0000000-0000-0000-0000-000000000005', 'b0000935-to01-0000-0000-000000000000', 274),
  ('a0000000-0000-0000-0000-000000000005', 'b0000936-to01-0000-0000-000000000000', 275),
  ('a0000000-0000-0000-0000-000000000005', 'b0000937-to01-0000-0000-000000000000', 276),
  ('a0000000-0000-0000-0000-000000000005', 'b0000938-to01-0000-0000-000000000000', 277),
  ('a0000000-0000-0000-0000-000000000005', 'b0000939-to01-0000-0000-000000000000', 278),
  ('a0000000-0000-0000-0000-000000000005', 'b0000940-to01-0000-0000-000000000000', 279),
  ('a0000000-0000-0000-0000-000000000005', 'b0000941-to01-0000-0000-000000000000', 280),
  ('a0000000-0000-0000-0000-000000000005', 'b0000942-to01-0000-0000-000000000000', 281),
  ('a0000000-0000-0000-0000-000000000005', 'b0000943-to01-0000-0000-000000000000', 282),
  ('a0000000-0000-0000-0000-000000000005', 'b0000944-to01-0000-0000-000000000000', 283),
  ('a0000000-0000-0000-0000-000000000005', 'b0000945-to01-0000-0000-000000000000', 284),
  ('a0000000-0000-0000-0000-000000000005', 'b0000946-to01-0000-0000-000000000000', 285),
  ('a0000000-0000-0000-0000-000000000005', 'b0000947-to01-0000-0000-000000000000', 286),
  ('a0000000-0000-0000-0000-000000000005', 'b0000948-to01-0000-0000-000000000000', 287),
  ('a0000000-0000-0000-0000-000000000005', 'b0000949-to01-0000-0000-000000000000', 288),
  ('a0000000-0000-0000-0000-000000000005', 'b0000950-to01-0000-0000-000000000000', 289),
  ('a0000000-0000-0000-0000-000000000005', 'b0000951-to01-0000-0000-000000000000', 290),
  ('a0000000-0000-0000-0000-000000000005', 'b0000952-to01-0000-0000-000000000000', 291),
  ('a0000000-0000-0000-0000-000000000005', 'b0000953-to01-0000-0000-000000000000', 292),
  ('a0000000-0000-0000-0000-000000000005', 'b0000954-to01-0000-0000-000000000000', 293),
  ('a0000000-0000-0000-0000-000000000005', 'b0000955-to01-0000-0000-000000000000', 294),
  ('a0000000-0000-0000-0000-000000000005', 'b0000956-to01-0000-0000-000000000000', 295),
  ('a0000000-0000-0000-0000-000000000005', 'b0000957-to01-0000-0000-000000000000', 296),
  ('a0000000-0000-0000-0000-000000000005', 'b0000958-to01-0000-0000-000000000000', 297),
  ('a0000000-0000-0000-0000-000000000005', 'b0000959-to01-0000-0000-000000000000', 298),
  ('a0000000-0000-0000-0000-000000000005', 'b0000960-to01-0000-0000-000000000000', 299)
;

INSERT INTO word_book_items (book_id, word_id, sort_order) VALUES
  ('a0000000-0000-0000-0000-000000000006', 'b0000290-ce14-0000-0000-000000000000', 0),
  ('a0000000-0000-0000-0000-000000000006', 'b0000312-ce16-0000-0000-000000000000', 1),
  ('a0000000-0000-0000-0000-000000000006', 'b0000316-ce16-0000-0000-000000000000', 2),
  ('a0000000-0000-0000-0000-000000000006', 'b0000317-ce16-0000-0000-000000000000', 3),
  ('a0000000-0000-0000-0000-000000000006', 'b0000334-ce16-0000-0000-000000000000', 4),
  ('a0000000-0000-0000-0000-000000000006', 'b0000341-ce16-0000-0000-000000000000', 5),
  ('a0000000-0000-0000-0000-000000000006', 'b0000342-ce16-0000-0000-000000000000', 6),
  ('a0000000-0000-0000-0000-000000000006', 'b0000346-ce16-0000-0000-000000000000', 7),
  ('a0000000-0000-0000-0000-000000000006', 'b0000353-ce16-0000-0000-000000000000', 8),
  ('a0000000-0000-0000-0000-000000000006', 'b0000354-ce16-0000-0000-000000000000', 9),
  ('a0000000-0000-0000-0000-000000000006', 'b0000356-ce16-0000-0000-000000000000', 10),
  ('a0000000-0000-0000-0000-000000000006', 'b0000360-ce16-0000-0000-000000000000', 11),
  ('a0000000-0000-0000-0000-000000000006', 'b0000363-ce16-0000-0000-000000000000', 12),
  ('a0000000-0000-0000-0000-000000000006', 'b0000365-ce16-0000-0000-000000000000', 13),
  ('a0000000-0000-0000-0000-000000000006', 'b0000371-ce16-0000-0000-000000000000', 14),
  ('a0000000-0000-0000-0000-000000000006', 'b0000372-ce16-0000-0000-000000000000', 15),
  ('a0000000-0000-0000-0000-000000000006', 'b0000377-ce16-0000-0000-000000000000', 16),
  ('a0000000-0000-0000-0000-000000000006', 'b0000383-ce16-0000-0000-000000000000', 17),
  ('a0000000-0000-0000-0000-000000000006', 'b0000384-ce16-0000-0000-000000000000', 18),
  ('a0000000-0000-0000-0000-000000000006', 'b0000391-ce16-0000-0000-000000000000', 19),
  ('a0000000-0000-0000-0000-000000000006', 'b0000393-ce16-0000-0000-000000000000', 20),
  ('a0000000-0000-0000-0000-000000000006', 'b0000394-ce16-0000-0000-000000000000', 21),
  ('a0000000-0000-0000-0000-000000000006', 'b0000395-ce16-0000-0000-000000000000', 22),
  ('a0000000-0000-0000-0000-000000000006', 'b0000400-ce16-0000-0000-000000000000', 23),
  ('a0000000-0000-0000-0000-000000000006', 'b0000401-ce16-0000-0000-000000000000', 24),
  ('a0000000-0000-0000-0000-000000000006', 'b0000406-ce16-0000-0000-000000000000', 25),
  ('a0000000-0000-0000-0000-000000000006', 'b0000416-ce16-0000-0000-000000000000', 26),
  ('a0000000-0000-0000-0000-000000000006', 'b0000418-ce16-0000-0000-000000000000', 27),
  ('a0000000-0000-0000-0000-000000000006', 'b0000421-ce16-0000-0000-000000000000', 28),
  ('a0000000-0000-0000-0000-000000000006', 'b0000429-ce16-0000-0000-000000000000', 29),
  ('a0000000-0000-0000-0000-000000000006', 'b0000438-ce16-0000-0000-000000000000', 30),
  ('a0000000-0000-0000-0000-000000000006', 'b0000446-ce16-0000-0000-000000000000', 31),
  ('a0000000-0000-0000-0000-000000000006', 'b0000451-ce16-0000-0000-000000000000', 32),
  ('a0000000-0000-0000-0000-000000000006', 'b0000454-ce16-0000-0000-000000000000', 33),
  ('a0000000-0000-0000-0000-000000000006', 'b0000456-ce16-0000-0000-000000000000', 34),
  ('a0000000-0000-0000-0000-000000000006', 'b0000474-ce16-0000-0000-000000000000', 35),
  ('a0000000-0000-0000-0000-000000000006', 'b0000480-ce16-0000-0000-000000000000', 36),
  ('a0000000-0000-0000-0000-000000000006', 'b0000483-ce16-0000-0000-000000000000', 37),
  ('a0000000-0000-0000-0000-000000000006', 'b0000489-ce16-0000-0000-000000000000', 38),
  ('a0000000-0000-0000-0000-000000000006', 'b0000490-ce16-0000-0000-000000000000', 39),
  ('a0000000-0000-0000-0000-000000000006', 'b0000491-ce16-0000-0000-000000000000', 40),
  ('a0000000-0000-0000-0000-000000000006', 'b0000495-ce16-0000-0000-000000000000', 41),
  ('a0000000-0000-0000-0000-000000000006', 'b0000497-ce16-0000-0000-000000000000', 42),
  ('a0000000-0000-0000-0000-000000000006', 'b0000505-ce16-0000-0000-000000000000', 43),
  ('a0000000-0000-0000-0000-000000000006', 'b0000508-ce16-0000-0000-000000000000', 44),
  ('a0000000-0000-0000-0000-000000000006', 'b0000509-ce16-0000-0000-000000000000', 45),
  ('a0000000-0000-0000-0000-000000000006', 'b0000510-ce16-0000-0000-000000000000', 46),
  ('a0000000-0000-0000-0000-000000000006', 'b0000520-ce16-0000-0000-000000000000', 47),
  ('a0000000-0000-0000-0000-000000000006', 'b0000525-ce16-0000-0000-000000000000', 48),
  ('a0000000-0000-0000-0000-000000000006', 'b0000533-ce16-0000-0000-000000000000', 49),
  ('a0000000-0000-0000-0000-000000000006', 'b0000535-ce16-0000-0000-000000000000', 50),
  ('a0000000-0000-0000-0000-000000000006', 'b0000539-ce16-0000-0000-000000000000', 51),
  ('a0000000-0000-0000-0000-000000000006', 'b0000540-ce16-0000-0000-000000000000', 52),
  ('a0000000-0000-0000-0000-000000000006', 'b0000541-ce16-0000-0000-000000000000', 53),
  ('a0000000-0000-0000-0000-000000000006', 'b0000544-ce16-0000-0000-000000000000', 54),
  ('a0000000-0000-0000-0000-000000000006', 'b0000545-ce16-0000-0000-000000000000', 55),
  ('a0000000-0000-0000-0000-000000000006', 'b0000549-ce16-0000-0000-000000000000', 56),
  ('a0000000-0000-0000-0000-000000000006', 'b0000550-ce16-0000-0000-000000000000', 57),
  ('a0000000-0000-0000-0000-000000000006', 'b0000551-ce16-0000-0000-000000000000', 58),
  ('a0000000-0000-0000-0000-000000000006', 'b0000555-ce16-0000-0000-000000000000', 59),
  ('a0000000-0000-0000-0000-000000000006', 'b0000561-ce16-0000-0000-000000000000', 60),
  ('a0000000-0000-0000-0000-000000000006', 'b0000562-ce16-0000-0000-000000000000', 61),
  ('a0000000-0000-0000-0000-000000000006', 'b0000564-ce16-0000-0000-000000000000', 62),
  ('a0000000-0000-0000-0000-000000000006', 'b0000568-ce16-0000-0000-000000000000', 63),
  ('a0000000-0000-0000-0000-000000000006', 'b0000571-ce16-0000-0000-000000000000', 64),
  ('a0000000-0000-0000-0000-000000000006', 'b0000572-ce16-0000-0000-000000000000', 65),
  ('a0000000-0000-0000-0000-000000000006', 'b0000574-ce16-0000-0000-000000000000', 66),
  ('a0000000-0000-0000-0000-000000000006', 'b0000575-ce16-0000-0000-000000000000', 67),
  ('a0000000-0000-0000-0000-000000000006', 'b0000640-ka01-0000-0000-000000000000', 68),
  ('a0000000-0000-0000-0000-000000000006', 'b0000653-ka01-0000-0000-000000000000', 69),
  ('a0000000-0000-0000-0000-000000000006', 'b0000907-to01-0000-0000-000000000000', 70),
  ('a0000000-0000-0000-0000-000000000006', 'b0000961-gr01-0000-0000-000000000000', 71),
  ('a0000000-0000-0000-0000-000000000006', 'b0000962-gr01-0000-0000-000000000000', 72),
  ('a0000000-0000-0000-0000-000000000006', 'b0000963-gr01-0000-0000-000000000000', 73),
  ('a0000000-0000-0000-0000-000000000006', 'b0000964-gr01-0000-0000-000000000000', 74),
  ('a0000000-0000-0000-0000-000000000006', 'b0000965-gr01-0000-0000-000000000000', 75),
  ('a0000000-0000-0000-0000-000000000006', 'b0000966-gr01-0000-0000-000000000000', 76),
  ('a0000000-0000-0000-0000-000000000006', 'b0000967-gr01-0000-0000-000000000000', 77),
  ('a0000000-0000-0000-0000-000000000006', 'b0000968-gr01-0000-0000-000000000000', 78),
  ('a0000000-0000-0000-0000-000000000006', 'b0000969-gr01-0000-0000-000000000000', 79),
  ('a0000000-0000-0000-0000-000000000006', 'b0000970-gr01-0000-0000-000000000000', 80),
  ('a0000000-0000-0000-0000-000000000006', 'b0000971-gr01-0000-0000-000000000000', 81),
  ('a0000000-0000-0000-0000-000000000006', 'b0000972-gr01-0000-0000-000000000000', 82),
  ('a0000000-0000-0000-0000-000000000006', 'b0000973-gr01-0000-0000-000000000000', 83),
  ('a0000000-0000-0000-0000-000000000006', 'b0000974-gr01-0000-0000-000000000000', 84),
  ('a0000000-0000-0000-0000-000000000006', 'b0000975-gr01-0000-0000-000000000000', 85),
  ('a0000000-0000-0000-0000-000000000006', 'b0000976-gr01-0000-0000-000000000000', 86),
  ('a0000000-0000-0000-0000-000000000006', 'b0000977-gr01-0000-0000-000000000000', 87),
  ('a0000000-0000-0000-0000-000000000006', 'b0000978-gr01-0000-0000-000000000000', 88),
  ('a0000000-0000-0000-0000-000000000006', 'b0000979-gr01-0000-0000-000000000000', 89),
  ('a0000000-0000-0000-0000-000000000006', 'b0000980-gr01-0000-0000-000000000000', 90),
  ('a0000000-0000-0000-0000-000000000006', 'b0000981-gr01-0000-0000-000000000000', 91),
  ('a0000000-0000-0000-0000-000000000006', 'b0000982-gr01-0000-0000-000000000000', 92),
  ('a0000000-0000-0000-0000-000000000006', 'b0000983-gr01-0000-0000-000000000000', 93),
  ('a0000000-0000-0000-0000-000000000006', 'b0000984-gr01-0000-0000-000000000000', 94),
  ('a0000000-0000-0000-0000-000000000006', 'b0000985-gr01-0000-0000-000000000000', 95),
  ('a0000000-0000-0000-0000-000000000006', 'b0000986-gr01-0000-0000-000000000000', 96),
  ('a0000000-0000-0000-0000-000000000006', 'b0000987-gr01-0000-0000-000000000000', 97),
  ('a0000000-0000-0000-0000-000000000006', 'b0000988-gr01-0000-0000-000000000000', 98),
  ('a0000000-0000-0000-0000-000000000006', 'b0000989-gr01-0000-0000-000000000000', 99),
  ('a0000000-0000-0000-0000-000000000006', 'b0000990-gr01-0000-0000-000000000000', 100),
  ('a0000000-0000-0000-0000-000000000006', 'b0000991-gr01-0000-0000-000000000000', 101),
  ('a0000000-0000-0000-0000-000000000006', 'b0000992-gr01-0000-0000-000000000000', 102),
  ('a0000000-0000-0000-0000-000000000006', 'b0000993-gr01-0000-0000-000000000000', 103),
  ('a0000000-0000-0000-0000-000000000006', 'b0000994-gr01-0000-0000-000000000000', 104),
  ('a0000000-0000-0000-0000-000000000006', 'b0000995-gr01-0000-0000-000000000000', 105),
  ('a0000000-0000-0000-0000-000000000006', 'b0000996-gr01-0000-0000-000000000000', 106),
  ('a0000000-0000-0000-0000-000000000006', 'b0000997-gr01-0000-0000-000000000000', 107),
  ('a0000000-0000-0000-0000-000000000006', 'b0000998-gr01-0000-0000-000000000000', 108),
  ('a0000000-0000-0000-0000-000000000006', 'b0000999-gr01-0000-0000-000000000000', 109),
  ('a0000000-0000-0000-0000-000000000006', 'b0001000-gr01-0000-0000-000000000000', 110),
  ('a0000000-0000-0000-0000-000000000006', 'b0001001-gr01-0000-0000-000000000000', 111),
  ('a0000000-0000-0000-0000-000000000006', 'b0001002-gr01-0000-0000-000000000000', 112),
  ('a0000000-0000-0000-0000-000000000006', 'b0001003-gr01-0000-0000-000000000000', 113),
  ('a0000000-0000-0000-0000-000000000006', 'b0001004-gr01-0000-0000-000000000000', 114),
  ('a0000000-0000-0000-0000-000000000006', 'b0001005-gr01-0000-0000-000000000000', 115),
  ('a0000000-0000-0000-0000-000000000006', 'b0001006-gr01-0000-0000-000000000000', 116),
  ('a0000000-0000-0000-0000-000000000006', 'b0001007-gr01-0000-0000-000000000000', 117),
  ('a0000000-0000-0000-0000-000000000006', 'b0001008-gr01-0000-0000-000000000000', 118),
  ('a0000000-0000-0000-0000-000000000006', 'b0001009-gr01-0000-0000-000000000000', 119),
  ('a0000000-0000-0000-0000-000000000006', 'b0001010-gr01-0000-0000-000000000000', 120),
  ('a0000000-0000-0000-0000-000000000006', 'b0001011-gr01-0000-0000-000000000000', 121),
  ('a0000000-0000-0000-0000-000000000006', 'b0001012-gr01-0000-0000-000000000000', 122),
  ('a0000000-0000-0000-0000-000000000006', 'b0001013-gr01-0000-0000-000000000000', 123),
  ('a0000000-0000-0000-0000-000000000006', 'b0001014-gr01-0000-0000-000000000000', 124),
  ('a0000000-0000-0000-0000-000000000006', 'b0001015-gr01-0000-0000-000000000000', 125),
  ('a0000000-0000-0000-0000-000000000006', 'b0001016-gr01-0000-0000-000000000000', 126),
  ('a0000000-0000-0000-0000-000000000006', 'b0001017-gr01-0000-0000-000000000000', 127),
  ('a0000000-0000-0000-0000-000000000006', 'b0001018-gr01-0000-0000-000000000000', 128),
  ('a0000000-0000-0000-0000-000000000006', 'b0001019-gr01-0000-0000-000000000000', 129),
  ('a0000000-0000-0000-0000-000000000006', 'b0001020-gr01-0000-0000-000000000000', 130),
  ('a0000000-0000-0000-0000-000000000006', 'b0001021-gr01-0000-0000-000000000000', 131),
  ('a0000000-0000-0000-0000-000000000006', 'b0001022-gr01-0000-0000-000000000000', 132),
  ('a0000000-0000-0000-0000-000000000006', 'b0001023-gr01-0000-0000-000000000000', 133),
  ('a0000000-0000-0000-0000-000000000006', 'b0001024-gr01-0000-0000-000000000000', 134),
  ('a0000000-0000-0000-0000-000000000006', 'b0001025-gr01-0000-0000-000000000000', 135),
  ('a0000000-0000-0000-0000-000000000006', 'b0001026-gr01-0000-0000-000000000000', 136),
  ('a0000000-0000-0000-0000-000000000006', 'b0001027-gr01-0000-0000-000000000000', 137),
  ('a0000000-0000-0000-0000-000000000006', 'b0001028-gr01-0000-0000-000000000000', 138),
  ('a0000000-0000-0000-0000-000000000006', 'b0001029-gr01-0000-0000-000000000000', 139),
  ('a0000000-0000-0000-0000-000000000006', 'b0001030-gr01-0000-0000-000000000000', 140),
  ('a0000000-0000-0000-0000-000000000006', 'b0001031-gr01-0000-0000-000000000000', 141),
  ('a0000000-0000-0000-0000-000000000006', 'b0001032-gr01-0000-0000-000000000000', 142),
  ('a0000000-0000-0000-0000-000000000006', 'b0001033-gr01-0000-0000-000000000000', 143),
  ('a0000000-0000-0000-0000-000000000006', 'b0001034-gr01-0000-0000-000000000000', 144),
  ('a0000000-0000-0000-0000-000000000006', 'b0001035-gr01-0000-0000-000000000000', 145),
  ('a0000000-0000-0000-0000-000000000006', 'b0001036-gr01-0000-0000-000000000000', 146),
  ('a0000000-0000-0000-0000-000000000006', 'b0001037-gr01-0000-0000-000000000000', 147),
  ('a0000000-0000-0000-0000-000000000006', 'b0001038-gr01-0000-0000-000000000000', 148),
  ('a0000000-0000-0000-0000-000000000006', 'b0001039-gr01-0000-0000-000000000000', 149),
  ('a0000000-0000-0000-0000-000000000006', 'b0001040-gr01-0000-0000-000000000000', 150),
  ('a0000000-0000-0000-0000-000000000006', 'b0001041-gr01-0000-0000-000000000000', 151),
  ('a0000000-0000-0000-0000-000000000006', 'b0001042-gr01-0000-0000-000000000000', 152),
  ('a0000000-0000-0000-0000-000000000006', 'b0001043-gr01-0000-0000-000000000000', 153),
  ('a0000000-0000-0000-0000-000000000006', 'b0001044-gr01-0000-0000-000000000000', 154),
  ('a0000000-0000-0000-0000-000000000006', 'b0001045-gr01-0000-0000-000000000000', 155),
  ('a0000000-0000-0000-0000-000000000006', 'b0001046-gr01-0000-0000-000000000000', 156),
  ('a0000000-0000-0000-0000-000000000006', 'b0001047-gr01-0000-0000-000000000000', 157),
  ('a0000000-0000-0000-0000-000000000006', 'b0001048-gr01-0000-0000-000000000000', 158),
  ('a0000000-0000-0000-0000-000000000006', 'b0001049-gr01-0000-0000-000000000000', 159),
  ('a0000000-0000-0000-0000-000000000006', 'b0001050-gr01-0000-0000-000000000000', 160),
  ('a0000000-0000-0000-0000-000000000006', 'b0001051-gr01-0000-0000-000000000000', 161),
  ('a0000000-0000-0000-0000-000000000006', 'b0001052-gr01-0000-0000-000000000000', 162),
  ('a0000000-0000-0000-0000-000000000006', 'b0001053-gr01-0000-0000-000000000000', 163),
  ('a0000000-0000-0000-0000-000000000006', 'b0001054-gr01-0000-0000-000000000000', 164),
  ('a0000000-0000-0000-0000-000000000006', 'b0001055-gr01-0000-0000-000000000000', 165),
  ('a0000000-0000-0000-0000-000000000006', 'b0001056-gr01-0000-0000-000000000000', 166),
  ('a0000000-0000-0000-0000-000000000006', 'b0001057-gr01-0000-0000-000000000000', 167),
  ('a0000000-0000-0000-0000-000000000006', 'b0001058-gr01-0000-0000-000000000000', 168),
  ('a0000000-0000-0000-0000-000000000006', 'b0001059-gr01-0000-0000-000000000000', 169),
  ('a0000000-0000-0000-0000-000000000006', 'b0001060-gr01-0000-0000-000000000000', 170),
  ('a0000000-0000-0000-0000-000000000006', 'b0001061-gr01-0000-0000-000000000000', 171),
  ('a0000000-0000-0000-0000-000000000006', 'b0001062-gr01-0000-0000-000000000000', 172),
  ('a0000000-0000-0000-0000-000000000006', 'b0001063-gr01-0000-0000-000000000000', 173),
  ('a0000000-0000-0000-0000-000000000006', 'b0001064-gr01-0000-0000-000000000000', 174),
  ('a0000000-0000-0000-0000-000000000006', 'b0001065-gr01-0000-0000-000000000000', 175),
  ('a0000000-0000-0000-0000-000000000006', 'b0001066-gr01-0000-0000-000000000000', 176),
  ('a0000000-0000-0000-0000-000000000006', 'b0001067-gr01-0000-0000-000000000000', 177),
  ('a0000000-0000-0000-0000-000000000006', 'b0001068-gr01-0000-0000-000000000000', 178),
  ('a0000000-0000-0000-0000-000000000006', 'b0001069-gr01-0000-0000-000000000000', 179),
  ('a0000000-0000-0000-0000-000000000006', 'b0001070-gr01-0000-0000-000000000000', 180),
  ('a0000000-0000-0000-0000-000000000006', 'b0001071-gr01-0000-0000-000000000000', 181),
  ('a0000000-0000-0000-0000-000000000006', 'b0001072-gr01-0000-0000-000000000000', 182),
  ('a0000000-0000-0000-0000-000000000006', 'b0001073-gr01-0000-0000-000000000000', 183),
  ('a0000000-0000-0000-0000-000000000006', 'b0001074-gr01-0000-0000-000000000000', 184),
  ('a0000000-0000-0000-0000-000000000006', 'b0001075-gr01-0000-0000-000000000000', 185),
  ('a0000000-0000-0000-0000-000000000006', 'b0001076-gr01-0000-0000-000000000000', 186),
  ('a0000000-0000-0000-0000-000000000006', 'b0001077-gr01-0000-0000-000000000000', 187),
  ('a0000000-0000-0000-0000-000000000006', 'b0001078-gr01-0000-0000-000000000000', 188),
  ('a0000000-0000-0000-0000-000000000006', 'b0001079-gr01-0000-0000-000000000000', 189),
  ('a0000000-0000-0000-0000-000000000006', 'b0001080-gr01-0000-0000-000000000000', 190),
  ('a0000000-0000-0000-0000-000000000006', 'b0001081-gr01-0000-0000-000000000000', 191),
  ('a0000000-0000-0000-0000-000000000006', 'b0001082-gr01-0000-0000-000000000000', 192),
  ('a0000000-0000-0000-0000-000000000006', 'b0001083-gr01-0000-0000-000000000000', 193),
  ('a0000000-0000-0000-0000-000000000006', 'b0001084-gr01-0000-0000-000000000000', 194),
  ('a0000000-0000-0000-0000-000000000006', 'b0001085-gr01-0000-0000-000000000000', 195),
  ('a0000000-0000-0000-0000-000000000006', 'b0001086-gr01-0000-0000-000000000000', 196),
  ('a0000000-0000-0000-0000-000000000006', 'b0001087-gr01-0000-0000-000000000000', 197),
  ('a0000000-0000-0000-0000-000000000006', 'b0001088-gr01-0000-0000-000000000000', 198),
  ('a0000000-0000-0000-0000-000000000006', 'b0001089-gr01-0000-0000-000000000000', 199),
  ('a0000000-0000-0000-0000-000000000006', 'b0001090-gr01-0000-0000-000000000000', 200),
  ('a0000000-0000-0000-0000-000000000006', 'b0001091-gr01-0000-0000-000000000000', 201),
  ('a0000000-0000-0000-0000-000000000006', 'b0001092-gr01-0000-0000-000000000000', 202),
  ('a0000000-0000-0000-0000-000000000006', 'b0001093-gr01-0000-0000-000000000000', 203),
  ('a0000000-0000-0000-0000-000000000006', 'b0001094-gr01-0000-0000-000000000000', 204),
  ('a0000000-0000-0000-0000-000000000006', 'b0001095-gr01-0000-0000-000000000000', 205),
  ('a0000000-0000-0000-0000-000000000006', 'b0001096-gr01-0000-0000-000000000000', 206),
  ('a0000000-0000-0000-0000-000000000006', 'b0001097-gr01-0000-0000-000000000000', 207),
  ('a0000000-0000-0000-0000-000000000006', 'b0001098-gr01-0000-0000-000000000000', 208),
  ('a0000000-0000-0000-0000-000000000006', 'b0001099-gr01-0000-0000-000000000000', 209),
  ('a0000000-0000-0000-0000-000000000006', 'b0001100-gr01-0000-0000-000000000000', 210),
  ('a0000000-0000-0000-0000-000000000006', 'b0001101-gr01-0000-0000-000000000000', 211),
  ('a0000000-0000-0000-0000-000000000006', 'b0001102-gr01-0000-0000-000000000000', 212),
  ('a0000000-0000-0000-0000-000000000006', 'b0001103-gr01-0000-0000-000000000000', 213),
  ('a0000000-0000-0000-0000-000000000006', 'b0001104-gr01-0000-0000-000000000000', 214),
  ('a0000000-0000-0000-0000-000000000006', 'b0001105-gr01-0000-0000-000000000000', 215),
  ('a0000000-0000-0000-0000-000000000006', 'b0001106-gr01-0000-0000-000000000000', 216),
  ('a0000000-0000-0000-0000-000000000006', 'b0001107-gr01-0000-0000-000000000000', 217),
  ('a0000000-0000-0000-0000-000000000006', 'b0001108-gr01-0000-0000-000000000000', 218),
  ('a0000000-0000-0000-0000-000000000006', 'b0001109-gr01-0000-0000-000000000000', 219),
  ('a0000000-0000-0000-0000-000000000006', 'b0001110-gr01-0000-0000-000000000000', 220),
  ('a0000000-0000-0000-0000-000000000006', 'b0001111-gr01-0000-0000-000000000000', 221),
  ('a0000000-0000-0000-0000-000000000006', 'b0001112-gr01-0000-0000-000000000000', 222),
  ('a0000000-0000-0000-0000-000000000006', 'b0001113-gr01-0000-0000-000000000000', 223),
  ('a0000000-0000-0000-0000-000000000006', 'b0001114-gr01-0000-0000-000000000000', 224),
  ('a0000000-0000-0000-0000-000000000006', 'b0001115-gr01-0000-0000-000000000000', 225),
  ('a0000000-0000-0000-0000-000000000006', 'b0001116-gr01-0000-0000-000000000000', 226),
  ('a0000000-0000-0000-0000-000000000006', 'b0001117-gr01-0000-0000-000000000000', 227),
  ('a0000000-0000-0000-0000-000000000006', 'b0001118-gr01-0000-0000-000000000000', 228),
  ('a0000000-0000-0000-0000-000000000006', 'b0001119-gr01-0000-0000-000000000000', 229),
  ('a0000000-0000-0000-0000-000000000006', 'b0001120-gr01-0000-0000-000000000000', 230),
  ('a0000000-0000-0000-0000-000000000006', 'b0001121-gr01-0000-0000-000000000000', 231),
  ('a0000000-0000-0000-0000-000000000006', 'b0001122-gr01-0000-0000-000000000000', 232),
  ('a0000000-0000-0000-0000-000000000006', 'b0001123-gr01-0000-0000-000000000000', 233),
  ('a0000000-0000-0000-0000-000000000006', 'b0001124-gr01-0000-0000-000000000000', 234),
  ('a0000000-0000-0000-0000-000000000006', 'b0001125-gr01-0000-0000-000000000000', 235),
  ('a0000000-0000-0000-0000-000000000006', 'b0001126-gr01-0000-0000-000000000000', 236),
  ('a0000000-0000-0000-0000-000000000006', 'b0001127-gr01-0000-0000-000000000000', 237),
  ('a0000000-0000-0000-0000-000000000006', 'b0001128-gr01-0000-0000-000000000000', 238),
  ('a0000000-0000-0000-0000-000000000006', 'b0001129-gr01-0000-0000-000000000000', 239),
  ('a0000000-0000-0000-0000-000000000006', 'b0001130-gr01-0000-0000-000000000000', 240),
  ('a0000000-0000-0000-0000-000000000006', 'b0001131-gr01-0000-0000-000000000000', 241),
  ('a0000000-0000-0000-0000-000000000006', 'b0001132-gr01-0000-0000-000000000000', 242),
  ('a0000000-0000-0000-0000-000000000006', 'b0001133-gr01-0000-0000-000000000000', 243),
  ('a0000000-0000-0000-0000-000000000006', 'b0001134-gr01-0000-0000-000000000000', 244),
  ('a0000000-0000-0000-0000-000000000006', 'b0001135-gr01-0000-0000-000000000000', 245),
  ('a0000000-0000-0000-0000-000000000006', 'b0001136-gr01-0000-0000-000000000000', 246),
  ('a0000000-0000-0000-0000-000000000006', 'b0001137-gr01-0000-0000-000000000000', 247),
  ('a0000000-0000-0000-0000-000000000006', 'b0001138-gr01-0000-0000-000000000000', 248),
  ('a0000000-0000-0000-0000-000000000006', 'b0001139-gr01-0000-0000-000000000000', 249),
  ('a0000000-0000-0000-0000-000000000006', 'b0001140-gr01-0000-0000-000000000000', 250),
  ('a0000000-0000-0000-0000-000000000006', 'b0001141-gr01-0000-0000-000000000000', 251),
  ('a0000000-0000-0000-0000-000000000006', 'b0001142-gr01-0000-0000-000000000000', 252),
  ('a0000000-0000-0000-0000-000000000006', 'b0001143-gr01-0000-0000-000000000000', 253),
  ('a0000000-0000-0000-0000-000000000006', 'b0001144-gr01-0000-0000-000000000000', 254),
  ('a0000000-0000-0000-0000-000000000006', 'b0001145-gr01-0000-0000-000000000000', 255),
  ('a0000000-0000-0000-0000-000000000006', 'b0001146-gr01-0000-0000-000000000000', 256),
  ('a0000000-0000-0000-0000-000000000006', 'b0001147-gr01-0000-0000-000000000000', 257),
  ('a0000000-0000-0000-0000-000000000006', 'b0001148-gr01-0000-0000-000000000000', 258),
  ('a0000000-0000-0000-0000-000000000006', 'b0001149-gr01-0000-0000-000000000000', 259),
  ('a0000000-0000-0000-0000-000000000006', 'b0001150-gr01-0000-0000-000000000000', 260),
  ('a0000000-0000-0000-0000-000000000006', 'b0001151-gr01-0000-0000-000000000000', 261),
  ('a0000000-0000-0000-0000-000000000006', 'b0001152-gr01-0000-0000-000000000000', 262),
  ('a0000000-0000-0000-0000-000000000006', 'b0001153-gr01-0000-0000-000000000000', 263),
  ('a0000000-0000-0000-0000-000000000006', 'b0001154-gr01-0000-0000-000000000000', 264),
  ('a0000000-0000-0000-0000-000000000006', 'b0001155-gr01-0000-0000-000000000000', 265),
  ('a0000000-0000-0000-0000-000000000006', 'b0001156-gr01-0000-0000-000000000000', 266),
  ('a0000000-0000-0000-0000-000000000006', 'b0001157-gr01-0000-0000-000000000000', 267),
  ('a0000000-0000-0000-0000-000000000006', 'b0001158-gr01-0000-0000-000000000000', 268),
  ('a0000000-0000-0000-0000-000000000006', 'b0001159-gr01-0000-0000-000000000000', 269),
  ('a0000000-0000-0000-0000-000000000006', 'b0001160-gr01-0000-0000-000000000000', 270),
  ('a0000000-0000-0000-0000-000000000006', 'b0001161-gr01-0000-0000-000000000000', 271),
  ('a0000000-0000-0000-0000-000000000006', 'b0001162-gr01-0000-0000-000000000000', 272),
  ('a0000000-0000-0000-0000-000000000006', 'b0001163-gr01-0000-0000-000000000000', 273),
  ('a0000000-0000-0000-0000-000000000006', 'b0001164-gr01-0000-0000-000000000000', 274),
  ('a0000000-0000-0000-0000-000000000006', 'b0001165-gr01-0000-0000-000000000000', 275),
  ('a0000000-0000-0000-0000-000000000006', 'b0001166-gr01-0000-0000-000000000000', 276),
  ('a0000000-0000-0000-0000-000000000006', 'b0001167-gr01-0000-0000-000000000000', 277),
  ('a0000000-0000-0000-0000-000000000006', 'b0001168-gr01-0000-0000-000000000000', 278),
  ('a0000000-0000-0000-0000-000000000006', 'b0001169-gr01-0000-0000-000000000000', 279),
  ('a0000000-0000-0000-0000-000000000006', 'b0001170-gr01-0000-0000-000000000000', 280),
  ('a0000000-0000-0000-0000-000000000006', 'b0001171-gr01-0000-0000-000000000000', 281),
  ('a0000000-0000-0000-0000-000000000006', 'b0001172-gr01-0000-0000-000000000000', 282),
  ('a0000000-0000-0000-0000-000000000006', 'b0001173-gr01-0000-0000-000000000000', 283),
  ('a0000000-0000-0000-0000-000000000006', 'b0001174-gr01-0000-0000-000000000000', 284),
  ('a0000000-0000-0000-0000-000000000006', 'b0001175-gr01-0000-0000-000000000000', 285),
  ('a0000000-0000-0000-0000-000000000006', 'b0001176-gr01-0000-0000-000000000000', 286),
  ('a0000000-0000-0000-0000-000000000006', 'b0001177-gr01-0000-0000-000000000000', 287),
  ('a0000000-0000-0000-0000-000000000006', 'b0001178-gr01-0000-0000-000000000000', 288),
  ('a0000000-0000-0000-0000-000000000006', 'b0001179-gr01-0000-0000-000000000000', 289),
  ('a0000000-0000-0000-0000-000000000006', 'b0001180-gr01-0000-0000-000000000000', 290),
  ('a0000000-0000-0000-0000-000000000006', 'b0001181-gr01-0000-0000-000000000000', 291),
  ('a0000000-0000-0000-0000-000000000006', 'b0001182-gr01-0000-0000-000000000000', 292),
  ('a0000000-0000-0000-0000-000000000006', 'b0001183-gr01-0000-0000-000000000000', 293),
  ('a0000000-0000-0000-0000-000000000006', 'b0001184-gr01-0000-0000-000000000000', 294),
  ('a0000000-0000-0000-0000-000000000006', 'b0001185-gr01-0000-0000-000000000000', 295),
  ('a0000000-0000-0000-0000-000000000006', 'b0001186-gr01-0000-0000-000000000000', 296),
  ('a0000000-0000-0000-0000-000000000006', 'b0001187-gr01-0000-0000-000000000000', 297),
  ('a0000000-0000-0000-0000-000000000006', 'b0001188-gr01-0000-0000-000000000000', 298)
;

COMMIT;
