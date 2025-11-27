# mdBook

Details about our mdBook setup.

## Installation

To install cargo, run the following command:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

To install mdBook, run the following command:

```bash
# Install mdbook v0.4.52 (required for mdbook-embedify compatibility)
cargo install mdbook --version 0.4.52
```

Install required preprocessors:

```sh
# Install mdbook-mermaid v0.10.0 (compatible with mdbook 0.4.52)
cargo install mdbook-mermaid --version 0.10.0

# Install mdbook-embedify for embedding external content
cargo install mdbook-embedify
```

**Note:** These specific versions are required for compatibility. mdbook-embedify 0.2.18 is not compatible with mdbook 0.5.x, so we use mdbook 0.4.52 and a compatible version of mdbook-mermaid.

## Usage

To build the book, run the following command:

```bash
mdbook build
```

To serve the book, run the following command:

```bash
npx serve book -p 3000
```

## Configuration

The configuration file is located at `book.toml`.

We've enabled the following features:

* **Giscus**: To enable comments on the book. See [mdbook-embedify](https://mr-addict.github.io/mdbook-embedify/third-party/giscus.html) for more details.
* **Mermaid**: To enable diagrams in the book. See [mdbook-mermaid](https://github.com/badboy/mdbook-mermaid) for more details.

## Deployment

Deployment is handled by GitHub Actions. See: <https://github.com/rust-lang/mdBook/blob/master/.github/workflows/deploy.yml>
