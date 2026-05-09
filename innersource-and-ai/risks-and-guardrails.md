# Risks and Guardrails

AI is the ultimate InnerSource contributor. Like any external contributor, AI agents generate code that you must review, validate, and integrate thoughtfully into your systems. The same InnerSource practices that enable trusted external contributions, including code review, clear guidelines, transparent decision-making, and systems thinking, are exactly what you need to safely and sustainably adopt AI in development.

Adopting AI without these guardrails can deliver short-term gains in speed and productivity, but at the cost of long-term risks to quality, security, and maintainability. The good news is that if your organization has built a strong InnerSource culture, you already have the foundations in place.

## Short-term speed vs. long-term risk

AI coding tools boost short-term productivity but may cause teams to underestimate risks like releasing less-reviewed AI content, skipping tests, or using misunderstood code. These gains can decrease as technical debt and vulnerabilities grow. InnerSource practices such as mandatory review, clear ownership, and contribution guidelines help maintain reliability without sacrificing speed.

## Mitigating AI slop

"AI slop" refers to low-quality, generic, or incorrect content produced by AI systems without adequate human oversight. In a development context, this can mean boilerplate code that does not fit the project's conventions, misleading documentation, or subtly incorrect implementations. InnerSource's emphasis on transparency, keeping things traceable and open for inspection, directly mitigates this risk. When contributions (whether from humans or AI) go through visible review processes in shared repositories, reviewers catch quality issues earlier, and patterns of slop become visible to the community.

## Defining boundaries for proprietary knowledge

As organizations use InnerSource practices to capture and share knowledge for AI training, they must define clear boundaries between what can be shared broadly and what must remain protected. Not all internal knowledge is appropriate for AI training. Sensitive research, competitive intelligence, and regulated data require careful handling. InnerSource governance practices, including clear ownership, access controls, and contribution guidelines, provide a natural framework for making these distinctions explicit.

The goal is to separate human creation outcomes (the knowledge and artifacts that can be shared) from the creation process itself and from proprietary assets that need safeguarding. Organizations should establish policies that specify which content can be used for AI training, which requires restricted access, and which must remain outside AI systems entirely. This matters especially for organizations with sensitive internal research or regulated data, where compliance and appropriate access controls are non-negotiable.

## Transparency and stakeholder involvement

Involving stakeholders and keeping development transparent supports responsible AI deployment. When decisions about tools, patterns, and policies are visible and discussable, teams can align on what is acceptable and what is not. This aligns with InnerSource principles of openness and collaboration and helps prevent AI from being used in ways that conflict with organizational values or compliance requirements.

## Walled gardens and uneven access to AI tooling

Access to AI tools varies across companies. Some teams have broad access, while others face restrictions due to API limits, approval delays, or group-specific access. This risks creating "walled gardens" in InnerSource, where collaboration depends more on access to tools than on work merit or community needs.

An ISPO's role mirrors an OSPO's: not to deploy tooling, but to track access disparities affecting collaboration. When contribution patterns shift due to faster iteration by some teams, the ISPO should highlight this as a signal. It can then recommend policies to address uneven access: contribution norms without AI dependence, universal review standards, and guidance on equitable collaboration.


## Measuring the cost of AI adoption

Organizations are spending heavily on AI tooling, often while simultaneously being asked to reduce costs elsewhere. Program leads should help their organizations measure the actual costs of AI adoption: licensing, compute, tokens, platform engineering effort, and the opportunity cost of experiments that do not land. InnerSource components that are well-maintained reduce these costs by preventing agents from regenerating solutions that already exist. Making savings visible, along with AI's productivity gains, helps leaders decide where to invest.

## Designing for agent accessibility alongside human contributors and consumers

InnerSource offices see two main audiences: contributors submitting code and consumers relying on outputs. Agents now constitute a third category, capable of contributing code and independently consuming interfaces; project standards should be updated accordingly.

An ISPO should expand its stewardship to include agent accessibility by encouraging projects with documented processes, clear contribution guidelines, and discoverable interfaces, making them more approachable. It can prompt teams to consider whether agents can find, understand, and contribute independently, alongside regular questions from contributors and consumers.

## Leading people and agents

As AI agents take on more development tasks, leaders face a new challenge: managing both people and AI agents. This goes beyond tooling decisions into questions of work design, accountability, and organizational structure. Who is responsible when an agent produces incorrect or harmful output? How do you balance workloads between human contributors and automated agents? How do you ensure that institutional knowledge continues to be built by people even as agents handle more of the routine work?

InnerSource program leads should think proactively about these questions rather than waiting to react as problems emerge. Clear contribution guidelines that apply to both human and AI contributors, transparent review processes, and explicit accountability structures will help organizations navigate this transition. The goal is to design work practices that get the best from both people and agents while preserving the collaborative culture that makes InnerSource effective.
