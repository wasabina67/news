---
name: create-todays-post
description: 今日のニュースを検索し、Markdownファイルにまとめる。
disable-model-invocation: true
user-invocable: true
---

## 手順

### 1. ニュース検索
WebSearch を使って、今日のニュースを検索する

- 日本の主要ニュース
  - 政治・経済・社会・テクノロジー・国際など幅広い分野をカバーするよう複数回検索する
  - 例: `今日のニュース 政治`, `今日のニュース 経済`, `今日のニュース テクノロジー`
- 海外の主要ニュース
  - 政治・経済・社会・テクノロジー・国際など幅広い分野をカバーするよう複数回検索する
  - 例: `today news politics`, `today news economy`, `today news technology`

### 2. 記事の確認
検索結果だけでは情報が不足している場合 WebFetch で情報元のURLにアクセスし、内容を正確に把握する

### 3. Markdownファイルの作成
`docs/posts/{yyyy}/{MM}/{dd}.md` に保存する

- 日本語で記述する
  - 文脈から、翻訳しないほうがよいものは、そのまま記述する
- 日本・海外それぞれ5件程度を目安に選ぶ
- 社会的影響度の高いニュースを優先して選ぶ
- 各ニュースの要約はリスト形式で、事実に基づき正確に記述する
- 各ニュースには必ず出典（情報元のURL）を付ける

### 4. `docs/index.md` の更新
既存の `docs/index.md` の構造を確認し、それに合わせてリンクを追加する

## フォーマット
`.claude/skills/create-todays-post/format.md` を参照する

## ルール

- 既に同じ日付のMarkdownファイルが存在する場合は、上書きする
- 過去の日付のファイルは新規作成しない
