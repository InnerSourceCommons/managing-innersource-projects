#!/usr/bin/env bash
# Install mdBook and plugins (same versions as CI). Safe to run locally.
# Usage: ./scripts/install-mdbook.sh   (from repo root)
set -e

MDBOOK_VERSION="${MDBOOK_VERSION:-0.5.2}"
MDBOOK_MERMAID_VERSION="${MDBOOK_MERMAID_VERSION:-0.17.0}"
MDBOOK_EMBEDIFY_VERSION="${MDBOOK_EMBEDIFY_VERSION:-0.3.2}"

# Install into repo so CI and local use the same layout (avoids cross-device issues in act)
REPO_ROOT="${REPO_ROOT:-$(git rev-parse --show-toplevel 2>/dev/null || echo "$PWD")}"
export RUSTUP_HOME="${REPO_ROOT}/.rustup"
export CARGO_HOME="${REPO_ROOT}/.cargo"

echo "Installing Rust and mdBook into ${REPO_ROOT} (RUSTUP_HOME=$RUSTUP_HOME, CARGO_HOME=$CARGO_HOME)"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path
source "${CARGO_HOME}/env"
rustup update

cargo install --version "${MDBOOK_VERSION}" mdbook
cargo install --version "${MDBOOK_MERMAID_VERSION}" mdbook-mermaid
cargo install --version "${MDBOOK_EMBEDIFY_VERSION}" mdbook-embedify

echo "Done. To build the book, use the project mdbook (do not use your global 'mdbook'):"
echo "  ./mdbook build"
echo "Or: source \"${CARGO_HOME}/env\" && mdbook build"
