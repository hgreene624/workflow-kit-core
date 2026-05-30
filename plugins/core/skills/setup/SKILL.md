---
name: setup
description: Stand up a new Workflow Kit vault. Use for "setup", "set up my vault", "get started", "new vault", "first time setup", "initialize". Scaffolds a fresh vault, writes its CLAUDE.md and .wfk/, enables the plugin in the vault, and archives any old global WFK skills so they do not bleed in.
disable-model-invocation: true
---

# Setup

Create a fresh, self-contained new-model vault the user adds in Obsidian.

## Procedure
1. **Choose the vault location** (default `~/Documents/Vaults/{name}`). Create the folder and `git init` it (git is the local trust/history layer).
2. **Scaffold structure:** `01_Notes/`, `01_Notes/Meetings/`, `01_Notes/Daily/`, `02_Projects/`, `03_Reference/`. Stable English folder names regardless of language.
3. **Write `.wfk/`:**
   - `.wfk/conventions/base.yaml` (copy from the plugin template), empty `plugins.yaml`, empty `personal.yaml`.
   - empty `.wfk/intent.jsonl`.
   - `.wfk/paths.json` with `vault_root` and `language`.
4. **Write `CLAUDE.md`** from the plugin's `templates/CLAUDE.md`, filling name, role, language, and a save-word.
5. **Enable the plugin per vault:** write `.claude/settings.json` from the template (`enabledPlugins: ["wfk-core@workflow-kit"]`). This scopes the engines + hooks to this vault only.
6. **Sweep old global skills:** if `~/.claude/skills/` holds old WFK skills, move them to a timestamped backup so they stop shadowing the plugin-scoped ones. Report what was archived.
7. **First commit**, then tell the user to add the vault folder in Obsidian.

## Rules
- The vault holds instructions + config + content. Skills + hooks come from the plugin. Never copy skills into the vault or globals.
- Confirm the location and the archive step with the user before executing.
