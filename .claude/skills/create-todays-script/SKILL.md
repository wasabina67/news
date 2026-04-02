---
name: create-todays-script
description: Markdownファイルを元にスクリプトファイルを作成する
disable-model-invocation: true
user-invocable: true
---

## 手順

### 1. Markdownファイルの存在チェック
- 今日の日付で作成されたMarkdownファイルが存在するかチェックする
  - `docs/posts/{yyyy}/{MM}/{dd}.md`
- 存在しない場合は、その旨をアナウンスして終了する

### 2. スクリプトファイルの作成
`scripts/{yyyy}/{MM}/{dd}.txt` に保存する

- Markdownファイル（`docs/posts/{yyyy}/{MM}/{dd}.md`）を元にスクリプトファイルを作成する
- スクリプトファイルは、読み上げ用のナレーション原稿として利用される
- 日本語で記述する
  - 文脈から、翻訳しないほうがよいものは、そのまま記述する
- ニュースの順序はMarkdownファイルの構成に従う
- 各ニュースは簡潔かつ自然な話し言葉で要約する
- 情報元のURLやMarkdown記法は含めない
- 聞き手が内容を理解しやすいよう、適切な接続表現や補足説明を加える

## フォーマット
`.claude/skills/create-todays-script/format.txt` を参照する

## ルール
- 既に同じ日付のスクリプトファイルが存在する場合は、上書きする
- 過去の日付のファイルは新規作成しない
