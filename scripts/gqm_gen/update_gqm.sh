#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Ensure measuring directory exists at repo root (TS writes ../../measuring/use_gqm.md)
mkdir -p "$REPO_ROOT/measuring"

# Create use_gqm.md if it doesn't exist
if [ ! -f "$REPO_ROOT/measuring/use_gqm.md" ]; then
  cat > "$REPO_ROOT/measuring/use_gqm.md" << 'EOF'
# Goals, Questions, Metrics

```mermaid
graph LR;
```
EOF
fi

# Run the TypeScript code (package.json lives here)
cd "$SCRIPT_DIR"
npm install
npm run start || true  # Continue even if tests fail

# Handle git operations if not in act
if [ "${ACT:-}" = "true" ]; then
  echo "Running in act - simulating successful git operations"
  exit 0
else
  cd "$REPO_ROOT"
  git add measuring/use_gqm.md
  git diff --staged --quiet || (git commit -m "Update Goals Questions Metrics Graph" && git push origin "HEAD:${GITHUB_REF}")
fi
