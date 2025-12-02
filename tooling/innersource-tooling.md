# InnerSource with GitHub

## Effective InnerSource Strategies and Configuration for GitHub

This documentation is a compilation of the essential settings and strategies necessary for implementing InnerSource inside an organization. It encompasses both overall strategic elements and specific points relating to SCM configuration.

We also encourage you to read the OpenSSF's (Open Source Security Foundation's) 
[Source Code Management Configuration Best Practices guide](https://best.openssf.org/SCM-BestPractices/)
for a perspective focused entirely on security.

## Table of Contents

### GitHub

- [GitHub InnerSource Strategies](./github-strategy.md#github-innersource-strategies)
  - [Balancing Security \& InnerSource: Who Can See What](./github-strategy.md#balancing-security--innersource-who-can-see-what)
  - [Security-First Perspective and InnerSource-first Perspective](./github-strategy.md#security-first-perspective-and-innersource-first-perspective)
  - [Visibility Differences by InnerSource Project Type](./github-strategy.md#visibility-differences-by-innersource-project-type)
  - [Project Participation Difficulty Level by Setting](./github-strategy.md#project-participation-difficulty-level-by-setting)
  - [Pros and Cons of InnerSource Dedicated Environment](./github-strategy.md#pros-and-cons-of-innersource-dedicated-environment)
  - [Variations in how repository read access is distributed](./github-strategy.md#variations-in-how-repository-read-access-is-distributed)
  - [Conclusion: High Level Guideline](./github-strategy.md#conclusion-high-level-guideline)
- [GitHub InnerSource Configuration](./github-configuration.md/#github-innersource-configuration)
  - [Enterprise Setting](./github-configuration.md/#enterprise-setting)
    - [Repository policies](./github-configuration.md/#repository-policies)
      - [Base permissions](./github-configuration.md/#base-permissions)
      - [Repository creation](./github-configuration.md/#repository-creation)
      - [Repository forking (Private / Internal)](./github-configuration.md/#repository-forking-private--internal)
  - [Organization Setting](./github-configuration.md/#organization-setting)
    - [Member privileges](./github-configuration.md/#member-privileges)
      - [Base permissions](./github-configuration.md/#base-permissions-1)
      - [Repository creation](./github-configuration.md/#repository-creation-1)
      - [Repository forking](./github-configuration.md/#repository-forking)
  - [GitHub Enterprise Server Setting](./github-configuration.md/#github-enterprise-server-setting)
    - [GitHub Connect - Server statistics](./github-configuration.md/#github-connect---server-statistics)
  - [Resources](./github-configuration.md/#resources)

### GitLab
For GitLab, we are using a similar set of de factos - [GitHub InnerSource Strategies](./github-strategy.md#github-innersource-strategies) as that should not changed much in terms of InnerSource security, access, and various setting protocols prescribed under InnerSource Commons principles.
