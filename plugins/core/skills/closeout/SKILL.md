---
name: closeout
description: End-of-session finalize. The one command the user types to wrap up. Use for "closeout", "close out", "wrap up", "I'm done", "end of day", "that's it for now". Sweeps for anything that should have been filed or learned but wasn't, reads back inferred priorities and dependencies for correction, and ensures nothing is lost.
disable-model-invocation: true
---

# Closeout

The only command the user types in the common path. Logging is continuous (the Artifact Engine + PostToolUse hook log as work happens), so closeout finalizes and backstops.

## Procedure
1. **Gap sweep (the safety net).** Review the session for anything that should have been filed or learned but was not (a decision never saved, a correction never captured, a meeting never logged). Propose the batch in plain language; file/capture what the user confirms. This converts a missed mid-session auto-trigger from "lost" into "caught at closeout".
2. **Intent read-back.** Present, in plain language, the priorities and dependencies you inferred this session ("I've put the SOP work ahead of the email triage, and marked the KB build as waiting on the corpus, adjust?"). Write the user's corrections to project-doc frontmatter and `.wfk/intent.jsonl`.
3. **Confirm the day's record** is captured (the daily log reflects what happened).
4. **Write nothing the next session can't re-derive.** No PIC, no roadmap, no stored Meta Plan. Resume will derive the state next time.

## Rules
- Manual only (`disable-model-invocation: true`); never fire this on your own.
- This is where the ambient design earns its safety: closeout guarantees nothing was lost.
