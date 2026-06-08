# Workflow Kit (Core)

An ambient Claude Code + Obsidian second-brain system. You talk; the workflow generates standardized work artifacts and files them in the right project on its own. You invoke almost nothing.

This is the ground-up rebuild that replaces the original 47-skill, spec-driven Workflow Kit. It ships as a **Claude Code plugin marketplace**: a small **Core** plus opt-in plugin packs.

> **Never touched a terminal? Start with [START-HERE.md](START-HERE.md)** — the total-handholding, zero-to-running guide (account → install → launch → one paste that hands all setup to Claude). It works on Mac and Windows and assumes no technical knowledge. After it's running, the in-product tour (`onboard`, just say "show me how this works") teaches the concepts in the language of your own work.
>
> **Already comfortable in a terminal?** [QUICKSTART.md](QUICKSTART.md) is the faster path (~15 min). Then keep [CHEATSHEET.md](CHEATSHEET.md) open and do the 10-minute [WALKTHROUGH.md](WALKTHROUGH.md). This README is the contributor/overview door. For onboarding other people, see [ONBOARDING-PLAYBOOK.md](ONBOARDING-PLAYBOOK.md).
>
> **Status: alpha.** The install + skill plumbing is validated; the live conversational loop is still being shaped with first testers. Expect rough edges and tell us about them.

## The model

**Two layers, one rule.**
- Human layer: the conversation and one living document per project (goal + steps + log).
- Agent layer: per-thread intent in each project doc's frontmatter (priority, dependencies, next move) plus cross-project dependency edges in `.wfk/intent.jsonl`. The Meta Plan is derived on load, never stored.
- Rule: persist what cannot be re-derived, derive everything else.

**Four always-on engines** (never typed): Artifact Engine, Project Sense, Learn, Meta-Orchestrator.
**One real command:** `closeout`. Session start auto-resumes via a hook. A one-word "save this" forces a file if a proposal was missed.

## Install

1. Add the marketplace:
   ```
   /plugin marketplace add hgreene624/workflow-kit-core
   ```
2. Install Core:
   ```
   /plugin install wfk-core@workflow-kit
   ```
3. Load it:
   ```
   /reload-plugins
   ```
4. Create your vault:
   ```
   /wfk-core:setup
   ```
   `setup` scaffolds a fresh vault, writes its `CLAUDE.md` and `.wfk/` (conventions + intent), enables the plugin in the vault's `.claude/settings.json`, and archives any old global WFK skills so they do not bleed in. Add the new vault folder in Obsidian and start working.

   Plugin skills are namespaced `wfk-core:<skill>` and the manual ones are typed by you: `/wfk-core:setup`, `/wfk-core:onboard`, `/wfk-core:closeout`, `/wfk-core:migrate`, `/wfk-core:tailor`, `/wfk-core:update`, `/wfk-core:discover`. The ambient engines (artifact-engine, project, learn, meta-orchestrator, resume, save) you never type. `onboard` is the first-run concept tour, it also fires when a new user says "show me how this works."

## Repo layout

```
.claude-plugin/marketplace.json     marketplace manifest (Core + plugin packs)
plugins/core/
  .claude-plugin/plugin.json        Core plugin manifest
  skills/                           the engines + setup, onboard, closeout, tailor, migrate, update, discover
  hooks/hooks.json                  SessionStart (auto-resume) + PostToolUse (auto-checkpoint)
  scripts/                          hook scripts
templates/
  CLAUDE.md                         vault instructions template
  conventions/base.yaml             base convention registry
  settings.json                     vault plugin-enablement template
```

## Distribution and updates

Skills live in the plugin, never loose in `~/.claude/skills/`. Update with `/plugin update`; deprecations are carried in the manifest with a rename map; a bad update rolls back by version. Vault content and `.wfk/conventions/personal.yaml` are never touched by updates.

## Migrating from the old kit

Migration stands up a fresh new-model vault and imports content from the old vault as a read-only source (the old vault is never written). Specs + plans collapse into one project doc, PICs import as intent, roadmaps are dropped in favor of the derived Meta Plan. Run `/wfk-core:migrate` and point it at the old vault.

## Status

v0.1.0 alpha. Core engines + setup/closeout/migrate/update/discover/tailor are drafted; install, schemas, namespaced-skill split, and both hooks are validated. Live conversational loop is being shaped with first testers. Design lives in the operator's vault: `PD - Workflow Kit Core Rebuild`, `DD - WFK Core Redesign Feature Breakdown`, `ARE - WFK Core Engineering Decisions`.
