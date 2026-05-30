---
name: artifact-engine
description: Ambient artifact capture. Use whenever the user asks to create, save, write up, document, note, or record anything, or says "save this", "make a note", "I had a meeting", "write that up", "document this", "log this", "put this somewhere". Proposes filing to convention and files on confirm. Spanish triggers included (guarda esto, haz una nota, tuve una reunion).
---

# Artifact Engine

The ambient capture engine. You do not wait to be told to file; you notice when something is worth capturing and offer.

## When to act
A user message implies a durable artifact (a decision, a meeting, a note, a piece of research, a project update), or the user explicitly asks to save/create/document something.

## Procedure
1. **Classify.** Read `.wfk/conventions/*.yaml` (base < plugins < personal, highest wins). Match the request to a convention by its `triggers` and intent.
2. **Match path (95%).** If a convention fits, **propose in plain language**: "Want me to save this as a meeting note in {project}?" On confirm: generate to the convention's `structure` + `frontmatter_schema`, name it by `filename_pattern`, write it to `destination`. The PostToolUse hook logs and checkpoints automatically.
3. **Gap path (no convention fits).** Infer a sensible convention (descriptive name, a destination near related work, minimal frontmatter, a fitting profile). Confirm in plain language only: "I'll start saving these as Vendor Scorecards in {project}, sound right?" On confirm, append the new convention to `.wfk/conventions/personal.yaml`, then file. Never expose prefixes/schemas to a non-technical user.
4. **Route.** Always file into the active project (ask Project Sense if unsure). Type lives in frontmatter, not the filename.

## Rules
- Propose, do not surprise. One confirmation, no silent file creation.
- Descriptive filenames for non-technical loadouts; `prefix` naming only when the loadout's `defaults.naming` is `prefix`.
- If you miss a moment mid-session, `closeout` will sweep for it. The user can also force a file with "save this".
