---
name: discover
description: Show what's installed and available. Use for "discover", "what can this do", "what skills do I have", "what plugins are available", "what can you help with", "help". Lists enabled plugins, available plugin packs, and the active conventions.
disable-model-invocation: true
---

# Discover

Show the user what their kit can do, in plain language.

## Procedure
1. **Enabled plugins:** read the vault `.claude/settings.json` `enabledPlugins`; list them with one-line descriptions.
2. **Available packs:** read the marketplace manifest; list plugin packs not yet enabled (Notes, Capture, Knowledge, Research, Design, Build, Org packs, Coordination) so the user knows what they can add.
3. **Active conventions:** summarize `.wfk/conventions/*.yaml` in plain language ("you can save: projects, notes, meetings, daily logs, and your custom Vendor Scorecards").
4. **Remind** of the shape: you talk, it files; the only command is `closeout`.

## Rules
- Plain language, no skill internals. The user wants "what can I do here", not a manifest dump.
