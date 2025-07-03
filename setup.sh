#!/bin/bash

# gitサブコマンドスクリプトに実行権限を付与するsetupスクリプト

echo "gitサブコマンドスクリプトに実行権限を付与中..."

# git-で始まるファイルを検索して実行権限を付与
for file in git-*; do
    if [[ -f "$file" ]]; then
        chmod +x "$file"
    fi
done

echo "完了しました。"
echo "実行権限を付与したファイル:"
ls -la git-*