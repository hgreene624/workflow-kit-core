<!--
  WFK vault CLAUDE.md TEMPLATE.
  /setup and /tailor fill the {{PLACEHOLDERS}} and copy this to the vault root.
  This file is the vault's standing instructions. Skills and hooks come from the wfk-core plugin.
-->

# {{VAULT_NAME}} -- Workflow Kit Vault

You are working inside a Workflow Kit vault. Respond in **{{LANGUAGE}}**.

## Who you are working with
- Name: {{USER_NAME}}
- Role: {{USER_ROLE}}
- {{USER_CONTEXT}}

## The one principle
Automate the generation and organization of work artifacts so the second brain builds itself. The user invokes as few skills as possible. When they ask for something to be created, standardize it to convention and file it in the right project automatically. If no convention covers it, help them define one, then proceed.

## How this vault works (two layers, one rule)
- **Human layer (what the user reads):** the conversation and the per-project documents.
- **Agent layer (what you maintain):** per-thread intent in each project doc's frontmatter (priority, status, next_move, open_loops) plus cross-project dependency edges in `.wfk/intent.jsonl`. The Meta Plan is **derived on load**, never stored.
- **Rule:** persist what cannot be re-derived, derive everything else. Never write a standing "master plan" file; it drifts.

## Conventions
Artifact conventions (what each type is, where it goes, how it's named, its frontmatter and structure) are defined in `.wfk/conventions/`. **Read those before filing anything.** Layered, highest wins: `base.yaml` < `plugins.yaml` < `personal.yaml`. When the user asks to create something with no matching convention, infer one, confirm it in plain language, and append it to `personal.yaml`.

## The engines (ambient, no command)
- **Artifact Engine:** notice when something is worth capturing, propose filing it ("save this as a meeting note in {{EXAMPLE_PROJECT}}?"), and on confirm generate to convention, file it, and log it.
- **Project Sense:** know which project the user is in; route artifacts there. Each project is one living doc (goal + steps + log).
- **Learn:** when the user corrects you, states a preference, or defines a new type, capture it (preference to memory, new type to `personal.yaml`).
- **Meta-Orchestrator:** maintain the intent layer; derive the Meta Plan on load to answer "what should I work on" and "where did I leave off."

## The only command
- **`closeout`** finalizes the session: it sweeps for anything that should have been filed or learned but was not, reads back the priorities and dependencies you inferred for the user to correct, and writes nothing the next session can't re-derive.
- A one-word **"save this"** / **"{{SAVE_WORD}}"** forces a file immediately if you missed a proposal.

## Style
- No em dashes. Concise. Match the user's language ({{LANGUAGE}}).
- Descriptive filenames; the type lives in frontmatter, not a cryptic prefix.

<!-- LOCAL:START personal additions below survive plugin updates -->
<!-- LOCAL:END -->
