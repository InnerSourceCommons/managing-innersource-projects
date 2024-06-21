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
    reduce-duplication.md[Reduce duplication]
    adoption-trend.md[What is the InnerSource adoption trend?]
    who-contributes.md[Who contributes to the InnerSource project?]
    who-uses.md[Who uses the InnerSource project?]
    code-contributions.md[Code contributions]
    contribution-distance.md[Contribution Distance]
    number-of-innersource-repositories.md[Number of InnerSource repositories]
    usage-count.md[Usage count]
    %% end nodes

    %% begin edges
    find-projects.md-->who-uses.md
    find-projects.md-->who-contributes.md
    reduce-duplication.md-->who-uses.md
    adoption-trend.md-->number-of-innersource-repositories.md
    who-contributes.md-->code-contributions.md
    who-contributes.md-->contribution-distance.md
    who-uses.md-->usage-count.md
    %% end edges

    %% begin clicks
    click find-projects.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/goals/find-projects.md" "Find InnerSource Projects"
    click reduce-duplication.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/goals/reduce-duplication.md" "Reduce duplication"
    click adoption-trend.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/questions/adoption-trend.md" "What is the InnerSource adoption trend?"
    click who-contributes.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/questions/who-contributes.md" "Who contributes to the InnerSource project?"
    click who-uses.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/questions/who-uses.md" "Who uses the InnerSource project?"
    click code-contributions.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/metrics/code-contributions.md" "Code contributions"
    click contribution-distance.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/metrics/contribution-distance.md" "Contribution Distance"
    click number-of-innersource-repositories.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/metrics/number-of-innersource-repositories.md" "Number of InnerSource repositories"
    click usage-count.md "https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/metrics/usage-count.md" "Usage count"
    %% end clicks

  end
      subgraph Legend
        direction TB

        goal[Goal]
        question[Question]
        metric[Metric]

        classDef goals stroke:green,stroke-width:2px;
        class goal,find-projects.md,reduce-duplication.md goals

        classDef questions stroke:orange,stroke-width:2px;
        class question,adoption-trend.md,who-contributes.md,who-uses.md questions

        classDef metrics stroke:purple,stroke-width:2px;
        class metric,code-contributions.md,contribution-distance.md,number-of-innersource-repositories.md,usage-count.md metrics
      end  
  
```

Add your goals, questions, and metrics into this graph!  It will help you to see how others approach and interact with what you are doing.
You may get new ideas of what metrics answer the questions you have or what additional goals your questions can support.
See [CONTRIBUTING.md#metrics].

[CONTRIBUTING.md#metrics]: https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/CONTRIBUTING.md#metrics
