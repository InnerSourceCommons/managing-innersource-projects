# Use Goals, Questions, and Metrics


*An overview of the GQM catalog.*

```mermaid
graph LR;
reduce-duplication[Reduce Duplication] --> who-uses[Who Uses];
who-uses --> usage-count[Usage Count];
click reduce-duplication href "https://jeffs-organization-3.gitbook.io/managing-inner-source-projects/use_gqm/goals/reduce-duplication" "We can see how many times an InnerSource project is reused.  If there is extra information attached to that usage (like which business unit is the user) then we can see how widely across the company an InnerSource project is used." _blank;
usage-count --> reduce-duplication[Reduce Duplication];
```

## Goals

* [Reduce Duplication](../goals/reduce_duplication.md)  

## Questions

* [Who uses the InnerSource project?](../questions/who-uses.md)

## Metrics

* [Usage Count](../metrics/usage_count.md)
