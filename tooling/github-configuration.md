# GitHub InnerSource Configuration

- [Layering Source Control Management Configurations](#layering-source-control-management-configurations)
- [Enterprise Setting](#enterprise-setting)
  - [Repository policies](#repository-policies)
    - [Base permissions](#base-permissions)
    - [Repository creation](#repository-creation)
    - [Repository forking (Private / Internal)](#repository-forking-private--internal)
- [Organization Setting](#organization-setting)
  - [Member privileges](#member-privileges)
    - [Base permissions](#base-permissions-1)
    - [Repository creation](#repository-creation-1)
    - [Repository forking](#repository-forking)
- [GitHub Enterprise Server Setting](#github-enterprise-server-setting)
  - [GitHub Connect - Server statistics](#github-connect---server-statistics)
- [Resources](#resources)


## Layering Source Control Management Configurations
In GitHub, configuration can be set at different levels. In general, configuration set at the enterprise level will overrule or constrain organizational configuration which will do the same for repository level configuration.
Sometimes a configuration settings disables options at lower levels. Other times a configuration setting at the enterprise or organization level only sets the default option that is prechecked. A user who takes an additional actions can pick a different configuration at the repository level if only the default option is set. Due the overlapping nature of the policies, it is important to pick the right layer to apply a configuration: enterprise, organization, or repository.
In general, use caution when picking configuration settings at the enterprise or organization level that restrict reasonable choies at the repository level. These can add friction to the developer experience and even promote shadow IT in the worst cases. Nudging with defaults can be better in some circumstances than disabling options entirely.
If you have repositories that must be extremely tightly controlled, consider mandating that that type of repository go into organizations set up for those constraints instead of trying to apply those constrains on all enterprise code.

## Enterprise Setting

_Please be aware that the configuration options described here were valid at the time of writing (2023-11), but GitHub configuration options do change over time. Please refer to official GitHub documentation for latest configuration options._

### Repository policies set at Enterprise Level
If your GitHub organization is part of an enterprise on GitHub, there are enterprise level configuration settings that administrators of that Enterprise can change. If you are not an enterprise admin, you will likely not even be able to see these settings.

#### Base permissions

Base permissions set at the enterprise level are applied to all of an enterprise's repositories. They are given to all members of the enterprise, excluding outside collaborators. Since enterprise members can have permissions from multiple sources, members and collaborators who have been granted a higher level of access than the base permissions will retain their higher permission privileges. For example, if someone was granted write access at the repository level, but their enteprise base permissions only give them read access, they will still retain write access. When setting up the base repository permissions to promote InnerSource within your enterprise on GitHub, it's important to strike a balance between transparency, collaboration, and respecting constraints and limitations. 

| Repository Permission | Description |
| --- | --- |
| No Policy | Repository read, write, admin permissions are defined at organization or repository level entirely instead of at the enterprise level. This option provides for the more flexibility across organizations and repositories. |
| No Permission |  Selecting this means enterprise membership gives users no built-in permissions to read, write, or admin any repositories in the organization. 
| Read | All enterprise members can view each repository's contents, promoting transparency and allowing employees to learn from each other's work. |
| Write | All enterprise members will have the "Write" permission. They will able to make commit contributions to the repositories and approve pull requests. |
| Admin | All enterprise members will have "Admin" permissions to all repositories in the organization, including clone, pull, and add new collaborators. |

*Please note that "No Policy" is an option at the enterprise level, but it is not an option at the organization level.*

##### How to pick what configuration to choose
Selecting "Read" gives every member of the enterprise read permissions to EVERY repository. There are circumstances where this is acceptable based on who gets membership to the enterprise and what type of code is being stored there. In many other cases, "No Policy" is the best option as it allows for the most flexibility. In large enterprises with many organiations different organizations will want different base repository permissions, "No Policy" enables each organization to pick their own base permission configuration. It will be possible that one organization will set all their repositories to have READ rights given to every member of the organization, and another will give no base permissions by default for repositories in that organization. "No Permissions" means that organizations can not set this policy themselves, and it gets set at each repository only. There are situations where this is appropriate, but it is less common. 

*"No Policy" or "READ" are common choices.*

#### Repository creation
Enterprise configuration on repository creation restricts who can create a new repository and with what visibility across the entire enterprise. There is also an organization-level configuration setting that controls repository creation within each organization. Enterprise level configuration over rules organization policy unless "No Policy" is selected. 

| Repository Creation | Description | Recommendation |
| --- | --- | --- |
| No Policy | Organization owners can choose whether to allow members to create repositories. | Provide flexibility for members to create repositories based on project needs, encouraging collaboration. |
| Disabled | Members will not be able to create repositories. | Discourages repository creation and may hinder InnerSource practices. Consider enabling creation for collaboration. |
| Members can create repositories | Members are allowed to create repositories, but with restrictions on the types available (public, private, internal). | Encourage the creation of repositories while specifying the types that align with your organization's guidelines. |
| ┣ Public | Members can create public repositories visible to everyone on GitHub. | Promote open sharing and collaboration with both internal and external stakeholders. |
| ┣  Private | Members can create private repositories accessible only to invited collaborators. | Encourage team-specific or sensitive projects that require restricted access. |
| ┗ Internal | Members can create internal repositories visible to organization members. | Foster collaboration and knowledge sharing within the organization while keeping information proprietary. |

What configuration to pick is often dependent on a company's particular version control architecture. 

A company might have a single GitHub instance for both public and internal code, two separate GitHubs, or even three GitHub instances; one for public open source, one for collaborations with external partners, and a third that is purely internal. 
Some companies also have add-on systems that handle repository creation. This can be useful if an enterprise wants to capture additional information from repository creators at time of repository creation, programmatically inject standard files or create metadata in other IT systems at the same time. 

The combination of configuration and architecture is often trying to meet several goals:
- Minimize risk of accidental release of internal code publicly
- Ensurance public release, or even InnerSourcing, follows compliance requirements
- Enable integration of code repositories with other IT systems
- and more

What repository creation configuration choices is best for meeting these goals has to take into account the conpany's version control architecture choices. 

###### Reducing risks of accidental disclosure
Having a separate GitHub instance just for open source can enable administrators to place more process around creating repositories on that instance without adding friction to internal repository creation.
In this scenario, members can be given the permissions to create only private or internal visible repositories on either the enterprise or organization level. As the public and internal facing GitHub instances are separate, 
there's little risk of accidental discloure. 

In another situation, there might be a single GitHub instance for both public facing and internal code, but only administrators have permissions to change a repository's visiblity to public. 

It's important to consider your organization's policies and the nature of the projects when deciding on repository creation settings. Striking a balance between encouraging collaboration and managing access to sensitive information is crucial in an InnerSource context. 

*In general, you want to pick a combination of architecture, add-ons, and configuration that lets most users create private and internal repositories with low friction while more tightly controlling creation of public visible repositories.*

#### Repository forking (Private / Internal)

##### Why forking has value for InnerSource over branching
Forking and branching are two alternatives for code development work.
Forking can be important for enabling quick or one-off InnerSource contributions to public or internally visible repositories as no prior conversations or permissions are required by the owning team to submit a pull request. 
In an example where a repository holds the code for a web site, someone not associated with the website might see a broken leak to their site and want to submit a fix. If that repository only supports branching development, that user 
has to find who is the best person to talk to about that repository, email them, wait for a response, probably send a few more emails, get write permissions, start a branch, make one line change, and submit a pull request. 
This could take a day or 30 days. Many potential small changes will simply never start or die somewhere along the process. In constrast with forking, that same user can fork the repository, make the change, and submit a pull request
back to the repository. They don't have to wait for a return email or any communication. They can simply do the change and submit it. This type of quick development is not always appropriate and many repositories might 
perfer to always use branch-based development. However, for some small contributions by someone not on the team that owns the repository, forking is a great enabler of small scale InnerSource. 

| Repository Forking | Description | Recommendation |
| --- | --- | --- |
| No Policy | If no policy set at Enteprise-level, then organizations choose whether to allow private and internal repositories to be forked. | Provide flexibility for forking private and internal repositories based on project needs. This allows teams to collaborate and contribute to codebases while maintaining control over access and security. |
| Enabled | Organizations always allow private and internal repositories to be forked. | Encourage forking of private and internal repositories to promote collaboration and foster a culture of contribution. Forking enables individuals or teams to make modifications and propose changes without directly impacting the original codebase. |
| Disabled | Organizations never allow private or internal repositories to be forked. | In an InnerSource context, it is recommended to enable forking to encourage collaboration, knowledge sharing, and innovation. Forking allows individuals or teams to experiment, improve, and contribute without directly modifying the original codebase. |

One consideration for whether to enable forking is whether the GitHub instance in question is purely internal or not. A company may want to limit forking of internal code in private repositories of a public-facing GitHub instance to personal user space repository. In this scenario, branch development only may be appropriate. In constrast, if the GitHub Enterprise instance is only internal code and all users have company created GitHub identities that can not fork into public repositories, then forking could be enabled into private repositories at much lower risk as those repositories are still under corporate control and not public facing. Additionally, if normal users lack the ability to make repositories public by themselves, there is  less risk. Certain enterprises, organizations, or repositories may need to disable forking partially or entirely for their specific regulatory or compliance requirements.

*Enabling forking is good for InnerSource as it lowers the friction to quickly make small contributions compared to branch-based development. Seek to combine configuration with architecture to enable it as an option without increasing risk of accidental disclosure. When forking is enabled, individual repositories should always have the option to turn it off.*

## Organization Setting
Within each Organization, administrators of that organiation can pick base permissions for all repositories in that organization. 
Organization configuration settings are similar but not exactly the same as enterprise settings. Some enterprises limit what organization owners can pick through enterprise policies and sometimes they limit options through training or written policies in order to allow for exceptions.

### Member privileges

#### Base permissions

Note that the difference between base permissions at organization level vs. enterprise level described above on this page is there is no longer a "No Policy" option. 

| Repository Permission | Description |
| --- | --- |
| No Permission |  Selecting this means organization membership gives users no permissions to read, write, or admin any repositories in the organization. If not compared with other methods of extending permissions, especially read permissions, this will result in making the organization's repositories hard to discovery, find, or collaborate. |
| Read | All organization members can view the repository's contents, promoting transparency and allowing employees to learn from each other's work. |
| Write | All organization members will have the "Write" permission. They will able to make commit contributions to the repositories and approve pull requests. |
| Admin | All organization members will have "Admin" permissions to all repositories in the organization, including clone, pull, and add new collaborators. |

Although there are situations where it might be appropriate to give all members of an organization "write" and "admin" permissions, for example in a very small organization of a single team, those permisssions are often too powerful to distribute to every member of an organization, especially large ones. Instead, it is more common to give organization members "No Permission" or "Read" permissions. Enabling InnerSource goals while selecting "No Permissions" is possible, but it takes more work and combining a few different configurations. How do to so is explained in option 2 below. 

First, let's explain wide, moderate, and narrrow internal sharing.
- Wide sharing: anyone in the enterprise has READ permissions to repositories in the organization that opt-in.
- Moderate sharing: anyone in the organization has read rights to every repository
- Opt-in Moderate sharing: anyone in the organization has read rights to repositories in the organization that opt-in.
- Narrow: specific individuals have read rights that were added to teams or directly to the repository

##### Option 1: Enable wide and moderate sharing from a single organization
The easiest way to maximize potential for InnerSource in an organiation is to:
- Select "read" permissions for all members of an organization.
- Set "internal visibility" as default repository creation setting but let developers create private repositories as well. 

These two configurations combined let users create repositories that meet the "wide-sharing" and "moderate sharing" definitions above.

However, they do not enable repositories in that same organization to be created in a way that read permissions are limited to a smaller group, the "narrow" sharing defined above. 
For that, see option 2 below. 

##### Option 2: Enabling wide, opt-in moderate, and narrow sharing from a single organization 
If you want to enable wide, opt-in moderate, and narrow within a single organization, then the base permissions setting of "No Permission" combined with two other configurations might be preferrable for an organization. 

1. "No Permissions" should be selected for the base repository permissions for an organization.
2.  Ensure repositories can opt into sharing with everyone in the enterprise by giving repository owners the permission to pick "internal visibility" upon creation or at a later date. This is normally available by default, but it can be disabled at the organization or enterprise level. Optionally, there is an organizational policy to set "internal visibility" as the default visibility. Default means repository owners can select to have the repository be private but internal is the pre-checked selection.
3. To ensure it is low friction for all organization members to have READ access for most repositories in the organization, set up a GitHub team that mirrors that organization's membership. Repository owners that want to share READ permissions to their repository with any member of the organization, can add that team to their repository. This enables the "opt-in moderate" sharing pattern defined above.

This combination enables an organization to hold repositories only visible to a small group of say 3 people as well as repositories visible to everyone in the organization or everyone in the enterprise. 

##### Beyond read permission in an organizations

The configurations discussed above apply to everyone and every repository in the organization. A GitHub organization often benefits from GitHub teams that cross multiple repositories and give permissions. 
There could be a team with admin rights on all repositories or some. There could be a team that gives write access to a group of repositories all owned by the same team. 
Looking for opportunities to use an existing team for permisison can reduce process burden where appropriate. Organization members should be granted permissions based on their roles and responsibilities. 

*The goal for base permissions is to enable low friction repository creation and read access at scale while enabling repository owners to make informed choices on who to share their repository with. They shouldn't be forced into sharing widely or narrowly simply because of what GitHub organization their team typically uses. They should be able to  pick the level sharing appropriate for the type of code in their repository.*

#### Repository creation

When configuring repository creation settings at the Organization Level, it's essential to align them with your organization's goals, policies, and security requirements. Allowing members to create repositories with specific types (public, private, internal) provides flexibility and promotes InnerSource practices.

*Depending on the type of Github instance you are using, the configurations options available may be what are shown below or there might not be an option for "internal" visible repositories.*

| Repository creation | Description | Recommendation |
| --- | --- | --- |
| Disabled | Members will not be able to create repositories. | Discourages repository creation and may hinder InnerSource practices. Consider enabling creation for collaboration. |
| Members can create repositories | Members are allowed to create repositories, but with restrictions on the types available (public, private, internal). | Encourage the creation of repositories while specifying the types that align with your organization's guidelines. |
| ┣ Public | Members can create public repositories visible to everyone on GitHub. | Promote open sharing and collaboration with both internal and external stakeholders. |
| ┣  Private | Members can create private repositories accessible only to invited collaborators. | Encourage team-specific or sensitive projects that require restricted access. |
| ┗ Internal | Members can create internal repositories visible to organization members. | Foster collaboration and knowledge sharing within the organization while keeping information proprietary. |

All the statement above for this configuration setting at the enterprise level also apply here. 
The main risk to be mitigated is risk of accidental release. There may already be enterprise level configuration that disables certain settings, such as the ability to make a repository public. 

There are situations where most organizations might choose to let users to create private or internal visibility code, but an organization created specifically to hold more sensitive code would only allow users to create private repositories.   

*In general, to maxmimize InnerSource and security pick a configuration that lets most users create private and internal repositories with low friction while more tightly controlling creation of public visible repositories and allowing for the possibility of organizations that are more tigthly controlled than most.*

#### Repository forking
What was said above about configuration to allow or disable forking at the enterprise level applies at the organization level. 

When making a decision about forking from private and internal repositories for InnerSource projects, carefully evaluate these factors to find the most appropriate approach for your organization's specific context.

| Factors to Consider | Description |
| --- | --- |
| Collaboration and Contribution | Allowing forking promotes collaboration and contribution within the organization. It enables individuals or teams to make modifications and propose changes without directly impacting the original codebase, fostering a decentralized approach to innovation. |
| Access Control | Evaluate the sensitivity of the code and the level of control required for the project. If the InnerSource project involves sensitive information or requires stricter access control, it may not be suitable to allow forking from private or internal repositories. Consider limiting forking to specific repositories or restricting it altogether. |
| Security and Intellectual Property | Assess the potential risks associated with forking, such as the exposure of proprietary code or intellectual property. If forking could lead to unintended disclosure of sensitive information, it may be necessary to disable forking from private and internal repositories. |
| Project Scope and Collaboration Scope | Determine the scope of the InnerSource project and the desired collaboration boundaries. If the project involves cross-functional teams or collaboration with external contributors, allowing forking from private and internal repositories may promote broader engagement and involvement. |
| Internal Policies and Compliance | Consider any internal policies, regulations, or compliance requirements that may impact the decision to allow forking from private and internal repositories. Ensure that the practice aligns with your organization's guidelines and legal obligations. |

*Enabling forking is good for InnerSource as it is lower friction way to quickly make small contributions compared to branch-based development. Seek to combine configuration with architecture to enable it as an option without increasing risk of accidental disclosure.*

## Repository-level Settings

Repository level configuration may or may not be available to set based on organization and enterprise level configuration choices. When available, the following configuration choices maximize InnerSource potential. 

1. Set repository visibility to Internal.
   - This maximizes the number of internal staff that can see the repository without doing extra work. 
2. Ensure the list of administrators, triagers, and maintainers is sufficiently size. Use a team rather than directly added individuals.
  - This improves the response time for pull requests and can avoid project death if the core contributor is suddenly no longer available.
3. If your repository is one that would benefit from drop-in contributions or quick corrections, enable forking and add instructions for forking to your CONTRIBUTING.md

## GitHub Enterprise Server Setting

### GitHub Connect - Server statistics

Enabling Server Statistics in your GitHub Enterprise Server environment can provide valuable insights into the activities and usage patterns within your GitHub Enterprise Server. Here are the recommended settings and the reasons why enabling Server Statistics is beneficial:

| Reason | Description |
| --- | --- |
| Usage Analysis | Server Statistics provide data on the number of pushes, pull requests, issue creations, and other relevant activities. Analyzing this data can help you understand the usage patterns and trends within your server. |
| Identify Collaborative Opportunities | Analyzing Server Statistics can help identify areas where collaboration can be improved. For example, a low pull request count and issue count in the server may indicate opportunities to foster collaboration and encourage more code reviews and contributions. |
| Measure Impact | Server Statistics allow you to track the impact of initiatives, such as introducing InnerSource practices or promoting open-source contributions. Monitoring pull requests or external contributions helps gauge the success and effectiveness of these initiatives and make data-driven decisions. |
| Continuous Improvement | Enabling Server Statistics enables measuring the effectiveness of process improvements or development practices. Tracking metrics like time to resolve issues, code review turnaround time, or code quality improvements helps identify bottlenecks and areas for improvement. |

## Resources

- [Orgs and Teams Best Practices · GitHub](https://gist.github.com/rwnfoo/3e19747f6dc2c5b9cfb0ff9c89d834b4)
