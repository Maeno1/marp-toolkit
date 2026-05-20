# Changelog — Marp Anti-AI-isms

このディレクトリ（RUBRIC.md / CORPUS.md）の追加・変更履歴。
`git log` でも追えるが、人間が読みやすい形でここに集約する。

## 必須フォーマット

各エントリは以下のいずれかのタグで始める（`rg '\[rubric\]'` などで grep 抽出可能）：

- `[rubric] R<N> 追加: <ルール本文 1 行>（根拠: <ログパス>）`
- `[rubric] R<N> 廃止: <理由>（最後の指摘: <ログパス>）`
- `[rubric] R<N> 修正: <修正内容> <理由>`
- `[corpus] <client> <type> 追加: <絶対パス>`
- `[corpus] <client> <type> 削除: <理由>`
- `[corpus] <client> <type> 状態変更: 承認済 → 反面教師（理由）`
- `[infra] <skill 設計変更>`

## 初期セットアップ

- [rubric] R1〜R10 追加: 構造ルール初期版（3 LLM 独立評価から抽出）
- [rubric] R5/R8/R9 改訂: 境界条件を数値化（太字累積の閾値、文末混在の検出条件、「の」連鎖の OR 条件）
- [infra] CHANGELOG 必須フォーマット導入（rubric / corpus / infra タグ強制）
- [infra] クライアント名正規化エイリアステーブルを CORPUS.md に追加

<!--
追記テンプレ：

## YYYY-MM-DD
- [rubric] R11 追加: 〜（根拠: <ログパス>）
- [corpus] <client> <type> 追加: <絶対パス>
- [infra] <変更>
-->
