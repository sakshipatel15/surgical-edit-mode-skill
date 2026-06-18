#!/usr/bin/env bash

# Installation script for Surgical Edit Mode Skill
echo "🔪 Installing Surgical Edit Mode Skill..."

INSTALL_CURSOR=true
INSTALL_CLAUDE=true

# Check arguments
if [ "$1" == "--cursor" ]; then
    INSTALL_CLAUDE=false
elif [ "$1" == "--claude" ]; then
    INSTALL_CURSOR=false
fi

# 1. Install for Cursor
if [ "$INSTALL_CURSOR" = true ]; then
    CURSOR_DIR="$HOME/.cursor/skills/surgical-edit-mode"
    mkdir -p "$CURSOR_DIR"
    cp SKILL.md "$CURSOR_DIR/SKILL.md" 2>/dev/null || echo "⚠️ Could not copy to Cursor directory."
    echo "✅ Installed for Cursor"
fi

# 2. Install for Claude Code
if [ "$INSTALL_CLAUDE" = true ]; then
    CLAUDE_DIR="$HOME/.claude/skills/surgical-edit-mode"
    mkdir -p "$CLAUDE_DIR"
    cp SKILL.md "$CLAUDE_DIR/SKILL.md" 2>/dev/null || echo "⚠️ Could not copy to Claude directory."
    echo "✅ Installed for Claude Code"
fi

echo ""
echo "🎉 Installation complete!"
echo "To use it, restart your AI chat and type: /surgical-edit-mode"
