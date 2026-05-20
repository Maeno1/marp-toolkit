#!/usr/bin/env bash
# README の Preview 用 PNG を examples/screenshots/ に生成するスクリプト。
# リポルートから `bash examples/render-screenshots.sh` で実行する。
#
# 注意: `--theme-set themes/base.css` を必ず付ける。frontmatter の `theme: base`
# だけでは Marp CLI は base.css を認識せず、Marp Core 内蔵の default theme が
# fallback で当たり、レイアウト・色・フォントサイズが全て崩れる（実体験あり）。

set -euo pipefail

cd "$(dirname "$0")/.."

marp examples/sample.md \
  --images png \
  --allow-local-files \
  --theme-set themes/base.css \
  -o examples/screenshots/sample.png
