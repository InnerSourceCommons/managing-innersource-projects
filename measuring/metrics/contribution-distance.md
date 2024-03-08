[⬑ back to the overall graph](../use_gqm.md)

# **Metric:** Contribution Distance

**Synopsis**: Number of organizational hops from owning team to contributing team
It can be useful to know not only when contributions to a repository are made, but the distance between the 
owning team and contributing individual in terms of organizational distance. 

**Unit of Measurement**: manager levels
This is measured in terms of number of managers you have to move up in the hierarchy before you can go down to 
the contribution team. For example, if the manager in common of both parties is two jumps up the chain, 
then the distance is 2. Most contributions will be in-team and therefore are 0 distance. For a contribution
to be "InnerSource", it has to be at least 1 distance.

**Interpretation**: Contribution distance is a measurable proxy for collaboration 
A repository with a pull request that has a high contribution distance is likely to be reflective of a 
repository with more impact and more effective set up for collaboration. Repositories that have pull requests
with a high contribution distance are on average probably more likely to be useful to others than repositories 
with only a single short distance collaboration. 

Collaboration distance and counts combined can also tell you something about the type of value a repository provides. 
A repository with many pull requests of 1-2 distance is likely to be reflective of partner teams working closely 
together to solve a shared problem. A repository with many pull requests of 3-4 distance but only a single 
pull request from each contributor is likely to be reflective of a repository that is being used for information 
sharing or as a reference. Contribution distance is a metric that can be combined with others to build up 
a picture of the community around each repository where InnerSource contribution behaviors are occurring. 

**Measuring**

Measuring this metrics requires a mapping of your organization's hierarchy and a way to define whether the person 
that submits each issue or pull request is a member of the owning team or not. There are likely multiple 
ways to do each of these tasks and the best way will depend on your organization.

As an example, Microsoft determines if an individual is on the "owning team" by finding the individual that approved 
the majority of pull requests and then finding the manager that is accountable for that individual. 

One possible pitfall is that manager and team relationships change over time. For this reason, it can be preferred 
to measure contribution distance soon after the pull request is merged and then store the distance as 
manager relationships will change over time degrading the data quality. 
