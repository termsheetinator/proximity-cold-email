#!/bin/bash

MEMORY_FILE="$(pwd)/memory.md"

# memory.md missing or empty
if [ ! -f "$MEMORY_FILE" ] || [ ! -s "$MEMORY_FILE" ]; then
  echo "Proximity is active. No positioning doc found in this directory."
  echo "If the user runs /proximity, begin with onboarding — ask for their website URL."
  exit 0
fi

# memory.md exists but still has template placeholders
if grep -q "\[Company name" "$MEMORY_FILE"; then
  echo "Proximity is active. The positioning doc exists but has not been filled in yet."
  echo "Begin with onboarding — ask the user for their website URL."
  exit 0
fi

# memory.md is populated — inject it as live context
echo "Proximity is active. The positioning doc below is loaded and current."
echo "Read it before writing any copy."
echo "All copy must pass the spam filter before delivery — scan every word, rewrite any that hit the banned list, repeat until clean."
echo ""
echo "--- POSITIONING DOC (memory.md) ---"
echo ""
cat "$MEMORY_FILE"
echo ""
echo "--- END POSITIONING DOC ---"
