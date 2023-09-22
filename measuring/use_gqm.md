# Use Goals, Questions, and Metrics

*An overview of the GQM catalog.*

```mermaid
graph LR;
find-projects[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/master/measuring/goals/find-projects.md'>Find Projects</a>] --> who-uses[Who Uses];
reduce-duplication[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/master/measuring/goals/reduce-duplication.md'>Reduce Duplication</a>] --> who-uses[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/master/measuring/questions/who-uses.md'>Who Uses</a>];
who-uses --> usage-count[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/master/measuring/metrics/usage-count.md'>Usage Count</a>];
find-projects --> who-contributes
who-contributes[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/master/measuring/questions/who-contributes.md'>Who Contributes</a>] --> code-contributions[<a href='https://github.com/InnerSourceCommons/managing-inner-source-projects/blob/master/measuring/metrics/code-contributions.md'>Code Contributions</a>];
```

## Goals

* [Find Projects](../goals/find_projects.md)  
* [Reduce Duplication](../goals/reduce_duplication.md)  

## Questions

* [Who contributes to the InnerSource project?](../questions/who-contributes.md)
* [Who uses the InnerSource project?](../questions/who-uses.md)

## Metrics

* [Code Contributions](../metrics/code-contributions.md)
* [Usage Count](../metrics/usage_count.md)
