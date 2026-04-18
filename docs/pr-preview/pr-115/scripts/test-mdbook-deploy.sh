#!/usr/bin/env bash
# Run the mdBook GitHub Actions workflows locally with act.
# Usage: ./scripts/test-mdbook-deploy.sh [act args]
set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
WORKFLOW_PATH="${REPO_ROOT}/.github/workflows/mdbook.yml"
PUSH_EVENT_PATH="${REPO_ROOT}/.github/act/push.json"
PULL_REQUEST_EVENT_PATH="${REPO_ROOT}/.github/act/pull_request.json"

if ! command -v act >/dev/null 2>&1; then
  echo "Error: 'act' is not installed or not on PATH." >&2
  exit 1
fi

if [[ ! -f "${WORKFLOW_PATH}" ]]; then
  echo "Error: workflow file not found at ${WORKFLOW_PATH}" >&2
  exit 1
fi

if [[ ! -f "${PUSH_EVENT_PATH}" ]]; then
  echo "Error: event payload not found at ${PUSH_EVENT_PATH}" >&2
  exit 1
fi

if [[ ! -f "${PULL_REQUEST_EVENT_PATH}" ]]; then
  echo "Error: event payload not found at ${PULL_REQUEST_EVENT_PATH}" >&2
  exit 1
fi

cd "${REPO_ROOT}"

echo "Running deploy job (push): ${WORKFLOW_PATH}"
act push -W "${WORKFLOW_PATH}" -e "${PUSH_EVENT_PATH}" "$@"

echo "Running deploy-preview job (pull_request): ${WORKFLOW_PATH}"
act pull_request -W "${WORKFLOW_PATH}" -e "${PULL_REQUEST_EVENT_PATH}" "$@"
