# Introduction

Infrastructure is one of the key aspects when dealing with InnerSource.
This provides the tools necessary to develop and communicate across
the development teams.

Developers, middle management and C-level are all part of this process.
All of these groups are part of the mindset change to be part of a more open
software development process. And any of those should accept the new rules to play.

As InnerSource aims at bringing some of the principles when developing
in open source communities, InnerSource communities needs a cultural
change where open communication and transparency in the decision making
process are vital.

Thus the selected infrastructure must be open and transparent by design.
And this should help developers to follow some specific tracks such as
code review processes. This should help to avoid work-arounds as well.
Any contributor to the new infrastructure must follow the same rules.
There will be differences in the access level permitted such as
those developers that are newcomers versus those that already have
commit rights.

In addition to this, this infrastructure must be simple following the
KISS (Keep It Short and Simple) approach. This will help to lower the
barrier access to new contributors. The easier the process is,
the more attractive the process to first contribute to any data source.

This is something that already takes place in OSS communities. They
usually need a subscription in some of the tools such as
the mailing lists or the wikis. And once this is done, the contributor
is allowed to update wikis or send emails. In the case of the source code
the process has been lately more bureaucratic as code review has
become more and more important.

On the other hand, sites like [GitHub](https://github.com) or [GitLab](https://gitlab.com)
provide under one single account access to work on the source code, issues, pull requests
and wiki editions. Communities using this infrastructure usually have a
governance model where any type of change should be followed by a review
from a trusted committer.

When inner sourcing, there are key aspects that should be taken into
account. All of those are related to being opened, transparent as their
main attributes, but also archivable, searchable and friendly when used
and mined.

* **Openness**. Every tool used in the software development process should be
  accessible by anyone within the organization. Any person related in somehow
  to the development process should have access to this. This is helpful to
  build confidence across developers and lower the barriers to anyone willing
  to contribute to the InnerSourced projects. Any contribution is welcome and
  being open to any type of contributor is necessary.

* **Transparency**. This is focused on the authorship of the several contributions.
  From pure code submission processes to fixing typos, everything needs to
  be registered and the authorship of any change should have an author.

  Having the authorship of any contribution will help to understand who are the
  main contributors within the community. And those will be part of the core of
  such communities. As there are contributions beyond the code, the ownership of
  the contributions should help to understand other types of contributions. From
  documentation to mentorship or helping others in the forums are activities of
  interest in InnerSource communities.

* **Archivable**. Any tool should provide an archive of previous actions. This will
  help when talking about specific pieces of code, previous technical discussions
  in the communication channels or decisions made during the design summits. This
  should help for referencing purposes.

* **Searchable**. As more and more projects will be added to the InnerSource process,
  the amount of repositories of information will grow in the same way. It is
  important to have searching capabilities within the platform. This will help
  to reuse and discover projects and contributors useful for our own purposes.
  This should also help to understand if there are other projects filling
  your specific needs.

* **Data Retrieval Friendly**. This is an important aspect. The toolchain selected should
  be easy to mine. This could be an external tool that mines any
  available data source and builds specific areas of the software development
  process. Or this could be provided by the very same infrastructure.
  This will help the community to understand where the bottlenecks in the process
  are found, but also will help to detect potential flames, blockers and
  any other non-desired situation.

  As detailed in the metrics chapter, data play a key
  role in the deployment of the InnerSource methodology. This will help
  to understand where the whole process is going and make decisions when
  necessary to follow the right direction. For this, tools that allow
  to retrieve information through an API (e.g.: GitHub API) or thanks to
  a log system (e.g.: 'git log' command line) are of great importance.

* **Access rights**. As there is an open and transparent process to make decisions
  that foster the participation, it is worth using an infrastructure that
  limits the access to certain roles within the organization. Everyone is
  invited to participate, but a subset of the contributors will have the right
  to submit those pieces of source code or edit the wikis in the documentation.
  The infrastructure should allow this roles division. Anyone is welcome to read,
  but some of them are allowed to write.


All of these are probably already known as those are key aspects when deploying
infrastructure in open source projects. There are two great books that have already
dealt with this issue. [_Producing Open Source Software_ by _Karl Fogel_](http://producingoss.com/)
and [_The Art of Community_ by _Jono Bacon_](http://www.artofcommunityonline.org/).
The first one focuses on the needed and
basic infrastructure when starting from scratch an open source project. While
the latter is focused on how to support specific workflows with tools. And
both are great approaches when dealing with open source projects and partially
useful when dealing with InnerSource projects.

As Jono states in his book "_To select the right tools for the job, we need
first to understand what we are trying to achieve. We need to know what our
**workflow** is_".

The following section focuses on the infrastructure needs when starting an
InnerSource project. In the basics there are not main differences from the
key aspects point of view. However we have to deal with existing, internal
and in some cases access-restricted infrastructure and check if that infrastructure is enough
for our new purposes and goals when inner-sourcing.

Thus there are two main areas to consider: first if we can reuse existing
infrastructure and second if we need new infrastructure, what tools
are available that fit with our key-aspects requirements.
