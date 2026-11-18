#!/usr/bin/env bash
# Build the book locally.
# Usage: ./scripts/build.sh
#
# On first run this will install Rust, mdBook, and its plugins into the
# repo-local .cargo/ and .rustup/ directories (ignored by git).  Subsequent
# runs reuse the existing install.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# Point Rust/Cargo at repo-local directories (matches CI and install-mdbook.sh)
export RUSTUP_HOME="${REPO_ROOT}/.rustup"
export CARGO_HOME="${REPO_ROOT}/.cargo"
export PATH="${CARGO_HOME}/bin:${PATH}"

# Install mdBook if it isn't already present
if [ ! -x "${CARGO_HOME}/bin/mdbook" ]; then
    echo "mdBook not found — running first-time install (this may take a few minutes)…"
    bash "${REPO_ROOT}/scripts/install-mdbook.sh"
fi

cd "${REPO_ROOT}"
mdbook build "$@"
