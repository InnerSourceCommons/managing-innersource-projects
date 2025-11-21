# GitLab InnerSource Configuration

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

## Self-Managed and Free with Customization
GitLab is a self-managed configured source controlled platform. We can a lot of autonomy with that for being a free tier patform. With that said, there are of course pros and cons to having the ability to self-managed. We will need to configure and customize based on our organizational needs.

Here is an [overview](https://docs.gitlab.com/administration/configure/) of what we can configure within GitLab.

There are various tiers of self-administering hierarchy within GitLab that InnerSource Commons can based on depending on the scope of project,organization, or user specifics.

### GitLab Administration Layers

**By organizations**
<On GitLab Self-Managed, by default this feature is not available. To make it available, an administrator can enable the feature flag named ui_for_organizations. On GitLab.com and GitLab Dedicated, this feature is not available. This feature is not ready for production use.>

**By projects**
**By users**