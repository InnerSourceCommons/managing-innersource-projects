# GitHub InnerSource Strategies

## Balancing Security & InnerSource: Who Can See What

The section explores the delicate balance between security and collaboration in the context of InnerSource projects. Within an InnerSource project, transparency plays a vital role in fostering collaboration and encouraging participation. Ideally, the project should be structured to allow as many individuals as possible to contribute, ensuring that the barriers to participation are kept low. However, it's important to acknowledge that certain constraints and considerations may prevent making everything openly accessible within the company.

To strike a balance between encouraging InnerSource participation and respecting the company's constraints, it becomes necessary to carefully consider different levels of code sharing and establish appropriate Source Code Management (SCM) practices. This allows for the implementation of controlled visibility and access mechanisms, ensuring that sensitive or proprietary code remains protected while still enabling collaboration and knowledge sharing.

By defining these various levels of sharing, organizations can customize their SCM setup to accommodate their specific needs. This may involve setting up different repositories or access controls based on the sensitivity of the code, project type, or individual roles within the organization. Through thoughtful planning and implementation, companies can create an InnerSource environment that maximizes participation while upholding necessary restrictions.

By effectively managing transparency and sharing levels, organizations can foster a culture of InnerSource collaboration that strikes the right balance between openness and the company's specific constraints. This approach enables individuals to contribute their expertise, fosters innovation, and strengthens the overall development process within the organization.

## Security-First Perspective and InnerSource-first Perspective

There are two perspectives presented in the table: the Security-First Perspective and the InnerSource-First Perspective. By considering these two perspectives, companies can address the risks associated with sensitive code leaving the organization while also fostering collaboration and sharing of code within the company for increased productivity and innovation.

| ​ | Security-First Perspective​ | InnerSource-first perspective​ |
| --- | --- | --- |
| Concerned with What Risk?​ | Sensitive code gets outside Company. ​ | No effective way for anyone at company to search, discover, or evaluate code for use created outside their org.​ |
| Absolute positions for each perspective​ | All repositories should be their own silo. Access to know each repo exists only individually granted by upper management.​ | All repositories should be visible to all FTEs.​ |
| What Repositories are the Perspective’s Focus?​ | Sensitive repositories: Those whose release has market impact or is core infrastructure with safety implications.​ | Highly reusable packages, internal reusable tools, templates, examples, or code that builds services many people have stake in like websites, SDKs, etc. ​ |

The opportunity to balance both needs comes from observation that there is not much overlap between the repositories that each perspective cares about the most.

## Visibility Differences by InnerSource Project Type

There are several types of InnerSource projects, each with its own characteristics and considerations. The table provides an overview of these project types and their visibility differences within an organization. What kinds of InnerSource seeds does your organization have? What areas in your organization would you like to start with when strategically adopting InnerSource? Use this categorization to help you categorize your project.

| Type of InnerSource​ | InnerSource Participation method​ | Significant Communication before pull request or reuse?​ | Will owning party likely know non-owning party beforehand​ | numbers of chances for InnerSource participation killed off by org-level visibility boundaries​ | Enterprise impact of InnerSource action not occurring​ | Likely sensitivity of the code if maliciously released​ |
| --- | --- | --- | --- | --- | --- | --- |
| Learning, copy and pasting (examples, templates)​ | Learning​ | None​ | No​ | Most​ | Entropy and lost time.​ | Probably low​ |
| Use Reusable tools built for Company circumstances. ​ | Reuse​ | None-little​ | No​ | Many​ | Loss of efficiency and speed. ​ | Probably low​ |
| Content change, fix, add, or update (websites, documentation)​ | Contribution, small ones​ | None-little​ | No​ | Many​ | Wasted time due to bad information.​ | Probably low​ |
| Build within someone else's internal service | Contribution, within well-defined parameters​ | Yes​ | No​ | Some​ | More things never done at all.​ | Probably low but more exceptions.​ |
| Deduplication. Don't built same thing twice, build general solution.​ | Contribution ​ | Yes​ | Varies​ | Some​ | General purpose code written less often. ​ | Depends, some very high.​ |
| Ensure alignment between related projects​ | Contribution ​ | Yes​ | Likely​ | A few​ | Loss of efficiency and speed.​ | Depends, some very high.​ |
| Not get slowed down by who is owning ​ | Contribution ​ | Yes​ | Likely​ | A few​ | Loss of efficiency and speed.​ | Depends, some very high.​ |

## Project Participation Difficulty Level by Setting

The difficulty level to join a project depends on your access rights to GitHub Enterprise and the repository type. It should be noted that GitHub settings in the enterprise often use SCIM and work with IdPs such as Microsoft Entra and Okta, but the participation hurdle can also vary depending on the settings on the IdP side.

Here are groups that can be used to define repository permissions ordered by process toil to join:

1. Everyone behind company firewall
1. Internal visibility​ (everyone on platform is in this group)
1. Security group created automatically​
1. Security group with self-join and NO forced renew after X time period​
1. Security group with self-join and forced renew after X time period​
1. Security group with self-initiated but requires waiting for manager permission.
1. Security group with that requires emailing someone to manually add you

## Pros and Cons of InnerSource Dedicated Environment

Although InnerSource catalogs and organizations specifically for InnerSource have benefits, they should not be viewed as a place that holds “ALL” InnerSource.

| Approach​ | Definition​ | Advantages​ | Disadvantages​ |
| --- | --- | --- | --- |
| InnerSource Catalogs | Repositories that want extra visibility self-select via topic tag. They are then harvested into a separate catalog.​ | Have some of the repos most interested in being reused in one place helps measurement & discovery of them.​ | Most users won’t troll a catalog separate from their workflow.​ There is a risk a perception is created that only repos in that catalog are innerSource.​ |
| Dedicated Organization for InnerSource​ | Repos for a need to be shared widely are put in an org specifically for that purposeR​ | Heightens visibility for the repos in that org.​ | Most InnerSource occurs in Repositories that do not see InnerSource as focus or reason for existence.​ Requires moving code outside team’s main org, breaks links and workflows.​ |
| Platform-wide Internal Visibility​ | GitHub provides an “internalVisibility” repo setting that enables a repo to be visible to all platform members.​ | Enables sharing at scale large enough for effective search & discovery.​ Applies to individual repos instead of orgs. ​| Requires trusting staff to only apply internalVisibility to lower risk repos with higher sharing needs. ​A repo centric approach may feel less traditional to orgs that have previously kept code within team or organization walled environments. |

## Variations in how repository read access is distributed

The extent to which a repository is visible to enterprise users varies between everyone in the enterprise, everyone in a GitHub organization, everyone within a GitHub team, or users given permissions to a repository individually. A GitHub team can either be a small or large group of individuals independent of organizational membership. Team memberships can be handled with GitHub’s interface or via a separate enterprise identity and permissions tracking system that has API connection to GitHub.

| Approach​ | Definition​ | Advantages​ | Disadvantages​ |
| --- | --- | --- | --- |
| Internal Visible repository | A repository that is internally visible is visible to everyone in the GitHub enterprise. | Easy discovery and quick contributions through forks across the entire enterprise. | Visible to anyone who is a member of the enterprise, which is sometimes not wanted. |
| Repositories visible to any organization member | Members of an organization get read access to all repositories in an organization by default. | Low process burden for discovery and collaboration within that organization.​ | When org membership gives read rights to all repositories in the org and org membership is the only way to gain read permissions to a given repository, users must effectively request access to all repositories in an org even if they only need access to a single less sensitive repository. This makes it hard to control access to more sensitive repositories that may exist in the org. |
| Repository visibility given to GitHub Teams | A team can be a small subset of users within an organization, or a group of users from across a subset of many organizations within the enterprise. Teams can be associated with more than one repository | Flexibility. Read permissions can be distributed to one or many repositories at a time and to users outside org membership boundaries. | Purposes of GitHub teams need to be documented and followed to avoid unintended creep in team membership and usage over time. |
| Repository visibility given to individuals | Read permissions can be given to individual members in the repository settings | Ability to given repository access one person at a time, similar to team-based repository | Permissions given individually involve more process burdens to give and remove. There is no possibility for users to discover a useful repository on their own. Requires admin access to the repository settings to set. |

These levels of read permissions can be combined within a given GitHub organization. A single organization can have all four from the table above. Enterprise and organization level rules can determine what levels of READ permission are possible for repository owners to pick from.

It is worth pointing out that the only way to enable a GitHub organization to have both repositories shared across the enterprise and repositories that are tightly controlled such that only a small subset of organization members can see them is to (1) enable read permissions to be decided at the repository level and (2) not automatically give read permissions to every repository in the organization to every member of the organization.

Although in the general case it may be ideal to give repositories a range of read permissions styles to pick from, there can be reasons for specific organizations to not give repositories that flexibility. A specific organization may be set up only for code that must always be limited to a small subset of users. Alternatively, an organization may be set up only for code that is meant to be widely shared within the enterprise.

## Conclusion: High Level Guideline

- It is advisable to anticipate the need for various levels of sharing, ranging from company-wide to small groups, for repositories within large platform organizations.
- Granting repository owners the authority to manage visibility and permissions is more effective than having organization or enterprise owners set them. This approach prevents narrow policies set at higher levels from becoming burdensome over time as needs evolve.
- Collaborative efforts often begin with uncertain value propositions. Consequently, even minor procedural obstacles can prematurely terminate these initiatives. To mitigate this, establish processes that enable repository discovery and evaluation without requiring permission requests whenever feasible.
