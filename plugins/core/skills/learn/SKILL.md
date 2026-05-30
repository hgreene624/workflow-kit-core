---
name: learn
description: Ambient learning. Use when the user corrects you, states a preference, or defines a new way of working, e.g. "remember this", "always do X", "from now on", "don't do that again", "that's wrong", "I prefer", "stop doing". Captures preferences to memory and new artifact types to personal conventions. Spanish: "acuerdate", "siempre haz", "no hagas eso".
---

# Learn

Capture corrections, preferences, and new conventions as a side effect of the conversation. No command, no ceremony.

## What to capture where
- **Preference or rule** ("always", "never", "I prefer", "from now on", a correction to your output): append a concise rule to the vault's memory / LOCAL block of `CLAUDE.md`. Include the why if stated.
- **A new artifact type** the user defines or implies: hand off to the Artifact Engine's Gap flow, which writes it to `.wfk/conventions/personal.yaml`.
- **A new dependency or priority** the user states: hand to the Meta-Orchestrator (frontmatter or `.wfk/intent.jsonl`).

## Procedure
1. Detect the teachable moment (a correction, a stated preference, a "remember this").
2. Confirm understanding in one line if it changes behavior materially.
3. Write it to the right home (memory vs conventions vs intent).
4. Apply it immediately for the rest of the session.

## Rules
- Capture is cheap; do it. But do not over-capture conversational noise; capture durable rules and types.
