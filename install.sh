#!/bin/bash
set -e

SKILL_DIR="$HOME/.claude/skills"
MEMORY_DIR="$(pwd)"
BASE_URL="https://raw.githubusercontent.com/termsheetinator/proximity-cold-email/main"

echo ""
echo "Installing Proximity Cold Email skills..."
echo ""

mkdir -p "$SKILL_DIR"

curl -fsSL "$BASE_URL/proximity.md" -o "$SKILL_DIR/proximity.md"
echo "  ✓ /proximity installed"

curl -fsSL "$BASE_URL/spamguard.md" -o "$SKILL_DIR/spamguard.md"
echo "  ✓ /spamguard installed"

if [ ! -f "$MEMORY_DIR/memory.md" ]; then
  curl -fsSL "$BASE_URL/memory.md" -o "$MEMORY_DIR/memory.md"
  echo "  ✓ memory.md created in current directory"
fi

echo ""
echo "Done. Open Claude Code in this directory and run:"
echo ""
echo "  /proximity  — audit or write cold email copy using the Proximity Method"
echo "  /spamguard  — scan any copy for spam triggers and get a clean rewrite"
echo ""
echo "Run /proximity first — it will walk you through your offer and build your positioning doc."
echo ""
