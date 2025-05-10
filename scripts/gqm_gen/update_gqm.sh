#!/bin/bash

set -euo pipefail

# Ensure measuring directory exists
mkdir -p measuring

# Create use_gqm.md if it doesn't exist
if [ ! -f measuring/use_gqm.md ]; then
  cat > measuring/use_gqm.md << 'EOF'
# Goals, Questions, Metrics

```mermaid
graph LR;
```
EOF
fi

# Run the TypeScript code
npm install
npm run start || true  # Continue even if tests fail

# Handle git operations if not in act
if [ "$ACT" = "true" ]; then
  echo "Running in act - simulating successful git operations"
  exit 0
else
  git add measuring/use_gqm.md
  git diff --staged --quiet || (git commit -m "Update Goals Questions Metrics Graph" && git push origin HEAD:${{ github.ref }})
fi 