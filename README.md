<div align="center">

<img src="assets/proximity-banner.jpeg" alt="Proximity Method — Write Cold Emails That Get Replies and Book Meetings" width="100%"/>

<br/><br/>

[![License](https://img.shields.io/badge/license-Proprietary-black?style=flat-square)](./LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-skill-orange?style=flat-square)](https://claude.ai/code)
[![Skills](https://img.shields.io/badge/skills-1-blue?style=flat-square)](#skills)
[![Built by Termsheetinator](https://img.shields.io/badge/by-Termsheetinator-303030?style=flat-square)](https://github.com/termsheetinator)

<br/>

*Brought to you by [InfraSuite](https://infrasuite.io) and Advisory Incubator™*

</div>

---

## What This Is

One Claude Code skill for cold email copy — built on the Proximity Method with spam checking built in.

Most cold email fails before the prospect finishes the first line. Not because the offer is wrong. Because the message feels too far from the result they want. That distance is what the Proximity Method fixes.

**`/proximity`** writes and audits body copy, subject lines, and CTAs using the Proximity Method framework. It onboards from your website on first run — no interview, no setup. Shows you exactly how it's positioning your offer, confirms it with you, and builds a positioning doc that gets richer every session through a live feedback loop.

Every piece of copy runs through a silent internal spam audit — 350+ banned words, 7 phrase categories, a formatting ruleset, and a unified audit loop — before it reaches you. You never see a scan output. You just get clean copy.

---

<div align="center">
<img src="assets/proximity-replies.jpeg" alt="Proximity Method Results — 0.2% to 4.3% reply rate, 7% to 43% positive reply rate" width="100%"/>
</div>

---

## The Proximity Spectrum

Every cold email sits somewhere on this spectrum. The goal is always middle-right — the closest honest framing.

```
◄─────────────────────────────────────────────────────────────────────────►
      FAR LEFT         MIDDLE          MIDDLE-RIGHT        TOO FAR RIGHT
  ─────────────    ─────────────    ─────────────────    ─────────────────
  "We can build    "We run          "We are already      "I have clients
   a system for    campaigns for    speaking to the       ready for you
   you."           companies        kind of buyers        tomorrow."
                   like yours."     you want more of."
  
  ✗ Feels like     ~ Credible,      ✓ Active.            ✗ Unbelievable.
  setup. Heavy.    but about you.   In motion.           Breaks trust.
                                    Target zone.
```

The prospect is always trying to mentally skip ahead to the outcome. Good copy helps them do that. Bad copy forces them to walk backward through your process.

---

## How It Works

```mermaid
flowchart TD
    A([Run /proximity]) --> B{memory.md\nhas content?}

    B -- No --> C[Give your website URL]
    C --> D[AI reads your site]
    D --> E[Extracts offer + positioning]
    E --> F[Shows PROXIMITY SNAPSHOT]
    F --> G{Accurate?}
    G -- No --> H[User corrects it]
    H --> F
    G -- Yes --> I[Writes memory.md]
    I --> J

    B -- Yes --> J[Who is this campaign targeting?]
    J --> K{Have a draft?}

    K -- Yes --> L[Paste your draft]
    K -- No --> N[AI writes from scratch]

    L --> O[Proximity audit + silent spam scan]
    N --> O
    O --> Q([Clean copy — ready to send])
    Q --> R{Anything to correct\nabout positioning?}
    R -- Yes --> S[User gives feedback]
    S --> T[Updates memory.md]
    T --> J
    R -- No --> U([Done])

    style A fill:#1a1a1a,color:#fff,stroke:#1a1a1a
    style Q fill:#1a1a1a,color:#fff,stroke:#1a1a1a
    style U fill:#1a1a1a,color:#fff,stroke:#1a1a1a
    style I fill:#2d6a4f,color:#fff,stroke:#2d6a4f
    style T fill:#2d6a4f,color:#fff,stroke:#2d6a4f
    style O fill:#1d3557,color:#fff,stroke:#1d3557
    style F fill:#457b9d,color:#fff,stroke:#457b9d
```

---

## Subject Lines

Subject lines are the first conversion event. Treat them as a photograph — not an explanation.

```
THE PHOTOGRAPH PRINCIPLE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

 "A picture is worth a thousand words."
  Your subject line should work the same way.

  2-3 words  →  create a photograph
  A photograph  →  is worth a thousand words
  Clarity  >  Curiosity  >  Clever

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

FORMATS

  {{firstName}} - quick question?
  {{firstName}} - worth a look?
  {{vertical}} demand?
  {{vertical}} dealflow?
  capacity for {{vertical}}s?

RE / FWD LAYER (triggers ongoing-thread recognition)

  {{RANDOM|RE|Re|re|FWD|Fwd|fwd}}: {{firstName}} - worth a look?
  {{RANDOM|RE|Re|re|FWD|Fwd|fwd}} - question {{firstName}}?

RULES

  ✓ 2-4 words maximum
  ✓ Lowercase everything except {{firstName}}
  ✓ Question marks trigger curiosity
  ✓ Add spintax — run 3-4 variants per campaign
  ✗ Never repeat the same first word across sends
```

---

## Spam Coverage — Built Into /proximity

Every piece of copy runs through a full internal audit before it reaches you. You never see the scan. Violations are rewritten silently.

```
WHAT RUNS ON EVERY OUTPUT
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  350+  banned single words
    7   high-risk phrase categories
         → Money & financial hype
         → Scammy / too-good-to-be-true
         → Marketing overpromises
         → Pressure & clickbait
         → Health & pharma terms
         → Tech phishing-like phrases
         → Gambling, adult & blacklisted
   14   banned follow-up phrases
    5   formatting checks
         → ALL CAPS
         → Em dashes
         → Multiple exclamation marks
         → Excessive links
         → Promotional formatting
    1   unified audit loop
         → Spam and clarity run together every pass
         → Rewrites until zero violations — then delivers

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Works on: emails · subject lines · follow-ups ·
CTAs · opener lines · spintax variants · any copy field
```

---

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/termsheetinator/proximity-cold-email/main/install.sh | bash
```

## Update

Already installed? Re-run the same command. It overwrites the skill and the word list with the latest version. Your `memory.md` is not touched — positioning stays intact.

```bash
curl -fsSL https://raw.githubusercontent.com/termsheetinator/proximity-cold-email/main/install.sh | bash
```

Installs the skill to `~/.claude/skills/`. Creates `memory.md` and `spamwords.md` in your current directory.

Open [Claude Code](https://claude.ai/code) in that directory and run:

```
/proximity
```

First run: give it your website URL. It reads your site, shows you a full positioning snapshot, and asks you to confirm before writing anything. Every session after: it asks who the list is for and updates your positioning doc as it learns more.

Spam checking runs silently on every output. You get clean copy — no separate scan step needed.

---

## Skills

| Skill | Invoke | What it does |
|---|---|---|
| **Proximity** | `/proximity` | Writes and audits body copy, subject lines, and CTAs using the Proximity Method. Onboards from your website. Shows a full positioning snapshot before writing anything. Feedback loop updates your positioning doc every session. Spam audit runs silently on every output — 350+ banned words, 7 phrase categories, unified audit loop. |

---

## Files

| File | Purpose |
|---|---|
| `proximity.md` | Proximity Method skill — installs to `~/.claude/skills/` |
| `spamwords.md` | Master spam word and phrase reference — installed to your project directory |
| `memory.md` | Your positioning doc — written on first run, enriched every session |
| `install.sh` | Installer — drops the skill and reference files in one command |

---

## Requirements

- [Claude Code](https://claude.ai/code) — the CLI for Claude
- An [Anthropic](https://anthropic.com) account

---

<div align="center">

---

**Brought to you by**

[**InfraSuite**](https://infrasuite.io) — Enterprise Grade Cold-Email Mailboxes

**×**

**Advisory Incubator™** — AI & Tech Enabled Advisory

<br/>

*Written and maintained by [Termsheetinator](https://github.com/termsheetinator)*

<br/>

© 2026 Termsheetinator. All rights reserved. — [License](./LICENSE)

</div>
