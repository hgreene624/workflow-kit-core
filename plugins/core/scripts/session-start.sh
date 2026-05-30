#!/usr/bin/env bash
# WFK Core -- SessionStart hook.
# Auto-fires "Resume": injects standing orientation so every new session loads conventions,
# derives the Meta Plan from project docs + intent edges, and surfaces next work.
# Output on stdout is added to the model's context before the first prompt.
# Defensive: never fail the session.
set -uo pipefail
ROOT="${CLAUDE_PROJECT_DIR:-$PWD}"

# Only orient inside a WFK vault (marked by .wfk/).
[ -d "${ROOT}/.wfk" ] || exit 0

echo "## Workflow Kit -- session start (Resume)"
echo "Vault: ${ROOT}"
echo
echo "Before the first reply, run the Resume routine:"
echo "1. Read .wfk/conventions/*.yaml so you can standardize and file any artifact to convention."
echo "2. Derive the Meta Plan (do NOT persist it; it is derived on load): scan 02_Projects/*/ project"
echo "   docs' frontmatter (priority, status, next_move, open_loops) for per-thread state, and read"
echo "   .wfk/intent.jsonl for cross-project dependency edges. Compute ready / blocked / next."
echo "3. If the user asks what to work on, answer from that derived view, never from a stored summary."
echo
echo "Active engines (ambient, no command needed):"
echo "- Artifact Engine: when the user asks to create/save/document something, propose filing it to the"
echo "  matching convention, then create on confirm. If no convention fits, infer one, confirm in plain"
echo "  language, and append it to .wfk/conventions/personal.yaml."
echo "- Learn: capture corrections, preferences, and new conventions as they happen."
echo "- The only command the user types is 'closeout'. A one-word 'save this' / 'guardalo' forces a file now."

if [ -s "${ROOT}/.wfk/intent.jsonl" ]; then
  echo
  echo "Cross-project dependency edges (.wfk/intent.jsonl):"
  head -30 "${ROOT}/.wfk/intent.jsonl" 2>/dev/null || true
fi

exit 0
