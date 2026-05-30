---
name: tailor
description: Build or adjust a personalized loadout for a specific person. Use for "tailor", "onboard", "set up a kit for", "build a loadout", "customize for", "make a version for". Runs a short interview plus ingests material the person brings, then composes plugins + starter conventions + a personalized CLAUDE.md.
disable-model-invocation: true
---

# Tailor

Compose a per-person loadout. A loadout is `Core + chosen plugin conventions + personal conventions`. Migration is this skill pointed at an old vault.

## Inputs (hybrid)
1. **Short guided interview:** role, what they produce, what is repetitive, which tools/systems they touch, language.
2. **Ingest what they bring:** existing AI agents/instructions, SOPs, sample files, an existing vault. Read and infer their workflow and conventions.

## Procedure
1. Reconcile interview + ingested material into a proposed loadout:
   - **Plugins** to enable (e.g. Capture, Knowledge, Build, Notes, Org packs).
   - **Starter conventions** seeded into `personal.yaml` (their document types, named in their language).
   - **Personalized `CLAUDE.md`** (identity, role, language, tone, domain grounding).
   - **Seed reference context** distilled from their ingested material.
2. Present the proposed loadout in plain language for approval.
3. On approval, run `setup` for their vault with the chosen plugins enabled and the seeded conventions/CLAUDE.md written.

## Example (Luis)
Finance lead, Spanish-first, brings six fiscal/compliance agents and SOPs, files on OneDrive. Loadout: `Core + Capture + Knowledge + finance starters + language: es`, hardened vault-inside-OneDrive (git local, `.git/` excluded from OneDrive sync).

## Rules
- Preserve what they already have; do not impose. Tailoring adds and personalizes, it does not flatten a power user's workflow.
