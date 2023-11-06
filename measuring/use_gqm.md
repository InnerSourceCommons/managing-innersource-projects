# Use Goals, Questions, and Metrics

*An overview of the Goals, Questions, and Metrics (GQM) catalog.*

This page works better in GitHub; [click here](https://bit.ly/3tOrsbO).

```mermaid
graph LR;
    subgraph GQM[Goals, Questions, Metrics]
        find-projects[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/goals/find-projects.md'>Find Projects</a>] --> who-uses[Who Uses]
        reduce-duplication[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/goals/reduce-duplication.md'>Reduce Duplication</a>] --> who-uses[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/questions/who-uses.md'>Who Uses</a>]
        who-uses --> usage-count[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/metrics/usage-count.md'>Usage Count</a>]
        find-projects --> who-contributes
        who-contributes[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/questions/who-contributes.md'>Who Contributes</a>] --> code-contributions[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/measuring/metrics/code-contributions.md'>Code Contributions</a>]
    end
    subgraph Legend
        direction TB

        goal[Goal]
        question[Question]
        metric[Metric]

        classDef goals stroke:green,stroke-width:2px;
        class goal,find-projects,reduce-duplication goals

        classDef questions stroke:orange,stroke-width:2px;
        class question,who-uses,who-contributes questions

        classDef metrics stroke:purple,stroke-width:2px;
        class metric,code-contributions,usage-count metrics
    end
```

Add your goals, questions, and metrics into this graph!  It will help you to see how others approach and interact with what you are doing.
You may get new ideas of what metrics answer the questions you have or what additional goals your questions can support.
See [CONTRIBUTING.md#metrics].

[CONTRIBUTING.md#metrics]: https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/main/CONTRIBUTING.md#metrics
