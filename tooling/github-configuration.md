# GitHub InnerSource Configuration

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

## Enterprise Setting

#### Layering Source Control Management Configurations
In GitHub, configuration can be set at different levels. In general, configuration set at the enterprise level will overrule or constrain organizational configuration which will do the same for repository level configuration.
Sometimes a configuration settings disables options at lower levels. Other times a configuration setting at the enterprise or organization level only sets the default option that is prechecked. It can be changed by a user who takes an additional action at the repository level. Due the overlapping nature of the policies, it is important to pick the right layer to apply a configuration.
In general, use caution when picking configuration settings at the enterprise or organization level that restrict reasonable choies at the repository level. Nudging with defaults can be better than disabling options enterirely.
If you have repositories that must be extremely tightly controlled, consider mandating that type of repository go into special organizations set up for those constraints instead of trying to apply those constrains on all enterprise code.

### Repository policies set an Organization Level

#### Base permissions

[Base permissions](https://docs.github.com/en/organizations/managing-organization-settings/managing-base-permissions-for-projects) are permissions that are applied to all of an organization’s repositories from the organization level. They are given to all members of the organization, excluding outside collaborators. Since organization members can have permissions from multiple sources, members and collaborators who have been granted a higher level of access than the base permissions will retain their higher permission privileges. When setting up the base repository permissions to promote InnerSource within your organization on GitHub, it's important to strike a balance between transparency, collaboration, and respecting constraints and limitations. Here are some best practices for setting up repository permissions:

| Repository Permission | Description |
| --- | --- |
| No Permission |  Selecting this means organization membership gives users no permissions to read, write, or admin any repositories in the organization. If not compared with other methods of extending permissions, especially read permissions, this will result in making the organization's repositories hard to discovery, find, or collaborate. |
| Read | All organization members can view the repository's contents, promoting transparency and allowing employees to learn from each other's work. |
| Write | All organization members will have the "Write" permission. They will able to make commit contributions to the repositories and approve pull requests. |
| Admin | All organization members will have "Admin" permissions to all repositories in the organization, including clone, pull, and add new collaborators. |

"No Permission" or "READ" are common options to choose. Selecting "Read" gives every member of the organization read permissions to EVERY repositories in the organization, even if the repositories visibility is set to private. Many times this is fine and the preferrable option. 

##### Enabling wide and narrow sharing from a single organization.
If you want to enable both wide and narrow sharing within a single organization, then the base permissions setting of "No Permission" combined with two other configurations might be preferrable. 

In situations where it is important to have a single organization be able to hold:
- Repositories shared to anyone in the enterprise
- Repositories shared to anyone in the organization
- Repositories shared to a more limited subset of users
  
... Then 3 settings should be combined:
1. "No Permissions" should be selected for the base repository permissions for an organization.
2.  Ensure repositories can opt into sharing with everyone in the enterprise by giving repository owners the permission to pick "internal visibility" upon creation at a later date. This is normally available by default, but it can be disabled at the organization or enterprise level. Optionally, there is an organizational policy to set "internal visibility" as the default visibility. Default means repository owners can select to have the repository be private but internal is the pre-checked selection.
3. To ensure it is low friction for all organization members to have READ access for most repositories in the organization, set up a GitHub team that mirrors that organization's membership. Repository owners that want to share READ permissions to their repository with any member of the organization, can add that team to their repository. 


#### Repository creation

Allowing most users to create only Private or Internal type repositories is a measure often taken.
It's important to consider your organization's policies and the nature of the projects when deciding on repository creation settings. Striking a balance between encouraging collaboration and managing access to sensitive information is crucial in an InnerSource context. Providing options for members to create repositories, while defining guidelines and permissions, can support innovation and knowledge sharing within the organization.

| Repository Creation | Description | Recommendation |
| --- | --- | --- |
| No Policy | Organization owners can choose whether to allow members to create repositories. | Provide flexibility for members to create repositories based on project needs, encouraging collaboration. |
| Disabled | Members will not be able to create repositories. | Discourages repository creation and may hinder InnerSource practices. Consider enabling creation for collaboration. |
| Members can create repositories | Members are allowed to create repositories, but with restrictions on the types available (public, private, internal). | Encourage the creation of repositories while specifying the types that align with your organization's guidelines. |
| ┣ Public | Members can create public repositories visible to everyone on GitHub. | Promote open sharing and collaboration with both internal and external stakeholders. |
| ┣  Private | Members can create private repositories accessible only to invited collaborators. | Encourage team-specific or sensitive projects that require restricted access. |
| ┗ Internal | Members can create internal repositories visible to organization members. | Foster collaboration and knowledge sharing within the organization while keeping information proprietary. |

Restricting who can make a repository public or adding process around that workflow is an important control to minimize the risk of code being made public that should not be made public. 

It is worth noting here that some companies may have entirely separate Github instances for different combinations of public facing code, private code collaboration with external partners, internal code collaboration across the entire company, or code collaboration within a subset of the company. In the situation where a company has one GitHub instance for internal code and one or more organizations on the public-facing github.com for open-source, they might turn off the ability to create any repositories under public visibility in the GitHub Enterprise instance specifically for internal code. This has the additional benefit of making it less risky to let repository owners change their repository visibility themselves and less risky to enable repository forking.

**Having different GitHub instances for public-facing and internal code can reduce risk of accidental disclosures.**

Some companies also have add-on systems that handle repository creation. This can be useful if an enterprise wnats to capture additional information from repository creators at time of repository creation, programmatically inject standard files or create metadata in other IT systems at the same time. 

#### Repository forking (Private / Internal)

The decision to allow or restrict repository forking depends on your organization's policies and the level of control and security required for your codebase. Enabling forking generally promotes collaboration, allows for experimentation, and encourages the InnerSource principles of sharing and contribution. However, it's important to assess the risks and consider any regulatory or compliance requirements before allowing forking in private and internal repositories.

| Repository Forking | Description | Recommendation |
| --- | --- | --- |
| No Policy | Organizations choose whether to allow private and internal repositories to be forked. | Provide flexibility for forking private and internal repositories based on project needs. This allows teams to collaborate and contribute to codebases while maintaining control over access and security. |
| Enabled | Organizations always allow private and internal repositories to be forked. | Encourage forking of private and internal repositories to promote collaboration and foster a culture of contribution. Forking enables individuals or teams to make modifications and propose changes without directly impacting the original codebase. |
| Disabled | Organizations never allow private or internal repositories to be forked. | In an InnerSource context, it is recommended to enable forking to encourage collaboration, knowledge sharing, and innovation. Forking allows individuals or teams to experiment, improve, and contribute without directly modifying the original codebase. |

## Organization Setting

### Member privileges

#### Base permissions

At the Organization Level, you can further refine repository permissions within specific organizations. This allows you to tailor access control to each organization's unique requirements. Some recommended practices for repository permission settings at the Organization Level include:

- Granting appropriate permissions to organization members based on their roles and responsibilities.
- Providing read access to all organization members, promoting transparency and knowledge sharing.
- Granting write access to individuals or teams actively participating in InnerSource projects, who have demonstrated the necessary skills and knowledge.
- Designating a select group with admin permissions responsible for managing repositories, overseeing InnerSource initiatives, and maintaining repository settings.

#### Repository creation

When configuring repository creation settings at the Organization Level, it's essential to align them with your organization's goals, policies, and security requirements. Allowing members to create repositories with specific types (public, private, internal) provides flexibility and promotes InnerSource practices.

#### Repository forking

When making a decision about forking from private and internal repositories for InnerSource projects, carefully evaluate these factors to find the most appropriate approach for your organization's specific context.

| Factors to Consider | Description |
| --- | --- |
| Collaboration and Contribution | Allowing forking promotes collaboration and contribution within the organization. It enables individuals or teams to make modifications and propose changes without directly impacting the original codebase, fostering a decentralized approach to innovation. |
| Access Control | Evaluate the sensitivity of the code and the level of control required for the project. If the InnerSource project involves sensitive information or requires stricter access control, it may not be suitable to allow forking from private or internal repositories. Consider limiting forking to specific repositories or restricting it altogether. |
| Security and Intellectual Property | Assess the potential risks associated with forking, such as the exposure of proprietary code or intellectual property. If forking could lead to unintended disclosure of sensitive information, it may be necessary to disable forking from private and internal repositories. |
| Project Scope and Collaboration Scope | Determine the scope of the InnerSource project and the desired collaboration boundaries. If the project involves cross-functional teams or collaboration with external contributors, allowing forking from private and internal repositories may promote broader engagement and involvement. |
| Internal Policies and Compliance | Consider any internal policies, regulations, or compliance requirements that may impact the decision to allow forking from private and internal repositories. Ensure that the practice aligns with your organization's guidelines and legal obligations. |

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
