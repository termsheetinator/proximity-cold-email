# Proximity Cold Email

Two Claude Code skills for cold email copy — write it right and keep it out of spam.

**`/proximity`** — audits and rewrites copy using the Proximity Method. Scores your email on a spectrum from setup language (far) to active framing (close). Rewrites from the position that feels closest to what the prospect wants. Builds a persistent positioning doc from your offer on first run so it always knows your context.

**`/spamguard`** — scans any copy against 178+ banned single words, 7 phrase categories, and a full formatting ruleset. Works on emails, subject lines, follow-ups, LinkedIn DMs, opener lines, or any custom variable. Flags every violation with a specific plain-language fix and rewrites the whole thing clean.

Built by [Termsheetinator](https://github.com/termsheetinator).

---

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/termsheetinator/proximity-cold-email/main/install.sh | bash
```

Then open Claude Code in your project directory and run:

```
/proximity
```

or

```
/spamguard
```

First run of `/proximity` onboards you and builds your positioning doc. Every run after goes straight to audit or write mode. `/spamguard` is ready to use immediately — just paste copy.

---

## What It Does

### On First Run — Offer Extraction

The skill asks you five questions about your offer, your ICP, and what your prospect actually wants. From your answers it generates a positioning doc and saves it to `memory.md` in your working directory.

This doc becomes the foundation for every audit and rewrite. You will not answer the same questions twice.

### On Every Run — Two-Phase Audit

**Phase 1 — Proximity Analysis**

Scores your email against the proximity spectrum:

| Position | Example | Grade |
|---|---|---|
| Far left | "We can build a system that generates leads for you." | F |
| Middle | "We run campaigns for companies like yours." | C |
| **Middle-right** | **"We are already in conversations with the type of buyers you want more of."** | **A** |
| Too far right | "I have clients ready for you tomorrow." | F |

Flags every line that uses setup language (`we can build`, `we can install`, `we help companies generate`) and shows you exactly what to replace it with.

**Phase 2 — Spam Guard**

Scans for 100+ banned single words, banned phrases, high-risk phrase categories, and formatting violations. Every flag comes with a specific plain-language rewrite — not just a warning.

Then rewrites the full email clean.

---

## What the Output Looks Like

```
PROXIMITY AUDIT

Subject line: middle
Opener: far-left [SETUP LANGUAGE]
Body: middle-right
CTA: middle

Flagged lines:
- "We can build an outbound system for you." → setup language → rewrite from active position

SPAM GUARD

Flagged words and phrases:
- "access" → banned single word → replace with specific delivery language
- "free consultation" → high-risk phrase → "open to a short conversation"

Formatting issues:
- None

REWRITE

Subject: AI model surfacing signals in your market

[First name],

We have an AI model that surfaces signals for [ICP] actively looking for [what you provide].

Worth a quick note to see if it fits what [Company] is working on?

VERDICT

Original sat at middle-left due to setup language in the opener — rewrite lands at middle-right and passes all spam guard checks. Ready to send.
```

---

## The Proximity Spectrum — 30 Second Version

Most cold email fails before the prospect finishes the first line — because the message feels too far from what they actually want.

**Weak copy** describes the machine:
> "We build outbound systems that identify signals and generate qualified meetings."

**Strong copy** describes where the machine already is:
> "We are already running live outbound into similar buyer groups for companies in adjacent lanes."

The difference is not honesty — it is framing. Strong proximity means framing your reality from the closest truthful edge.

---

## Real Example — Middle-Right in Two Lines

```
Erik,

We have an AI model that surfaces signals for schools, libraries and colleges 
across Wisconsin actively looking for tech consulting and other services you provide.

Worth a chat to see if they would be fit for A.W?
```

What makes this work:
- Active, not setup ("surfaces signals" — already happening)
- Specific ICP named (schools, libraries, colleges in Wisconsin)
- Specific context named (tech consulting — their offer, not a generic category)
- CTA is low-friction — not a calendly link, not a pitch, just permission to continue

---

## Verticals

The skill understands these offer types natively and adjusts proximity framing per vertical:

- **Demand generation** — feels close to qualified buyer conversations
- **Commercial finance (borrower side)** — feels close to active lenders in the relevant lane
- **Commercial finance (lender side)** — feels close to borrower profiles already surfacing
- **M&A / deal flow** — feels close to owners already in conversation
- **Private credit** — stays top-of-funnel, close to active deal flow

---

## Files

| File | Purpose |
|---|---|
| `proximity.md` | Proximity Method auditor and rewriter — installed to `~/.claude/skills/` |
| `spamguard.md` | Full spam trigger scanner — installed to `~/.claude/skills/` |
| `memory.md` | Your positioning doc — generated on first run, lives in your working directory |
| `install.sh` | One-command installer (drops both skills) |

---

## Requirements

- [Claude Code](https://claude.ai/code) (the CLI)
- An Anthropic account

---

## License

MIT — use it, fork it, build on it.

---

## Built By

[Termsheetinator](https://github.com/termsheetinator) — AI-enabled advisory for commercial finance and revenue teams.
