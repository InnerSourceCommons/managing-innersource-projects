#!/usr/bin/env bash
set -euo pipefail

PREVIEW_DIR="${1:?preview directory is required}"
PR_NUMBER="${2:?pull request number is required}"

# Delete this PR's published preview folder from gh-pages.
rm -rf "${PREVIEW_DIR}"

if git status --porcelain | grep -q .; then
  # If something changed, commit+push so GitHub Pages drops that preview URL.
  git config user.name "github-actions[bot]"
  git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
  # Stage only the working-tree changes from this cleanup step before committing.
  git add -A
  git commit -m "chore: remove preview for #${PR_NUMBER}"
  git push
else
  echo "No preview directory to remove."
fi
