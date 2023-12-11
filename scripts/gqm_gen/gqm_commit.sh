#!/bin/bash
if cmp -s ./measuring/use_gqm.md.tmp ./measuring/use_gqm.md; then
    echo "No changes in GQM diagram"
    exit 0
fi

git --version
git config user.name "GitHub Actions Bot"
git config user.email "<>"
git add ./measuring/use_gqm.md
git commit -m "feat: gqm diagram updated by GitHub Actions" 
git push