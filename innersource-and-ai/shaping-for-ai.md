# Shaping Repositories and Practices for AI

InnerSource practices that make life easier for human contributors also help AI systems and agentic tools. Clear scope, good documentation, and consistent workflows make it easier for both people and AI to discover, understand, and contribute to shared code safely.

## Repository and boundary design

Well-defined repositories with clear scope and interfaces make it easier for humans and AI to contribute without stepping on each other’s toes. When boundaries are explicit—what belongs in this repo, what the APIs are, what the project is *not* responsible for—AI agents and assistants can operate within a manageable context. The community is exploring a pattern sometimes called “InnerSource the AI way,” which emphasizes clear scope and boundaries; as it matures, it may be documented in the [InnerSource Patterns](https://patterns.innersourcecommons.org/) book and linked from here.

## Documentation and discoverability

InnerSource behaviors like solid READMEs, CONTRIBUTING guides, and architecture decision records are increasingly important when AI is in the loop. They help AI and people alike understand how to use and extend shared code correctly. Documentation that explains *why* decisions were made, not just *what* the code does, supports better AI-generated contributions and reduces misuse. Making repositories searchable and well-described also helps teams and tools find the right building blocks instead of reimplementing them.

## Playbooks for people and agents

Playbooks that describe how to contribute—and what to avoid—benefit both human contributors and AI-assisted workflows. The community is starting to develop playbooks that work for both. As these emerge, they will be reflected in the InnerSource Patterns book and linked from this section. The goal is to make it easy for contributors and tools to follow the same rules and expectations.

## Skills, plugins, and workflow integration

InnerSource can be integrated directly into coding workflows through skills, plugins, and tooling. When reuse and contribution are part of the daily environment—for example, by suggesting existing InnerSource components when starting a new feature—both developers and AI-assisted flows are more likely to reuse rather than duplicate. This is an area of active development; program leads can work with their tooling and platform teams to explore how to surface InnerSource projects and contribution paths where developers (and their tools) already work.

For more on infrastructure and tooling in InnerSource, see [Tooling](/tooling/innersource-tooling.md) and [Infrastructure](/infrastructure/infrastructure.md).
