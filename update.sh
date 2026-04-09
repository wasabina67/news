#!/usr/bin/env bash
set -euo pipefail

export TZ=Asia/Tokyo

YYYY="$(date +%Y)"
MM="$(date +%m)"
DD="$(date +%d)"
POST_PATH="docs/posts/${YYYY}/${MM}/${DD}.md"
SCRIPT_PATH="scripts/${YYYY}/${MM}/${DD}.txt"

mkdir -p "docs/posts/${YYYY}/${MM}" "scripts/${YYYY}/${MM}"

claude -p "/create-todays-post" \
  --permission-mode acceptEdits \
  --allowedTools "Read,Write,Edit,Glob,Grep,Bash,WebSearch,WebFetch"

[[ -f "${POST_PATH}" ]] || { echo "ERROR: ${POST_PATH} was not created" >&2; exit 1; }

claude -p "/create-todays-script" \
  --permission-mode acceptEdits \
  --allowedTools "Read,Write,Edit,Glob,Grep,Bash"

[[ -f "${SCRIPT_PATH}" ]] || { echo "ERROR: ${SCRIPT_PATH} was not created" >&2; exit 1; }

git add "${POST_PATH}" "${SCRIPT_PATH}" docs/index.md
git diff --cached --quiet || git commit -m "Add ${YYYY}-${MM}-${DD} news post and script"
