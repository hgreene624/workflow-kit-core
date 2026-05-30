---
name: resume
description: Session orientation. Auto-runs at session start via the SessionStart hook; also use when the user says "resume", "orient", "where were we", "catch me up", "what's going on", "pick up where I left off". Loads conventions and derives the current Meta Plan.
---

# Resume

The merged orient + pickup. Runs automatically at session start (the SessionStart hook injects the routine); invokable on demand for a mid-session re-orient.

## Procedure
1. **Load conventions:** read `.wfk/conventions/*.yaml` so the Artifact Engine can standardize and file.
2. **Load standing rules:** the vault `CLAUDE.md` (identity, language, preferences) is already in context.
3. **Derive the Meta Plan:** hand to the Meta-Orchestrator (read project-doc frontmatter + `.wfk/intent.jsonl`, compute ready/blocked/next). Do not persist it.
4. **Surface, briefly:** if the user is starting fresh, offer the top of the derived view ("Here's where things stand; the next ready thing is X"). Otherwise stay quiet and let them lead.

## Rules
- This replaces the old triage report. There is no report to generate; the derived view is the answer.
- Keep the opener short. The user reads a sentence or two, not a dump.
