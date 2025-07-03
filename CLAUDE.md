# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## プロジェクト概要

このプロジェクトは、Gitの機能を拡張するカスタムサブコマンドのコレクションです。各サブコマンドは `git-<name>` 形式の独立したシェルスクリプトとして実装されており、Gitのサブコマンドとして使用できます。

## 主要コマンド

### セットアップ
```bash
# スクリプトに実行権限を付与
./setup.sh

# 個別に実行権限を付与
chmod +x git-fzf-switch
chmod +x git-fzf-branch-list
```

### 使用方法
```bash
# ブランチ選択とswitch
git fzf-switch

# ブランチ選択のみ（標準出力）
git fzf-branch-list
```

## アーキテクチャ

### ファイル構成
- `git-*` - Gitサブコマンドスクリプト（実行可能なbashスクリプト）
- `setup.sh` - 実行権限付与用スクリプト
- `README.md` - プロジェクトドキュメント

### 依存関係
- `fzf` - 対話的なファジー検索ツール
- `fd` - 高速なfindの代替

### スクリプトの共通パターン
1. 必要コマンドの存在確認（fzf等）
2. Gitリポジトリの確認
3. 現在のブランチ取得
4. ブランチ一覧取得（更新日時順、現在のブランチ除外）
5. fzfでの対話的選択（プレビュー機能付き）
6. 選択結果の処理

### プレビュー機能
各fzfサブコマンドは共通のプレビュー機能を持ち、以下の情報を表示：
- ブランチの最新コミット情報
- ブランチの作成日時
- 現在のブランチとの差分統計
- 最近のコミット履歴（5件）

## 新しいサブコマンドの追加

1. `git-<subcommand-name>` の形式でスクリプトファイルを作成
2. ファイルの先頭に `#!/bin/bash` を追加
3. 必要コマンドの存在確認を実装
4. Gitリポジトリの確認を実装
5. `setup.sh` を実行して実行権限を付与