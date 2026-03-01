#!/usr/bin/env bash
# Install mdBook and plugins (same versions as CI). Safe to run locally.
# Usage: ./scripts/install-mdbook.sh   (from repo root)
set -e

MDBOOK_VERSION="${MDBOOK_VERSION:-0.4.52}"
MDBOOK_MERMAID_VERSION="${MDBOOK_MERMAID_VERSION:-0.10.0}"

# Install into repo so CI and local use the same layout (avoids cross-device issues in act)
REPO_ROOT="${REPO_ROOT:-$(git rev-parse --show-toplevel 2>/dev/null || echo "$PWD")}"
export RUSTUP_HOME="${REPO_ROOT}/.rustup"
export CARGO_HOME="${REPO_ROOT}/.cargo"

echo "Installing Rust and mdBook into ${REPO_ROOT} (RUSTUP_HOME=$RUSTUP_HOME, CARGO_HOME=$CARGO_HOME)"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path
source "${CARGO_HOME}/env"
rustup update

# Install mdbook v0.4.52 (required for mdbook-embedify compatibility)
cargo install --version "${MDBOOK_VERSION}" mdbook
# Install mdbook-mermaid v0.10.0 (compatible with mdbook 0.4.52)
cargo install --version "${MDBOOK_MERMAID_VERSION}" mdbook-mermaid
# Install mdbook-embedify (latest version compatible with mdbook 0.4.52)
cargo install mdbook-embedify

echo "Done. To build the book, use the project mdbook (do not use your global 'mdbook'):"
echo "  ./mdbook build"
echo "Or: source \"${CARGO_HOME}/env\" && mdbook build"
