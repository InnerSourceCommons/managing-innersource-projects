Some Examples of Interest
=========================

Although open source communities seem to be similar in some cases, there
are peculiarities that define their actual idiosyncrasy. Details such as
selecting the code review tool may mean a significant change in the way
this is analyzed. This also takes place in InnerSource projects.

Infrastructure is indeed a key part of the InnerSource process as this
may force developers to work in a specific way. As an example, the
OpenStack community uses Gerrit and forces developers willing to commit
a piece of code to use this. This means that the community is 100% sure
they are code-reviewing any piece of code into the
baseline.

Thus, having the proper infrastructure helps to follow a pre-defined
process, but this also helps to be more metrics-friendly as there is a
clear workflow followed by any developer within the organization.

On the other hand, if the workflow is not well defined or if the
development infrastructure allows to have work-arounds, this may lead to
situations where shortcuts are usual, and developers and managers may get
frustrated at some point.

Thus, having in mind those differences between two communities, inner
source is not safe of this peculiarities, and any organization faces a
list of potential issues when installing infrastructure, governance
model, financial system and so on.

The following is a list of usual studies of interest in organizations
applying InnerSource methodologies. This list is not intended to be an
exhaustive one, but examples of how to approach and measure specific
issues related to the usual goals in the InnerSource world. Part of
these analysis are experiences coming from the open source world that
could be useful when talking about InnerSource communities. These are
communities and engaging new developers, retaining those, code review
processes and others are common goals.

[](#mentorship)
Mentorship and helping newcomers
--------------------------------

This analysis is related to the centralization of the development and
attracting and retaining new developers. When aiming at incrementing the
number of participants in the InnerSource ecosystem, trusted committers
and mentors are key in this new process. Trusted committers as they are
the core reviewers of the project and well known developers. And those
trusted committers may be the ones acting as mentors. Mentorship should
help new developers to feel comfortable with the environment in the
project, and for this, mentors will help new contributors in several
ways: understand how to use the available infrastructure (Git
repositories, mailing lists, code review process, etc). The mentor will
provide pointers to the documentation and code guidelines. This role
will also help in understanding how to contribute to that specific
community. And finally, will review the piece of code pull-requested by
a newcomer driving her around the needs for such change and potential
requested updates to that piece of code.

And all of this information can be tracked. As InnerSource is fostering
a transparent infrastructure to deal with all of the activities around
the development of the product, those discussions are all open to anyone
interested in. Thus, the mentorship analysis will help to understand who
are those mentors, if those mentors are helping to reduce the time to
review process as they give clear directions about how to proceed and
the number of newcomers that come to the community. All of these are
just examples of how to potentially track mentors activity and if such
activity is actually helping in the InnerSource adoption within an
organization.

This should be compared to previous stages of the software development
process and improve the bottlenecks of activity when needed. A potential
and usual issue raised in open source communities, but also within
organizations is that the workload adequacy of the mentors and core
reviewers is high and those are at some point the bottleneck in the code
review process, what forces the community to bring more core reviewers.

It is also interesting to foster the creation of the mentors role even
if they are not core reviewers of the community, as they can provide
useful information to the newcomers. This role can be also seen as the
community manager that facilitates the path of those interested in
contributing.

Development Cycle
-----------------

The study of the development cycle is related to the reduction of the
time to market. This could be seen as a way to determine if the policies
applied are actually decreasing the total time to develop a new feature,
fix a bug and other actions. The goal of this analysis consists of
understanding the total time from user stories to the merge into the
source code repository.

This is important to understand the time that usually takes a new
requirement to be implemented going through the design phase,
implementation, code review process, continuous integration and merging
time. As SLAs are playing a role here, we can calculate how long it
takes for a feature request to be part of the source code and then
later, there is a time to deploy that functionality or fix that in
production.

Some examples of this analysis could be the questions of how fast the
requirements are implemented, for example the best 50% or 80% of them
and if the community is able to reduce that time over time. It is also
possible to split this process into its several phases such as feature
request, backlog, developing process, code review process, continuous
integration, merge into master, more continuous integration and later
deployment in the customer. And thanks to this split, it is possible to
look for bottlenecks.

As an example, let us consider the code review phase. There are two
roles playing here: the submitter and the reviewer. And we can split the
time that a reviewer and a submitter is spending on their specific
tasks. Thus, there is a time waiting for a reviewer action (typically
the code review action) and the time waiting for a submitter action
(typically when the reviewer asked for some modifications of the pull
request).

If it happens that the time waiting for a submitter action is too high,
the community may need to emphasized training actions on those newcomers
or developers. But if the time waiting for a reviewer action is the one
increasing over time, then the community may have a look at some actions
that will help to reduce that time. For example, they can vote other
developers to be code reviewers, or being more precise in the requests
than to the submitters.

Contributors Funnel
-------------------

This analysis is focused on understanding how long it takes for a
developer in the InnerSource community to become a developer or a core
reviewer. Communities can be seen as *onions* where there are several
layers. Those purely acting as end users. Those users that when they
find a bug, this is reported to the community. Those that report the bug
and send a pull request. And finally the development team that could
participate in the community occasionally, regularly or as core
developer.

The usual proportion of these communities, at least in open source, are
following the distribution of 80% of the activity is done by a 20% of
the developers. It is expected that InnerSource communities follow the
same distribution as the development process is open within the
organization. Thus, the mentioned roles such as pure end users or core
developers will be also found.

Coming back to the analysis, the contributors funnel analysis aims at
understanding how much time it takes for a developer to become a
contributor of the InnerSource project. From their first traces asking
for a feature request in a mailing lists or opening a bug report, till
the point in time when they commit or review their first piece of code.

Indeed the goal of this analysis is to bring to context how good the
community manager, mentors and other roles are performing with this
respect.

This also helps to understand what percentage of contributors or users
are finally committing a piece of code, and what percentage of those
become trusted committer after a while.

Engagement
----------

Attraction and retention of new members. As InnerSource method evolves
within an organization, it is expected that developers will work on
other projects not directly related to their business units. Those
participating for their first time will be part of the attraction rate
of such community. Those that are still contributing in that project
will be part of the retention rate. And those leaving the community
after a while will be part of the developers that were not retained.

The ideal goal of any project is to attract as many as possible, retain
all of them so nobody leaves the community. But this does not take
place. Turnover is an inevitable situation and projects, business units
and organizations have to deal with it. However it is possible to
measure the engagement of the community and how specific policies help
to attract and retain more developers than others.

That attraction and retention rate could be affected by other variables
such as the programming language, people in the project, rewarding
process and others.

Some specific questions in this analysis are related to how comfortable
developers are in the business unit or in the organization, and will
help to improve the process to attract and retain the best of them. How
good is the project or community retaining developers? How far is this
community from the community performing the best? Do we know the reasons
why developers left the community? And if so, are we applying some
actions to let them know that they are precious for the community?

The more the metrics we have, the more understanding the project will
have about it. This could be also seen as a way to measure neutrality
and transparency within a project and across several business units and
the organization in general.

Break Silos
-----------

This concept is linked to large organizations that have several
development teams and those are geographically distributed. Developers
in different silos do not know what others are doing and can not
interact with other developers out of their own silo.

Silos are also an effect of hierarchical organizations where only
management on the top of the silo what others are doing. This can be
even seen in development teams in the same silo where project members
depends on middle management and that roles control all of the
information.

Spreading the Knowledge
-----------------------

As silos are broken and the structure becomes flatter, the knowledge
should be shared across the organization. Developers come to a new
project, they contribute and they gain knowledge about how to proceed,
the mission of such project, idiosyncrasy, infrastructure, etc. And
Those interactions can be measured thanks to the traces left in the
several data sources.

For instance, developers working in the same file, may have different
knowledge of the library, but there is a link between those: that piece
of source code. Those acting as mentors and those being mentored also
builds their own specific social network.

Some specific metrics of interest here are those related to the analysis
of how the knowledge becomes something popular in the sense of people
contributing to the several repositories of information. As an example,
the *territoriality* can be used to understand how lonely are developers
when working. Areas of the code highly territorial may mean that no
contributors are helping there. And we need to understand the reason for
this: spaghetti code, complex functionalities that requires a depth
understanding of what is being developed, etc.

Other ways to measure how the knowledge is flowing around the community
is analyzing the *orphaned code* left by those leaving the project. Is
someone maintaining that area of the code? Are there others in charge of
such piece of code that previously participated? What are the usual
areas of knowledge of the different core reviewers where they
participated?

And finally, usual metrics such as betweenness may help to understand
key players that have knowledge across several projects. Those linking
two nets are those that help to move knowledge from one community to the
other.

Middle Management cultural change
---------------------------------

Silos lead to middle management as those are in charge of filtering and
controlling that the developer teams reach some specific deadlines and
goals. However, activities among teams are not fostered with a lack of
dynamism that affects other areas of innovation in the company as people
tend to focus on the work their being paid for, and not others work.

In addition, this role in organizations have reached their position in a
hierarchical way and this is how this is expected to work for others
willing so scale in the hierarchy.

However, InnerSource aims at fostering developers to developers
relationships (D2D) and not manager to manager (M2M) relationships as
this delays the development process and decision making at the technical
level.

Scalability
-----------

And this leads to pure scalability. When allowing D2D relationships from
any place within the organization, middle management roles tend to
re-convert themselves to community managers that foster that type of
behaviors, bring hackathons at home and invite third parties to
participate in their projects as they participate in others.

Keep Great Developers in House
------------------------------

And having freedom and trust from the organization developers work at is
a good complement to feel great at work. Indeed one of the main goals of
any organization is to keep their own great developers at home, but also
to attract the best developers around the world. This cultural change
and way of working help to have developers aligned with the general
strategy of the company.

Thus, there are some initial goals to be accomplish within the company:
remove silos, reconvert middle management, scale development and have a
great development team. Following the GQM approach, this allows us to
work on the specific questions we need to answer with this respect.

Allow Innovation in Detail
--------------------------

This follows the detailed GQM approach where each goal may have several
questions and each question may have one or more metrics that helps to
understand the situation. This also assumes that we are in an
organization that already applied InnerSource and wanted to check if
the process is leading to an actual improvement in the several detailed
goals.

**Goal: allow innovation within developers**

-   Question: How are developers interacting with other business units?

    -   Rationale: innovation is a result of mixing several points of
        view when resolving issues. Developers from other disciplines or
        business units will bring ideas that may foster that innovation
        process.

    -   Metric: Number of attracted developers in the several inner
        source projects

    -   Metric: Number of retained developers in the several inner
        source projects

    -   Metric: Number of contributions: commits, wiki editions, emails
        and others from attracted contributors

    -   Metric: Number of trusted committers

-   Question: How are new projects being created within the
    organization?

    -   Rationale: the creation of new projects is the result of
        allowing developers to feel comfortable within the organization.
        New projects are the consequence of letting them know that they
        can bring ideas to the core business of the organization.

    -   Metric: Number of new projects in the platform

    -   Metric: Number of different developers creating new projects

    -   Metric: Number of active developers in the last

-   Question: Are incubation projects gaining traction within the
    organization?

    -   Rationale: As incubated projects need some process to become
        mature ones, this is related to the activity in the incubation
        side of the InnerSource program.

    -   Metric: Number of new incubating projects

    -   Metric: Number of incubated projects became official ones

-   Question: How many new technologies have been introduced in the
    organization?

    -   Rationale: it is representative the PayPal case[^7] where used
        to work in a specific programming language. But innovation came
        from new developers introducing JS and saving hundreds of lines
        of code.

    -   Metric: Number of new programming languages

    -   Metric: Number of new open source libraries introduced in the
        development
