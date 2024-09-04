# mdBook

Details about our mdBook setup.

## Installation

To install cargo, run the following command:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

To install mdBook, run the following command:

```bash
cargo install mdbook
```

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

TBD

See: <https://github.com/rust-lang/mdBook/blob/master/.github/workflows/deploy.yml>