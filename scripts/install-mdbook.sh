#!/usr/bin/env bash
# Install mdBook and plugins (same versions as CI). Safe to run locally.
# Usage: ./scripts/install-mdbook.sh   (from repo root)
set -euo pipefail

MDBOOK_VERSION="${MDBOOK_VERSION:-0.5.2}"
MDBOOK_MERMAID_VERSION="${MDBOOK_MERMAID_VERSION:-0.17.0}"
MDBOOK_EMBEDIFY_VERSION="${MDBOOK_EMBEDIFY_VERSION:-0.3.2}"
MDBOOK_LINKCHECK2_VERSION="${MDBOOK_LINKCHECK2_VERSION:-0.12.0}"
RUST_TOOLCHAIN_VERSION="${RUST_TOOLCHAIN_VERSION:-1.91.1}"

# Install into repo so CI and local use the same layout (avoids cross-device issues in act)
REPO_ROOT="${REPO_ROOT:-$(git rev-parse --show-toplevel 2>/dev/null || echo "$PWD")}"
export RUSTUP_HOME="${REPO_ROOT}/.rustup"
export CARGO_HOME="${REPO_ROOT}/.cargo"

echo "Installing Rust and mdBook into ${REPO_ROOT} (RUSTUP_HOME=$RUSTUP_HOME, CARGO_HOME=$CARGO_HOME)"

if ! command -v rustup >/dev/null 2>&1; then
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path
	source "${CARGO_HOME}/env"
fi

rustup toolchain install "${RUST_TOOLCHAIN_VERSION}" --profile minimal
rustup default "${RUST_TOOLCHAIN_VERSION}"

# https://github.com/rust-lang/mdBook
cargo install --version "${MDBOOK_VERSION}" mdbook
# https://github.com/badboy/mdbook-mermaid
cargo install --version "${MDBOOK_MERMAID_VERSION}" mdbook-mermaid
# https://github.com/rust-lang/mdbook-embedify
cargo install --version "${MDBOOK_EMBEDIFY_VERSION}" mdbook-embedify
# https://github.com/Michael-F-Bryan/mdbook-linkcheck
cargo install --version "${MDBOOK_LINKCHECK2_VERSION}" mdbook-linkcheck2

echo "Done. To build the book, use the project mdbook (do not use your global 'mdbook'):"
echo "  ${CARGO_HOME}/bin/mdbook build"
echo "Or: source \"${CARGO_HOME}/env\" && mdbook build"
