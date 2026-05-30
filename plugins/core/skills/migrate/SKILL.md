---
name: migrate
description: Migrate from the old Workflow Kit. Use for "migrate", "move from the old kit", "import my old vault", "upgrade my vault", "switch to the new system". Stands up a fresh new-model vault and imports content from the old vault as a READ-ONLY source (normalize on import). The old vault is never written.
disable-model-invocation: true
---

# Migrate

Migration creates a fresh new-model vault and imports from the old vault as a read-only source. The old vault is the archive; it is never modified, so migration is non-destructive by construction.

## Procedure
1. **Stand up the new vault** via `setup`, with the target loadout's plugins enabled.
2. **Derive conventions from the old CLAUDE.md.** Parse the old kit's prefix table and routing rules into the new vault's `.wfk/conventions/` (preserving custom prefixes/routing). This is why nothing is lost: the registry is built from their existing setup.
3. **Import + normalize content (loadout-scoped), reading the old vault read-only:**
   - Each old project's `specs/` + `plans/` + `reports/` import into one new living project doc (Goal from the spec, Steps from the plan, Log from reports).
   - Open PICs import as intent: priority + next_move + open_loops into project frontmatter; cross-project dependencies into `.wfk/intent.jsonl`.
   - Roadmaps (WRM/RM/MRM) are dropped; the derived Meta Plan replaces them.
   - Prefixed files import as descriptive name + frontmatter type (non-technical loadout) OR keep prefixes (Core + Build loadout).
4. **Bootstrap intent** so the Meta Plan is populated on day one.
5. **Review + adopt:** present what was imported, let the user review the new vault, then add it in Obsidian. They keep the old vault until satisfied.

## Rules
- Old vault is READ-ONLY. Never write to it.
- Normalization targets the chosen loadout: a Core + Build power user keeps specs/plans/prefixes; a Core-only user flattens fully.
- Best-effort prose-to-intent extraction is confirmed at the first closeout.
