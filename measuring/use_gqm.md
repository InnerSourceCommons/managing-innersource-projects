# Use Goals, Questions, and Metrics

*An overview of the Goals, Questions, and Metrics (GQM) catalog.*

This page works better in GitHub; [click here](https://bit.ly/3tOrsbO).

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

      find-projects.md[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring//goals/find-projects.md'>Find InnerSource Projects</a>]
    reduce-duplication.md[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring//goals/reduce-duplication.md'>Reduce duplication</a>]
    who-contributes.md[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring//questions/who-contributes.md'>Who contributes to the InnerSource project?</a>]
    who-uses.md[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring//questions/who-uses.md'>Who uses the InnerSource project?</a>]
    code-contributions.md[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring//metrics/code-contributions.md'>Code contributions</a>]
    usage-count.md[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring//metrics/usage-count.md'>Usage count</a>]
    find-projects.md-->who-uses.md
    find-projects.md-->who-contributes.md
    reduce-duplication.md-->who-uses.md
    who-contributes.md-->code-contributions.md
    who-uses.md-->usage-count.md
  end
      subgraph Legend
        direction TB

        goal[Goal]
        question[Question]
        metric[Metric]

        classDef goals stroke:green,stroke-width:2px;
        class goal,find-projects.md,reduce-duplication.md goals

        classDef questions stroke:orange,stroke-width:2px;
        class question,who-contributes.md,who-uses.md questions

        classDef metrics stroke:purple,stroke-width:2px;
        class metric,code-contributions.md,usage-count.md metrics
      end  
  
```

Add your goals, questions, and metrics into this graph!  It will help you to see how others approach and interact with what you are doing.
You may get new ideas of what metrics answer the questions you have or what additional goals your questions can support.
See [CONTRIBUTING.md#metrics].

[CONTRIBUTING.md#metrics]: https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/CONTRIBUTING.md#metrics
