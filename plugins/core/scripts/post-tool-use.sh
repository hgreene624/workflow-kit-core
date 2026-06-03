#!/usr/bin/env bash
# WFK Core -- PostToolUse hook (Write|Edit|NotebookEdit).
# Trust layer: auto-checkpoint every artifact write so each change is a reviewable, revertible diff.
# This is the git safety net the oracle recommends for agent + human co-editing.
# Defensive: never block the tool; always exit 0.
set -uo pipefail
ROOT="${CLAUDE_PROJECT_DIR:-$PWD}"

# Only operate inside a WFK vault that is also a git repo.
[ -d "${ROOT}/.wfk" ] || exit 0
[ -d "${ROOT}/.git" ] || exit 0
cd "${ROOT}" 2>/dev/null || exit 0

# Commit only when the working tree actually changed. Auto-checkpoint of a notes vault;
# the user reviews history and can revert any checkpoint.
# Use `git status --porcelain` (not `git diff`): diff misses brand-new UNTRACKED files,
# which is exactly what the Artifact Engine produces. porcelain reports tracked + untracked.
if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
  git add -A >/dev/null 2>&1 || exit 0
  git commit -q -m "wfk: auto-checkpoint" >/dev/null 2>&1 || exit 0
fi

exit 0
