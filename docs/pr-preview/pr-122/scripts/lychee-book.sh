#!/usr/bin/env bash
# Check all links in the built and served book with lychee.
#
# Prereqs:
#   1. Build the book: mdbook build
#   2. Serve the book: npx serve book -p 3000
#   3. Install lychee: cargo install lychee
#
# Usage: ./scripts/lychee-book.sh [BASE_URL]
#   BASE_URL defaults to http://localhost:3000/
#
# Report shows which page contains each broken link (source page → failed URL).
# For the "Broken links by page" section, jq must be installed; otherwise the raw JSON report is kept for manual inspection.

set -e

BASE_URL="${1:-http://localhost:3000/}"
# Ensure base URL has no trailing slash for consistent resolution (lychee strips fragment)
BASE_URL="${BASE_URL%/}"

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BOOK_DIR="${ROOT}/book"
JSON_REPORT="${ROOT}/.lychee-report.json"

# Collect only the book's HTML (exclude vendored/cache dirs and nested book/html/).
# npx serve book -p 3000 serves BOOK_DIR at BASE_URL, so URLs are BASE_URL/<path-under-book>.
# Required: exclude print.html (see .lycheeignore); it aggregates the whole book and repeats links.
set +e
find "$BOOK_DIR" -name "*.html" \
  -not -path "*/.cargo/*" \
  -not -path "*/.git/*" \
  -not -path "*/.rustup/*" \
  -not -path "*/.github/*" \
  -not -path "*/.claude/*" \
  -not -path "*/.nwave/*" \
  -not -path "*/html/*" \
  2>/dev/null | while read -r f; do
  # Convert path to URL: book/measuring/use_gqm.html -> BASE_URL/measuring/use_gqm.html
  path="${f#"$BOOK_DIR/"}"
  [[ "$path" == "print.html" ]] && continue
  echo "${BASE_URL}/${path}"
done | lychee --no-progress -q --format json --output "$JSON_REPORT" --files-from -
lychee_exit=$?
set -e

# Print report: for each broken link, show the page that contains it.
# Lychee uses "error_map" (source URL -> list of { url, status: { code } }); some versions use "fail_map".
echo "JSON_REPORT: $JSON_REPORT"
if [[ -f "$JSON_REPORT" ]]; then
  delete_report=1
  errors=""
  if command -v jq &>/dev/null; then
    errors=$(jq -r '(.error_map // .fail_map // {}) | to_entries[] | "Page: \(.key)\n  Broken:\n\(.value[] | "    [\(.status.code)] \(.url)")"' "$JSON_REPORT" 2>/dev/null)
  fi
  if [[ -n "$errors" ]]; then
    echo ""
    echo "=== Broken links by page ==="
    echo "$errors"
  else
    # Report has failures but we couldn't print them (no jq or jq failed); leave report for inspection
    report_errors=$(jq -r '.errors // 0' "$JSON_REPORT" 2>/dev/null || echo "0")
    if [[ "$report_errors" != "0" ]] && [[ "$report_errors" != "null" ]]; then
      echo ""
      echo "=== Broken links (report has $report_errors failure(s)); full report: $JSON_REPORT ==="
      echo "Install jq to see 'Broken links by page' summary, or: cat $JSON_REPORT | jq '.error_map'"
      delete_report=0
    fi
  fi
  if [[ "$delete_report" -eq 1 ]]; then
    rm -f "$JSON_REPORT"
  fi
fi

exit "$lychee_exit"
