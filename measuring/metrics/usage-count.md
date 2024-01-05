[⬑ back to the overall graph](../use_gqm.md)

# **Metric:** Usage count

**Synopsis**: Count how many times the InnerSource project is used.
Gain additional insight by gathering metadata on these usages such as business unit or time frame.
With this additional metadata we can see how lopsided or even the usage is spread across the company and across time.

**Unit of Measurement**: Ordinal number.

**Interpretation**: Higher absolute usage count is generally better.
Higher diversity of usage across business unit or time frame is generally better.

**Measuring**

If the project is an API and requires caller authentication, then read the API logs to determine the list of callers.

If the project is a module (or package), then scan your source control system for files that list out dependencies for a package manager to install.
Here is a list of [many package managers](https://github.com/oss-review-toolkit/ort#analyzer).
Look in those dependencies for usage of your InnerSource project.
* The [ORT](https://github.com/oss-review-toolkit/ort) project will parse out these dependencies for you.
* [Snyk](https://snyk.io/) is a security tool that your organization may already use.
As part of its operation, it already parses out these dependencies.
This information is exposed via [Snyk API](https://snyk.docs.apiary.io/#reference/dependencies).
