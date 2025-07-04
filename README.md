# Git Subcommands

Gitサブコマンドのコレクション

## サブコマンド

| サブコマンド | 説明 |
|:---|:---|
| `git fzf-switch` | fzfを利用してブランチを対話的に選択してswitchする |
| `git fzf-branch-list` | fzfを利用してブランチの閲覧と、選択して標準出力に出力する |
| `git rm-merged` | マージ済みのローカルブランチを一括削除 |

## セットアップ

### 1. 依存関係のインストール
```bash
# macOS
brew install fzf

# Ubuntu/Debian
sudo apt install fzf
```

### 2. 実行権限の付与
```bash
./setup.sh
```

## 使用方法

```bash
# ブランチを選択してswitch
git fzf-switch

# ブランチを選択して出力
git fzf-branch-list

# マージ済みのローカルブランチを一括削除
git rm-merged
```

## ライセンス

MIT