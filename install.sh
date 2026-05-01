#!/bin/bash
set -e

# Colors
BLACK='\033[0;30m'
GREEN='\033[0;32m'
BRIGHT_GREEN='\033[1;32m'
CYAN='\033[0;36m'
BRIGHT_CYAN='\033[1;36m'
WHITE='\033[1;37m'
DIM='\033[2m'
RESET='\033[0m'

SKILL_DIR="$HOME/.claude/skills"
MEMORY_DIR="$(pwd)"
BASE_URL="https://raw.githubusercontent.com/termsheetinator/proximity-cold-email/main"

# Typing effect
type_out() {
  local text="$1"
  local delay="${2:-0.03}"
  for ((i=0; i<${#text}; i++)); do
    printf "${text:$i:1}"
    sleep "$delay"
  done
  printf "\n"
}

# Animated spinner during download
spinner() {
  local pid=$1
  local label="$2"
  local frames=('⠋' '⠙' '⠹' '⠸' '⠼' '⠴' '⠦' '⠧' '⠇' '⠏')
  local i=0
  while kill -0 "$pid" 2>/dev/null; do
    printf "\r  ${BRIGHT_GREEN}${frames[$i]}${RESET}  ${DIM}${label}${RESET}"
    i=$(( (i+1) % ${#frames[@]} ))
    sleep 0.08
  done
  printf "\r  ${BRIGHT_GREEN}✓${RESET}  ${WHITE}${label}${RESET}\n"
}

clear

# Header
sleep 0.2
printf "\n"
printf "${BRIGHT_GREEN}"
printf "  ██████╗ ██████╗  ██████╗ ██╗  ██╗██╗███╗   ███╗██╗████████╗██╗   ██╗\n"
printf "  ██╔══██╗██╔══██╗██╔═══██╗╚██╗██╔╝██║████╗ ████║██║╚══██╔══╝╚██╗ ██╔╝\n"
printf "  ██████╔╝██████╔╝██║   ██║ ╚███╔╝ ██║██╔████╔██║██║   ██║    ╚████╔╝ \n"
printf "  ██╔═══╝ ██╔══██╗██║   ██║ ██╔██╗ ██║██║╚██╔╝██║██║   ██║     ╚██╔╝  \n"
printf "  ██║     ██║  ██║╚██████╔╝██╔╝ ██╗██║██║ ╚═╝ ██║██║   ██║      ██║   \n"
printf "  ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝     ╚═╝╚═╝   ╚═╝      ╚═╝  \n"
printf "${RESET}"
printf "\n"
printf "  ${DIM}Cold Email Method  ·  by Termsheetinator  ·  infrasuite.io${RESET}\n"
printf "\n"
sleep 0.4

# Divider
printf "  ${DIM}────────────────────────────────────────────────────${RESET}\n"
printf "\n"
sleep 0.2

type_out "  Installing Proximity Cold Email skills..." 0.02
printf "\n"
sleep 0.3

# Install proximity
mkdir -p "$SKILL_DIR/proximity"
(curl -fsSL "$BASE_URL/proximity.md" -o "$SKILL_DIR/proximity/SKILL.md" 2>/dev/null) &
spinner $! "/proximity  — Proximity Method writer + auditor"
sleep 0.2

# Install spamguard
mkdir -p "$SKILL_DIR/spamguard"
(curl -fsSL "$BASE_URL/spamguard.md" -o "$SKILL_DIR/spamguard/SKILL.md" 2>/dev/null) &
spinner $! "/spamguard  — Spam trigger scanner"
sleep 0.2

# memory.md
if [ ! -f "$MEMORY_DIR/memory.md" ]; then
  (curl -fsSL "$BASE_URL/memory.md" -o "$MEMORY_DIR/memory.md" 2>/dev/null) &
  spinner $! "memory.md  — Positioning doc ready in current directory"
  sleep 0.2
fi

# spamwords.md
(curl -fsSL "$BASE_URL/spamwords.md" -o "$MEMORY_DIR/spamwords.md" 2>/dev/null) &
spinner $! "spamwords.md  — Master spam word reference installed"
sleep 0.2

# hooks — wire up positioning doc persistence
mkdir -p "$MEMORY_DIR/.claude/hooks"
(curl -fsSL "$BASE_URL/.claude/hooks/proximity-active.sh" -o "$MEMORY_DIR/.claude/hooks/proximity-active.sh" 2>/dev/null) &
spinner $! ".claude/hooks  — positioning doc hook wired"
sleep 0.2
chmod +x "$MEMORY_DIR/.claude/hooks/proximity-active.sh" 2>/dev/null || true

cat > "$MEMORY_DIR/.claude/settings.json" <<'SETTINGS'
{
  "hooks": {
    "UserPromptSubmit": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash .claude/hooks/proximity-active.sh"
          }
        ]
      }
    ]
  }
}
SETTINGS

printf "\n"
printf "  ${DIM}────────────────────────────────────────────────────${RESET}\n"
printf "\n"
sleep 0.3

type_out "  All done. Open Claude Code in this directory." 0.02
printf "\n"
sleep 0.2

printf "  ${BRIGHT_GREEN}/proximity${RESET}   ${DIM}→  write and audit copy using the Proximity Method${RESET}\n"
sleep 0.15
printf "  ${BRIGHT_GREEN}/spamguard${RESET}   ${DIM}→  scan any copy for spam triggers${RESET}\n"
sleep 0.3

printf "\n"
printf "  ${DIM}Run /proximity first — it reads your website and builds your positioning doc.${RESET}\n"
printf "\n"
