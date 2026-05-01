# Proximity Cold Email

Two Claude Code skills for cold email copy — write it right, keep it out of spam.

Built by [Termsheetinator](https://github.com/termsheetinator).

---

## Skills

**`/proximity`** — writes and audits cold email copy using the Proximity Method. Body copy, subject lines, and CTAs. On first run, give it your website URL — it reads your site, figures out your offer and who you serve, and builds a positioning doc. Every session after, it just asks who the list is for.

**`/spamguard`** — scans any copy against 178+ banned words, 7 phrase categories, and a full formatting ruleset. Works on emails, subject lines, follow-ups, or any copy field. Every violation flagged with a specific fix and a clean rewrite.

---

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/termsheetinator/proximity-cold-email/main/install.sh | bash
```

Open Claude Code in your project directory and run `/proximity` to get started.

---

## How It Works

### First Run

Run `/proximity`. Give it your website URL. It reads your site and builds a positioning doc in `memory.md` — your offer, what you are already doing, and the honest framing anchors for your copy. Confirm it is accurate. Done.

### Every Run After

Open Claude Code in the same directory. Run `/proximity`. It reads `memory.md` and asks one question: who is this campaign targeting? Answer with a job title, vertical, or market segment. Then give it a draft to audit or ask it to write one.

### What It Audits

Every output goes through two checks:

**Proximity** — where does the copy sit on the spectrum from setup language (far) to active framing (close)? Flags every line that describes process instead of position and rewrites from the closest honest edge.

**Spam guard** — scans for banned words, banned phrases, and formatting violations. Every flag comes with a specific plain-language fix.

Subject lines are audited separately against a photograph framework — 2-4 words, lowercase, question-mark format, built for variation and deliverability.

---

## Requirements

- [Claude Code](https://claude.ai/code)
- An Anthropic account

---

## Files

| File | What it is |
|---|---|
| `proximity.md` | Proximity Method skill — installs to `~/.claude/skills/` |
| `spamguard.md` | Spam guard skill — installs to `~/.claude/skills/` |
| `memory.md` | Your positioning doc — created on first run in your working directory |
| `install.sh` | One-command installer |

---

## License

Proprietary. Copyright 2026 Termsheetinator. Personal and internal business use permitted. No redistribution, resale, or use in competing products without written permission. See `LICENSE` for full terms.
