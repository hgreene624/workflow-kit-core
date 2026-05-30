---
name: update
description: Update the kit. Use for "update", "upgrade the kit", "get the latest", "update wfk", "pull updates". Wraps the plugin update, applies manifest deprecations and renames, and reports what changed. Never touches vault content or personal conventions.
disable-model-invocation: true
---

# Update

The kit ships as plugins, so updating is the plugin system, not file surgery.

## Procedure
1. **Update plugins:** `/plugin update` for `wfk-core` and any enabled plugin packs.
2. **Apply manifest deprecations/renames:** read the plugin manifest's deprecation map; if a skill was renamed or removed, migrate references in the vault's `CLAUDE.md` and tell the user what replaced what.
3. **Refresh kit-owned conventions:** `base.yaml` and `plugins.yaml` are replaced by the new plugin version. `personal.yaml` is never touched.
4. **Report** the version delta and any deprecations applied.

## Rules
- Vault content and `.wfk/conventions/personal.yaml` are never modified by an update.
- A bad update rolls back by version pin (`/plugin install wfk-core@workflow-kit@<version>`).
