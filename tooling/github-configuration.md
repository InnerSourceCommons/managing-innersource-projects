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

### Repository policies

#### Base permissions

When setting up the base repository permissions to promote InnerSource within your organization on GitHub, it's important to strike a balance between transparency, collaboration, and respecting constraints and limitations. Here are some best practices for setting up repository permissions:

| Repository Permission | Description |
| --- | --- |
| No Policy | Inherit permissions from the organization or parent repository. Provides flexibility for projects with unique permission needs. |
| No Permission | Not recommended if any of the repositories in that org might benefit from collaboration. Completely restricts access to the repository, hindering collaboration and knowledge sharing. Repository access requires finding and talking to org owners. |
| Read | All organization members can view the repository's contents, promoting transparency and allowing employees to learn from each other's work. |
| Write | Specific individuals or teams with the "Write" permission can make contributions to the repository. Grant to active InnerSource participants with relevant skills. |
| Admin | Limited to a select group responsible for managing the repository and overseeing InnerSource initiatives. Handles repository configuration and review processes. |

It is better to choose No Policy and let the user choose, but it is also a good idea to consciously choose Read permission.

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
