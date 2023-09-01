Use Goals Questions, and Metrics
=============================

```mermaid
graph LR
    reduce-duplication[Reduce Duplication] --> who-uses[Who Uses]

    click reduce-duplication "./goals/reduce-duplication.md" "We can see how many times an InnerSource project is reused.  If there is extra information attached to that usage (like which business unit is the user) then we can see how widely across the company an InnerSource project is used."
    
    who-uses --> usage-count[Usage Count]
    usage-count --> reduce-duplication[Reduce Duplication]
```
