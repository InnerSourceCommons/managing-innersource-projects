# AGENTS.md

This is an [mdBook](https://rust-lang.github.io/mdBook/) site published to GitHub Pages at
<https://innersourcecommons.github.io/managing-innersource-projects/>.
Content is Markdown. The build toolchain is Rust (mdBook) + TypeScript (GQM generator).
Licensed CC BY-SA 4.0.

## Project layout

```
SUMMARY.md              Table of contents (mdBook requires this)
book.toml               mdBook config (plugins, site-url, Giscus)
introduction/           Chapter: intro, scenarios, framework
infrastructure/         Chapter: infra basics, assessment
measuring/              Chapter: GQM measurement approach
  goals/                Goal definitions (markdown + link tables)
  questions/            Question definitions
  metrics/              Metric definitions
  use_gqm.md           AUTO-GENERATED Mermaid diagram — do not hand-edit
governance/             Chapter: governance model
innersource-and-ai/     Chapter: AI + InnerSource
tooling/                Chapter: GitHub/GitLab strategy & config
scripts/
  build.sh              Build the book locally
  serve.sh              Live-reload dev server
  install-mdbook.sh     Installs mdBook + plugins into repo-local .cargo/
  gqm_gen/              TypeScript generator for the GQM Mermaid diagram
.github/workflows/
  mdbook.yml            Build + deploy (main → root, PRs → pr-preview/)
  gqm_update.yml        Regenerates GQM diagram on measuring/ changes
  vale.yml              Prose style linting
```

## Building locally

```sh
make build    # or: bash scripts/build.sh
make serve    # live-reload at http://localhost:3000
```

Requires Rust/Cargo. `scripts/install-mdbook.sh` handles installation into a
repo-local `.cargo/` directory — it will not alter the system toolchain.

## Content conventions

- Each chapter has an `authors.md` crediting contributors.
- Articles are self-contained; readers may enter at any page.
- Use `#` for the page title, `##` for sections, etc.
- Spell "InnerSource" as one word, capital I and S. Vale enforces this.
- Link to [InnerSource Patterns](https://patterns.innersourcecommons.org/) where relevant.

## GQM (Goal-Question-Metric) system

Goals, questions, and metrics live in `measuring/goals/`, `measuring/questions/`,
and `measuring/metrics/`. Each file follows a template (`gqm_*_template.md` in
the same directory). Files link to each other via markdown tables.

`measuring/use_gqm.md` contains an auto-generated Mermaid graph built by
`scripts/gqm_gen/`. **Do not edit `use_gqm.md` by hand** — changes are
overwritten by CI. To add a new goal, question, or metric: copy the relevant
template, fill it out, and link it in the related files' tables.

## CI/CD

- **mdbook.yml**: On push to `main`, builds and deploys to gh-pages root.
  On pull requests, builds with a rewritten `site-url` and deploys a preview
  under `pr-preview/pr-<N>/`. Both paths trigger the GQM update workflow.
- **gqm_update.yml**: Runs when files under `measuring/goals/`,
  `measuring/questions/`, or `measuring/metrics/` change. Regenerates the
  Mermaid diagram and commits the result. Also callable via `workflow_call`.
- **vale.yml**: Prose linting with ISC house styles.

## Behavioral guidelines

- **Content only.** This repo is a book, not a software product. Changes are
  prose edits, new articles, or build/CI improvements. Do not add application
  code, frameworks, or runtime dependencies unless directly supporting the
  mdBook build.
- **Do not modify generated files.** `measuring/use_gqm.md` and everything
  under `book/` are generated outputs. Edit the sources instead.
- **Keep articles concise and practical.** The audience is engineering leaders
  and ISPO practitioners, not beginners. Avoid filler or generic advice.
- **Preserve the table of contents.** `SUMMARY.md` drives mdBook navigation.
  If you add or rename a page, update `SUMMARY.md` to match.
- **Run `make build` before proposing changes** to catch broken links and
  build errors locally.
- **Do not commit `.cargo/`, `.rustup/`, `node_modules/`, or `book/`.**
  These are in `.gitignore`.
- **Respect the license.** All contributions are CC BY-SA 4.0. Do not add
  content with incompatible licenses.
