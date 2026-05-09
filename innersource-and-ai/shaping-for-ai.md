# Shaping Repositories and Practices for AI

InnerSource practices that make life easier for human contributors also help AI systems and agentic tools. Clear scope, good documentation, and consistent workflows make it easier for both people and AI to discover, understand, and contribute to shared code safely.

## Repository and boundary design

Well-defined repositories with clear scope and interfaces make it easier for humans and AI to contribute without stepping on each other’s toes. When boundaries are explicit, including what belongs in this repo, what the APIs are, and what the project is *not* responsible for, AI agents and assistants can operate within a manageable context. The community is exploring a pattern sometimes called “InnerSource the AI way,” which emphasizes clear scope and boundaries; as it matures, it may be documented in the [InnerSource Patterns](https://patterns.innersourcecommons.org/) book and linked from here.

## Documentation and discoverability

InnerSource behaviors like solid READMEs, CONTRIBUTING guides, and architecture decision records are increasingly important when AI is in the loop. They help AI and people alike understand how to use and extend shared code correctly. Documentation that explains *why* decisions were made, not just *what* the code does, supports better AI-generated contributions and reduces misuse. Making repositories searchable and well-described also helps teams and tools find the right building blocks rather than reimplementing them.

Discoverability deserves special attention. In large organizations, teams frequently build duplicate solutions because they cannot find existing ones. This problem extends beyond code to data assets, enablement content, and operational knowledge. Program leads should work with platform teams to ensure that shared assets are consistently tagged, well-described, and surfaced through central search and recommendation tools. AI-powered chatbots and assistants can help with discoverability, but they are only as good as the content they can access. Investing in publishing and indexing infrastructure pays dividends.

## Playbooks for people and agents

Playbooks that describe how to contribute, and what to avoid, benefit both human contributors and AI-assisted workflows. The community is starting to develop playbooks that work for both. As these emerge, they will be reflected in the InnerSource Patterns book and linked from this section. The goal is to make it easy for contributors and tools to follow the same rules and expectations.

## Beyond portals: integrating InnerSource into the flow of work

Early InnerSource initiatives often relied on a single portal where teams had to find, navigate, and access reusable components. While this can work for motivated contributors, it often fails at larger scales. A better approach is to embed reusable components and documentation within tools like IDEs, workflows, or chat platforms. Moving from a portal-centric model doesn't eliminate the need for a central index; it shifts the focus to making the index improve user experience, not be the only interaction point.

## Removing barriers at the platform engineering layer

AI adoption raises the stakes for frictionless contribution workflows. A human contributor who encounters a confusing approval gate can ask a colleague for help; an agent that hits the same gate will stall, fail silently, or open a malformed PR. When agentic tools submit contributions at scale, running automated fixes, proposing dependency updates, or handling issue triage, every point of unnecessary friction is amplified. Heavyweight review requirements, unclear ownership, or undocumented merge criteria that seasoned engineers navigate by instinct become hard blockers for automated workflows.

Program leads should work with platform engineering teams to ensure contribution paths are explicit and machine-navigable: clear criteria for what makes a PR acceptable, documented ownership so agents know who to route requests to, and lightweight approval flows for low-risk changes. The organizations best positioned to benefit from agentic contribution are those whose InnerSource platforms are already streamlined for human contributors. AI makes it impossible to defer the cost of ignoring that work.

## Skills, plugins, and workflow integration

InnerSource can be integrated directly into coding workflows through skills, plugins, and tooling. When reuse and contribution are part of the daily environment (for example, by suggesting existing InnerSource components when starting a new feature), both developers and AI-assisted flows are more likely to reuse rather than duplicate. This is an area of active development; program leads can work with their tooling and platform teams to explore how to surface InnerSource projects and contribution paths where developers (and their tools) already work.

## Agent skills and enterprise standards

A particularly promising approach is using agent skills to codify enterprise standards and best practices. Rather than documenting standards in wikis that developers must find and follow manually, organizations can encode them as skills that coding agents use directly. When an agent starts work, it can automatically apply the organization's coding standards, security policies, and architectural guidelines. This makes InnerSource contribution guidelines machine-readable and enforceable at the point of development.

The [Agent Skills](https://agentskills.io/home) open standard provides a framework for packaging and sharing these capabilities. InnerSource programs can maintain shared skill libraries that any team's agents can use, extending the InnerSource model from shared code to shared agent behaviors.

## Emerging standards and protocols

Several open standards are emerging that are relevant to InnerSource programs adopting agentic workflows:

- [Model Context Protocol (MCP)](https://modelcontextprotocol.io/docs/getting-started/intro) — A standard for connecting AI agents to external tools and data sources, enabling agents to interact with development infrastructure like issue trackers, CI/CD systems, and code review platforms.
- [Agent2Agent (A2A)](https://a2a-protocol.org/latest/) — A protocol for communication between AI agents, supporting scenarios where multiple specialized agents collaborate on development tasks.
- [agents.md](https://agents.md/) — A standard for describing how AI agents should interact with a repository, similar to how CONTRIBUTING.md guides human contributors.

InnerSource program leads should monitor these standards as they mature. Organizations that adopt them early can shape how agent-to-agent and agent-to-repository interactions work across team boundaries, reinforcing InnerSource collaboration patterns at the tooling level.

For more on infrastructure and tooling in InnerSource, see [Tooling](../tooling/innersource-tooling.md) and [Infrastructure](../infrastructure/infrastructure.md).
