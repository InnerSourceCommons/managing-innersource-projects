# Governance

According to the Business Dictionary, governance is defined as:

> _Establishment of policies, and continuous monitoring
> of their proper implementation, by the members of the
> governing body of an organization. It includes the
> mechanisms required to balance the powers of the
> members (with the associated accountability), and
> their primary duty of enhancing the prosperity and
> viability of the organization_

In open source, governance is described in the "governance
model" document, defined by OSSWatch[^1] as:

> _A governance model describes the roles that project participants 
> can take on and the process for decision making within the project. 
> In addition, it describes the ground rules for participation in the 
> project and the processes for communicating and sharing within 
> the project team and community_

Usually the governance model is a written document containing:

-  project goals
-  work, management and collaboration infrastructures definition
-  people roles and responsibilities definitions
-  community support mechanisms
-  decision making process policies description
-  contribution process policies description
-  monitoring policies and mechanisms description


# Govenance Standards/Models

There are some initiatives describing what good corporate open
source governance means. The most mature one is the _Good Governance
Initiative_ by the OSPO Alliance, which  has already released the
first version (v1) of its framework.

Coming versions of this framework are expected to consider
InnerSource as a corporate practice managed by the Open Source
Program Office (OSPO).

In the shared spirit of reusing materials, we'll avoid overlapping
and focus here on a pure InnerSource case where no formal corporate
management of open source exists yet.

The GGI proposes 5 goals to structure 5 governance activities for
each of them.

All GGI goals for open source governance apply with minor tweaks to
our pure InnerSource case:

- Goal 1: Foster **usage** of InnerSource software
- Goal 2: **Build trust** around InnerSource
- Goal 3: **Spread** the (InnerSource) **culture**
- Goal 4: **Engage** with the (InnerSource) **community**
- Goal 5: **Make InnerSource Strategic** for the organization

There will be differences in the context that will cause an
adaptation.

## Foster usage of InnerSource software

InnerSource-developed software might suffer from the same kind of
distrust open source has. Usage is the base: don't expect
contributions without users. And the borders applying to
InnerSource limit the audience, so this can become challenging for
small or varied corporations.

### Activities

InnerSource will have a greater need for software inventories due
to the findability problem.

InnerSource practices are mostly the same as open source ones,
so the skillset is basically the same, with some specifics:
- In our focused case, familiarity with usual open source
  products is not needed.
- InnerSource usually deploys to a single instance. Then, the
  needed scope for deployment training might be narrowed down.
- Motivation: InnerSource is less sexy than open source, and the
  pool of possible contributors is smaller. Motivation is more
  challenging and needs more effort and skill.

InnerSource-specific topics will need attention:
- Transfer pricing doesn't apply to open source but use to be a
  barrier for corporations operating in different fiscal
  jurisdictions.
- Heavily outsourced development scenarios might require focusing
  competency growth on product owners, if there are scant
  developers inhouse.

InnerSource supervision ought to focus on different questions:
a) Purpose: controlling the redundant developments and ensuring
   InnerSource software is proactively managed.
b) Push/promote integrating InnerSource components and
   contributing upstream.
c) Identify where InnerSource are de-facto or critical solutions
   and assess suitability (avoid InnerSource monoliths).

There's usually no need to curate enterprise-grade InnerSource
software or to manage open source software development skills and
resources (GGI activities 1.4 and 1.5.

In exchange, software and documentation findability are
challenging because public search engines usually don't work
inside corporate borders.

## Build trust around InnerSource

Building trust means dealing with fears, uncertainty, and doubts
(FUD). The usual sources for FUD are:

  - **Legal context**, because most participants usually are
    unaware of the relevant details.
  - **Security**, mainly due to the not-invented here (MIH)
    syndrome. In fact having the source code available ought to
    help building trust by enabling auditability, and shifting
    some testing from back-box to white-box.
  - **Internal context**, specifically in organizations where the
    InnerSource initiative sponsorship is limited.

### Activities

InnerSource has its specific legal challenges:
 - InnerSource license. This might change in the future, but for
   the moment, in contrast to open source, there are no public
   InnerSource licenses for reference.
 - Transfer pricing, for corporations operating in several fiscal
   jurisdictions.
 - Export control. The same is needed for any kind of software
   licensing schema. But InnerSource has better options for control
   than open source since it's privative software and all of its
   development happens in-house.

Managing vulnerabilities is slightly better under InnerSource, and
way worse than in open source: There are dependencies on privative
software and services (usually avoided in open source but quite usual
in InnerSource).

Dependency management needs to take care of both:
 - Internal InnerSource dependencies
 - Dependencies on privative software and services (usually
   avoided in open source but usual in InnerSource).

The internal context is a source of concerns. The specific set of
concerns depends very much on each organization and vary a lot, but
the individual concerns are usually shared with other organizations.
For that reason, the InnerSource Commons collects
[patterns](https://github.com/InnerSourceCommons/InnerSourcePatterns),
so solutions can be reused, either as they are or as inspiration for
a local variant.

Metrics tend to help provide trust.

But the corporate motivation for embracing InnerSource might be
different (silo breakage, etc) and independent of approaching
open source. These local differences totally affect the metrics
architecture. See the
[metrics pattern](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/introducing-metrics-in-innersource.md)
published by InnerSource Commons.

## Spread the (InnerSource) culture

The InnerSource culture is the same as the open source one.
It collects a set of best practices that can be roughly
summarized as:
 - **contributing upstream** and
 - taking the **human** nature of participants into account.

### Activities

The activities for spreading the InnerSource culture are basically
the same as with open source as well, so the GGI standard applies
as-is, with the usual local adaptations.

Usually, going InnerSource is an intermediate step for corporations
with open-source unfriendly culture to approach open source.
In such cases spreading the culture will pose a serious challenge
but less than going full open source.

Cases of organizations targeting pure InnerSource can be legit or
not.
Some organizations want to get the benefits of InnerSource
by adopting cherry-picked open source procedures and lore, but
without actually practicing InnerSource. Step away from such cases,
as this most likely won't work!
Legit pure InnerSource embraces its culture as a fundamental piece
of the framework.

## Foster engagement with the (InnerSource) community

Under open source, a sense of belonging to any local community
smoothly transitions into the global community. The feeling crosses
formal boundaries the same way the software does.

In InnerSource there's also a global community. (In fact, it is an
open source one, but that's another tale to be told on other
occasions).

But in contrast to open source, while the global InnerSource
community shares information and resources, they do **not** share
**their InnerSource production***. The presence of boundaries for
the InnerSource production becomes thus very present and remarks
the separation between the local community and the global one.

### Activities

As part of the open source spirit in which InnerSource roots,
organizations are encouraged to engage with special interest groups
(SIG's) beyond their borders, and in particular with the global
InnerSource community.

Publicly asserting one's InnerSource practice and showcasing related
experiences may make sense or not that much depending on the context
of the corporation. Goals that benefit from such external engagement
include:

 - Plans to go open source in the future,
 - InnerSource as hiring motivator

Engagement with the internal community is a fundamental part of
InnerSource. But as users of software of other teams, it is in
self-interest to secure long term support or knowledge transfer
from upstream. The
[code-consumers pattern](https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/patterns/1-initial/code-consumers.md)
is related to this.

Usually, there's scant or no need for internal InnerSource
[purchase policies](https://ospo-alliance.org/ggi/activities/open_source_procurement_policy/)
but if needed, it is a natural task for the InnerSource Program
Office  (ISPO).

## Make InnerSource Strategic for the organization

Most times, InnerSource is a corporate cultural transformation. Such
changes need time to overcome previous inertia and even longer to
stabilize and become mainstream.

Some bottom-up InnerSource initiatives die or languish after an
initial unsuccessful push or because other priorities drain the
attention before the cultural shift stabilizes.

Making InnerSource strategic for the organization is the way to
ensure its provided value is perceived as such.

### Activities

Ensure you design your InnerSource initiative and its implementation
to feature important long-term corporate goals like innovation,
digital sovereignty, and digital transformation. Think of your
organization and its context and find other goals InnerSource may
contribute towards. Then communicate it and get as much air cover
from your executives as you can.
