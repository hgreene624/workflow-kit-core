---
name: project
description: Project sense and the one living project doc. Use when the user starts, switches, or works on a project, says "I'm working on", "new project", "let's work on", "set up a project for", or references a project by name. Keeps one document per project (goal + steps + log) and routes all artifacts there.
---

# Project Sense

Always know which project the user is in, and keep each project as one living document.

## The project doc
One file per project at `02_Projects/{project}/{project}.md`, three sections:
- **Goal** (what they want and what done looks like, plain language; this replaces "spec")
- **Steps** (a living checklist; this replaces "plan")
- **Log** (what happened, appended over time)

Frontmatter carries the agent-layer intent: `priority`, `status`, `next_move`, `open_loops`, and `blockedby` (only when the blocker is the same project; cross-project edges go to `.wfk/intent.jsonl`).

## Procedure
1. **Detect the active project** from the conversation, cwd, or the open file. If genuinely new work, scaffold the folder + project doc (ask only the goal).
2. **Route** every artifact the Artifact Engine creates into the active project.
3. **Advance the checklist** conversationally as work happens. Check off steps; append to the log.
4. **Keep frontmatter current** so the Meta-Orchestrator can derive status. You infer `priority`/`next_move` from the conversation; `closeout` reads them back for the user to confirm.

## Rules
- One doc per project. Goal and plan are sections, not separate files.
- Heavy engineering artifacts (formal spec, plan, FRs) only exist if the Build plugin is installed.
