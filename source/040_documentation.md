## Documentation

<summary>Make it easy to understand and do the things</summary>

> “Stale documentation is not only misleading, it is positively harmful.”

>> Riona MacNamara (@rionam)

It's important to either have or do the following:

* Regularly tidy your documentation, old documents should be removed, outdated ones updated, if you touch it then update it
  * Consolidate your documentation, nothing is so disheartening as searching your Wiki for "Password Management Policy" and 40+ search results coming up :-1:
* Have a High-Level logical Architecture. E.g. ideally written in a Git friendly format:
  * [SVG](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) diagrams in [github](https://github.com/blog/1902-svg-viewing-diffing) so you can see the infrastructure changes over time
  * [Graphviz description language](http://www.graphviz.org/content/dot-language)
  * [Graphvizo](http://gravizo.com/)
* An overview of the company’s infrastructure.
* Systems integration points and their third party dependencies
* A intranet/wiki or enterprise social network to Learn about different teams, key members with pictures. On day one, one can easily get overwhelmed with lots of new names and faces.
* Have documentation for your alerts. If something is important enough to disturb the on-call person about, it's important enough to have a runbook entry about it. If you alert because _foo queue is too long_, there should be a [runbook](https://web.archive.org/web/20191005043445/http://holyhandgrenade.org:80/blog/2011/08/runbooks-are-stupid-and-youre-doing-them-wrong/) entry describing how to fix it.
  * At one client I worked with we configured the monitoring system so the alerts themselves actually had a link to the relevant runbook entry :+1: :clap:
* Create a Glossary of Terms [e.g. a Minipedia] for describing any organisation specific acronyms or terms
  * [Create an on-boarding wiki page (i.e. Confluence/Google Docs)](https://wiki.mozilla.org/Devops/onboarding)
  * :+1: For Open,online and easy to reach [checklists](https://github.com/annahsgraves/onboarding-documents-1/tree/master/Checklists/team-based-checklists)
  * One cool thing that I have seen recently are [acronym decoder chatbots](https://wonderus.app/) for slack that watch for team acronyms and explain them real-time in the chat room
* Write your documentation as if it's going to be [open](https://www.gov.uk/design-principles#tenth) to public scrutiny someday.
* Have an easy to use and setup collection of shared resources e.g. bookmark file of URL links, .ssh/config files
* If possible keep your documentation as close to the code as possible (possibly as [Markdown](https://www.markdownguide.org/)) rather than referencing external resources like wikis or, use a [static site generator](https://www.markdownguide.org/getting-started#documentation) this way you are more likely to have up to date documentation, since you get immediate feedback when you do a review of code changes rather than having to separately review a PR and a Wiki Page. Some options are:
  * [mkdocs](https://www.mkdocs.org/),
  * [hugo](https://gohugo.io/),
  * [sphinx](https://docs.readthedocs.io/en/stable/intro/getting-started-with-sphinx.html) or
  * [Jekyll](https://jekyllrb.com/)
* If there are problems that you have to work around in your code then in the comments link to some sort of permanent record (e.g. a URL of a Jira story or [ADR](https://github.com/joelparkerhenderson/architecture_decision_record)) for why, the following code comment caused me to do a lot of running around (The `git blame' gave me a commit that lead to a PR that had zero details in it, authored by someone who could not remember why they put that in the code.):

  ```yaml
  instance_type: m4.4xlarge # Larger than this currently causes issues on our AMIs…
  ```

* what would have been more helpful would have been:

  ```yaml
  instance_type: m4.4xlarge # Larger than this type causes issues see REF-2019
  ```
