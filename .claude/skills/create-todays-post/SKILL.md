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
- 海外の主要ニュース
  - 政治・経済・社会・テクノロジー・国際など幅広い分野をカバーするよう複数回検索する

### 2. 記事の確認
必要に応じて WebFetch で情報元のURLにアクセスし、内容を正確に把握する

### 3. Markdownファイルの作成
`docs/posts/{yyyy}/{MM}/{dd}.md` に保存する

### 4. `docs/index.md` の更新
`docs/index.md` に保存したMarkdownファイルのリンクを追加する

## フォーマット
`.claude/skills/create-todays-post/format.md` を参照すること

## ルール
- 日本語で記述する
  - 文脈から、翻訳しないほうがよいものは、そのまま記述する
