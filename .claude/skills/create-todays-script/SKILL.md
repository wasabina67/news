---
name: create-todays-script
description: wip
disable-model-invocation: true
user-invocable: true
---

## 手順

### 1. Markdownファイルの存在チェック
- 今日の日付で作成されたMarkdownファイルが存在するかチェックする
  - `docs/posts/{yyyy}/{MM}/{dd}.md`
- 存在しない場合は、その旨をアナウンスして終了する

### 2. スクリプトファイルの作成

## フォーマット
`.claude/skills/create-todays-script/format.txt` を参照する

## ルール
- 既に同じ日付のスクリプトファイルが存在する場合は、上書きする
- 過去の日付のファイルは新規作成しない
