# **Metric:** Usage count

**Synopsis**: Count how many times the InnerSource project is used.
Gain additional insight by gathering metadata on these usages such as business unit or timeframe.
With this additional metadata we can see how lopsided or even the usage is spread across the company and across time.

**Scale/UoM**: Ordinal (I think 😆).

**Interpretation**: Higher absolute usage count is generally better.
Higher diversity of usage across business unit or timeframe is generall better.

**Measuring**

If the project is an API and requires caller authentication, then read the API logs to determine the list of callers.

If the project is a module (or package), then scan your source control system for files that list out dependencies for a package manager to install.
Here is a list of [many package managers](https://github.com/oss-review-toolkit/ort#analyzer).
Look in those dependencies for usage of your InnerSource project.

If the project is a UI and requires login, then read the project logs to determine the list of users.
