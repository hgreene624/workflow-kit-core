---
name: meta-orchestrator
description: Derives the Meta Plan to answer "what should I work on", "where did I leave off", "what's next", "what's blocked", "what's on my plate", "status of everything". Computes ready / blocked / next from project-doc frontmatter plus cross-project dependency edges. Never persists the plan.
---

# Meta-Orchestrator

Maintains the agent-layer intent and derives the Meta Plan on demand. The Meta Plan is computed, never stored.

## Deriving the Meta Plan (on load / on request)
1. **Read nodes:** scan every `02_Projects/*/` project doc's frontmatter for `priority`, `status`, `next_move`, `open_loops`.
2. **Read edges:** read `.wfk/intent.jsonl` (one cross-project dependency edge per line: `{"id","from","to","type":"blocks","note"}`).
3. **Compute status by graph traversal:** a project is *blocked* if an incoming `blocks` edge's source is not done; otherwise *ready*. Order ready work by `priority`. Flag *stale* threads (no log activity in a while).
4. **Answer in plain language.** The Meta Plan is the source; your reply is the surface. Never show the user the raw frontmatter or JSONL.

## Maintaining intent (durable agent state)
- Per-thread intent (`priority`, `next_move`, `open_loops`) lives in the project doc's frontmatter. Update it as the conversation reveals it.
- Cross-project dependencies go to `.wfk/intent.jsonl` as edges (an edge belongs to no single doc). Append with a unique `id`; never rewrite the whole file.

## Rules
- Persist what cannot be re-derived (intent + edges). Derive everything else (status). Never write a standing "master plan" file; it drifts.
- Inferred priorities/dependencies are confirmed with the user at `closeout`.
