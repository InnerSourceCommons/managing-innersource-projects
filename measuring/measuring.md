# What, When and How to Measure

Choosing the right software metrics is not an easy task. If you have
access to data, and in software development a lot of data can be
gathered, you can easily think of many possible metrics. Sometimes, too
many... up to the point of reaching saturation!

This report aims to formalize a strategy and a method to identify,
acquire and understand metrics, and how to apply those to the inner
source world. Part of the information found in this document is built on
top of previous literature and talks about InnerSource. However, none
of the former seems to focus specifically on the metrics needed to
understand if a process is working as expected, or if substantial
changes are required.

As InnerSource is a medium or long term activity, as any new
methodology to be applied within a company, feedback about the process
and performance is key to assure its quality. This report has as goal to
be the *glue* between developers, managers and C-level. It aims to help
them build a proper mining software structure based on key indicators
that will help to lead the improvement of the process. And specifically
in the case of inner sourcing, this document is expected to help when
selecting initial metrics and studies to lead that process.

It is worth mentioning that the whole organizational structure should be
aligned with the metrics used for the analysis. Qualitative feedback
from the several layers of the organization is also a key part of this
process, involving from developers to C-level and going through middle
management. They all should understand that these tracking actions are
following a specific goal and not tracking their own individual
activities.

Rewarding systems on top of the metrics are also recommended, but always
with a specific focus on fostering some actions such as pushing
developers to commit their first pull request[^1]. The point about
having metrics is that people can cheat on them, so when fostering
specific behaviors, those should be use in short periods of time to
help developers to get used to some way of developing. The most
recommended use of metrics is to track the performance of the whole
community and how to avoid bottlenecks and actions that may delay their
activity.

The approach presented in this report follows the GQM approach
(Goal-Question-Metric)[^2]. This consists of declaring the goal(s) of a
specific decision, then state a set of questions that fit in that goal,
and finally come back with a list of metrics that answer each of the
proposed questions.

As InnerSource has a different meaning depending on the organization
where it is deployed, InnerSource may have different goals. However,
there are some goals that are usually required across organizations and
that can be divided into these main groups[^3]:

-   Improve **code quality** through continuous integration (CI). Open
    source projects are used to CI and peer review process. And
    specifically having many eyes to any piece of code going to master
    help a lot to detect potential issues in advance. It has been
    measured that having code review in your process helps up to the
    point of saving half of the potential spending when maintaining the
    software[^4]. On the other hand, CI allows to automate checks that
    were usually done by human beings, such as unit testing, regression
    tests, style checkers and others.

-   Decrease **time to market**. As silos are broken within the
    organization, there are developers and business units across the
    organization that are willing to work on the same topic. And this
    helps to increase the velocity of the development process.

-   Allow **innovation** within developers. Developers are now allowed
    to collaborate with others and create their own social networks with
    other business units. This collaboration helps to bring new points
    of view to the same problem what allows to bring innovation to the
    same problem. Developers can easily now create new repositories
    under some rules, having those projects as incubators and get
    traction from other developers that may participate in such project
    at some point. Do-ocracy could be also part of the process.

-   Reduce development and maintenance **costs**. Maintenance is reduced
    to the decrease of business units working on the same topic and this
    cost is now shared among all of them. And this applies to the
    development and maintenance point of view. Any business unit
    interested in participating in a project as their goals are aligned
    to such project may provide resources.

-   And last but not least, allowing developers to work on the topics
    they feel are important for the organization or on their own
    interest help them to be more comfortable. InnerSource helps to
    improve the retention of the good developers for the organizations,
    but also helps in the recruitment process as the organization is
    seen as innovative and listen to developers needs. This helps to the
    general **engagement** in the organization.
