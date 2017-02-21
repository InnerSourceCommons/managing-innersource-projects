Goal-Question-Metric Approach
=============================

The Goal Question Metric approach defines a mechanism to provide an
umbrella that helps to define and detailed software metrics. This can be
easily extended to other backgrounds, although inner source method
basically fits in this type of evaluation.

As stated in the original paper: “Any engineering process requires
feedback and evaluation. Software development is an engineering
discipline and measurement is an ideal mechanism for feedback and
evaluation. The measurement and information... helps in the
understanding and control of the software processes and products. It
helps in making intelligent decision and improving over time. But
measurement must be focused, based upon goals and models. We need to
establish goals for the various software processes and products and
these goals should be measurable, driven by the appropriate
models.”[^6]. The GQM has been extensively used in academia and the
industry as a method to detail metrics useful for a set of pre-defined
goals.

In the specific case of inner source, and summarizing, the following can
be seen as some of the most important goals for inner source:

-   Goal 1. Improve code quality through CI and peer review

-   Goal 2. Decrease time to market

-   Goal 3. Allow innovation within developers

-   Goal 4. Reduce development and maintenance costs

-   Goal 5. Improve engagement within the organization

Then, each of the goals may have one or more questions that will answer
those specific goals. And those are particularly related to the stage
the process is. Although we may have the same goal when starting to
apply inner source within an organization and when that method is fully
established, the related questions are potentially different.

Let’s focus on Goal 5: improve engagement within the organization. We
may start this process from a hierarchical organization where silos of
developers exist and agile is used as their main methodology for
software development. The specific question for a starting situation
would be to understand if specific policies, such as opening the
infrastructure, allowing public discussion, having design meetings and a
long tail of activities fostering interactions among developers are
actually working. On the other hand, in an inner-sourced organization,
the question would be to keep improving the engagement or at least have
a stable software development process with this respect.

**Starting from scratch**: Question 1: How many new attracted developers
are participating in the inner sourced projects?

**Working on an inner-sourced community**: Question 1: Is the attraction
of new developers improving over time? And this question leads to
Question 2: Are we retaining the new developers? And this finally leads
to Question 3: How long does it take for a developer to leave the
community?

It is clear that starting from scratch needs to focus on the initial
stages of the process improvement, while in a mature process, there are
other questions of importance.

And finally metrics. These are linked to each of the questions and may
answer some of them at the same time. If we go for the four questions,
we may define the following metrics:

-   Q1. How many new attracted developers are participating in the inner
    sourced projects?

    -   M1. Number of newcomers.

    -   M2. Relative number of newcomers out of the total number of
        developers.

-   Q2. Is the attraction of new developers improving over time?

    -   M1. Number of newcomers.

    -   M2. Relative number of newcomers out of the total number of
        developers

    -   M3. Slope of the tendency of newcomers coming to the project

-   Q3. Are we retaining the new developers?

    -   M4. Number of developers still developing that entered during
        the last year.

    -   M5. Relative number of retained developers out of the newcomers
        during the last year.

-   Q4. How long does it take for a developer to leave the community?

    -   Median of the total time of all of the developers since their
        first commit till their last commit.
