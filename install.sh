#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
COMMANDS_DIR="$HOME/.claude/commands"
WORKSPACE_DIR="$HOME/my-workspace"

mkdir -p "$COMMANDS_DIR"
mkdir -p "$WORKSPACE_DIR"

cp "$REPO_DIR/commands/manga-png-to-paperback.md" "$COMMANDS_DIR/manga-png-to-paperback.md"
cp "$REPO_DIR/manga_pdf_maker.py" "$WORKSPACE_DIR/manga_pdf_maker.py"

echo "✓ スキルをインストールしました: $COMMANDS_DIR/manga-png-to-paperback.md"
echo "✓ スクリプトをインストールしました: $WORKSPACE_DIR/manga_pdf_maker.py"

echo "必要なライブラリをインストールしています..."
pip3 install Pillow reportlab -q
echo "✓ ライブラリのインストール完了"
echo "  Claude Code で /manga-png-to-paperback と入力して使えます。"
