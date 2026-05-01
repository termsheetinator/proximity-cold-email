#!/bin/bash
set -e

SKILL_DIR="$HOME/.claude/skills"
MEMORY_DIR="$(pwd)"
SKILL_URL="https://raw.githubusercontent.com/termsheetinator/proximity-cold-email/main/proximity.md"
MEMORY_URL="https://raw.githubusercontent.com/termsheetinator/proximity-cold-email/main/memory.md"

echo ""
echo "Installing Proximity Cold Email skill..."
echo ""

# Create skills directory if it does not exist
mkdir -p "$SKILL_DIR"

# Download the skill
curl -fsSL "$SKILL_URL" -o "$SKILL_DIR/proximity.md"

# Download memory.md to current directory if it does not already exist
if [ ! -f "$MEMORY_DIR/memory.md" ]; then
  curl -fsSL "$MEMORY_URL" -o "$MEMORY_DIR/memory.md"
fi

echo "Done."
echo ""
echo "  Skill installed to: $SKILL_DIR/proximity.md"
echo "  Memory file ready:  $MEMORY_DIR/memory.md"
echo ""
echo "  Open Claude Code in this directory and run /proximity to get started."
echo "  On first run, the skill will walk you through your offer and build your positioning doc."
echo ""
