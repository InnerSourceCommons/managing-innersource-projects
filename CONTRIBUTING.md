# How to contribute

This book is built as a [Gitbook book](https://gitbook.com). This is written
using [Markdown syntax](https://www.gitbook.com/book/gitbookio/markdown/).
This is maintained under the [InnerSource Commons' GitHub account](https://github.com/innersourcecommons) in the
[Managing Inner Source Projects repository](https://github.com/innersourcecommons/managing-inner-source-projects).

Thus you can follow the usual contribution process in GitHub through
[Pull Requests](https://help.github.com/articles/about-pull-requests/). You can
see for instance the pull requests open and closed at this point in time and for
this repository at https://github.com/innersourcecommons/managing-inner-source-projects/pulls .

If you want to share an idea, comment or feature request, you can also open an issue
in the [GitHub issues tracking for this repository](https://github.com/innersourcecommons/managing-inner-source-projects/issues).

Please be aware that all of your contributions will be opened by default and
that those will be licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

## Metrics

This book uses the [Goal-Question-Metric] approach to documenting InnerSource metrics.
[Goals], [questions], and [metrics] are kept in separate files with markdown links between them indicating which are related to one other.
The full graph of relationships is visible in this [graph].

Add in your scenarios by copying this [goal template], [question template], and/or [metric template], filling them out, and submitting them in pull request.
After successful merge, a [Trusted Committer](https://github.com/orgs/InnerSourceCommons/teams/ispo-working-group-trusted-committers) will manually[^1] add those to the [graph].
If interested, feel free to [edit the MermaidJS source] of the graph on your own!

By adding in your scenarios to the graph, you will be able to see how others approach and interact with them.
You may get new ideas of what metrics answer the questions you have or what additional goals your questions can support.

## Guidelines

When using titles in Markdown, use # for main title, ## for the second header title, etc. It's just to follow the same style :).

[^1]: [#37](https://github.com/InnerSourceCommons/managing-inner-source-projects/issues/37) will automate the addition of new goals, questions, and metrics to the graph.
At that time this manual step will no longer be needed.

[Goal-Question-Metric]: https://en.wikipedia.org/wiki/GQM
[goals]: https://github.com/InnerSourceCommons/managing-inner-source-projects/tree/main/measuring/goals
[questions]: https://github.com/InnerSourceCommons/managing-inner-source-projects/tree/main/measuring/questions
[metrics]: https://github.com/InnerSourceCommons/managing-inner-source-projects/tree/main/measuring/metrics
[goal template]: https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/goals/gqm_goal_template.md
[question template]: https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/questions/gqm_question_template.md
[metric template]: https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/metrics/gqm_metric_template.md
[edit the MermaidJS source]: https://github.com/InnerSourceCommons/managing-inner-source-projects/edit/main/measuring/use_gqm.md
[graph]: https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/use_gqm.md
