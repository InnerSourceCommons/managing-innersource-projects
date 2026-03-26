# Use Goals, Questions, and Metrics

*An overview of the Goals, Questions, and Metrics (GQM) catalog.*

Right-click on any node representing a goal, question, or metric to open a new tab with more detailed information.

<!--- 

WARNING: Changes to this graph are overwritten by a GitHub workflow. 

To update this graph, add new goals, questions, and metrics to the following directores.

./goals
./questions
./metrics

A GitHub workflow will automatically update this graph with your changes.

See this README.md file for more information about how to add goals, questions, and metrics.

./gqm_gen/README.md

To test your changes see this README.md file.

../scripts/gqm_gen/README.md

--->

```mermaid
graph LR;
  subgraph GQM[Goals, Questions, Metrics]
  %% begin nodes
    find-projects.md[Find InnerSource Projects]
    index.md[InnerSource Goals]
    reduce-duplication.md[Reduce duplication]
    adoption-trend.md[What is the InnerSource adoption trend?]
    index.md[InnerSource Questions]
    who-contributes.md[Who contributes to the InnerSource project?]
    who-uses.md[Who uses the InnerSource project?]
    code-contributions.md[Code contributions]
    contribution-distance.md[Contribution Distance]
    index.md[InnerSource Metrics]
    number-of-innersource-repositories.md[Number of InnerSource repositories]
    usage-count.md[Usage count]
  %% begin edges
    find-projects.md-->who-uses.md
    find-projects.md-->who-contributes.md
    index.md-->find-projects.md
    index.md-->reduce-duplication.md
    reduce-duplication.md-->who-uses.md
    adoption-trend.md-->number-of-innersource-repositories.md
    index.md-->adoption-trend.md
    index.md-->who-contributes.md
    index.md-->who-uses.md
    who-contributes.md-->code-contributions.md
    who-contributes.md-->contribution-distance.md
    who-uses.md-->usage-count.md
    index.md-->code-contributions.md
    index.md-->contribution-distance.md
    index.md-->number-of-innersource-repositories.md
    index.md-->usage-count.md
  %% begin clicks
    click find-projects.md "goals/find-projects.html" "Find InnerSource Projects"
    click index.md "goals/index.html" "InnerSource Goals"
    click reduce-duplication.md "goals/reduce-duplication.html" "Reduce duplication"
    click adoption-trend.md "questions/adoption-trend.html" "What is the InnerSource adoption trend?"
    click index.md "questions/index.html" "InnerSource Questions"
    click who-contributes.md "questions/who-contributes.html" "Who contributes to the InnerSource project?"
    click who-uses.md "questions/who-uses.html" "Who uses the InnerSource project?"
    click code-contributions.md "metrics/code-contributions.html" "Code contributions"
    click contribution-distance.md "metrics/contribution-distance.html" "Contribution Distance"
    click index.md "metrics/index.html" "InnerSource Metrics"
    click number-of-innersource-repositories.md "metrics/number-of-innersource-repositories.html" "Number of InnerSource repositories"
    click usage-count.md "metrics/usage-count.html" "Usage count"
  end
  subgraph Legend
    direction TB
    goal[Goal]
    question[Question]
    metric[Metric]

    classDef goals stroke:green,stroke-width:2px;
    class goal,find-projects.md,index.md,reduce-duplication.md goals

    classDef questions stroke:orange,stroke-width:2px;
    class question,adoption-trend.md,index.md,who-contributes.md,who-uses.md questions

    classDef metrics stroke:purple,stroke-width:2px;
    class metric,code-contributions.md,contribution-distance.md,index.md,number-of-innersource-repositories.md,usage-count.md metrics
  end
```

Add your goals, questions, and metrics into this graph!  It will help you to see how others approach and interact with what you are doing.
You may get new ideas of what metrics answer the questions you have or what additional goals your questions can support.
See [CONTRIBUTING.md#metrics].

[CONTRIBUTING.md#metrics]: https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/CONTRIBUTING.md#metrics
