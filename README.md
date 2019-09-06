# So you want to Onboard a DevOps Practitioner

Author: Martin Jackson - [@actionjack](https://twitter.com/actionjack)

[![Build Status](https://travis-ci.org/actionjack/so-you-want-to-onboard-a-devops-engineer.svg?branch=master)](https://travis-ci.org/actionjack/so-you-want-to-onboard-a-devops-engineer)

At the moment everyone seems to be so concerned with recruiting DevOps Engineers but I feel the process of on-boarding them is still very hit and miss especially in busy organisations.

> “Suffering increases in proportion to knowledge of a better way.”
>> Jim Hickstein

## Making it easy to get work done from day one

Reduce the time spent learning the peculiarities of complex environments rather than improving or iterating them, with a dedication to making every engineer effective in the shortest possible amount of time.

Here is some guidance on how to make your environment easier to onboard.

## Basics
<summary>The raw basics</summary>

* Have internet access sorted out for new starts or let them know if there isn't any.
* Locker access (if you supply lockers for hot-desk environments).
* Let security know that they are coming.
* Let people know if they are required to use their own equipment or are being supplied with specified equipment and what Operating System.


### Culture
<summary>Aim to create a culture of empathy and psychological safety </summary>

> "It's possible for good people, in perversely designed systems, to casually perpetrate acts of great harm on strangers, sometimes without ever realising it."
> > [Ben Goldacre](http://www.badscience.net/), [Bad Pharma](https://www.amazon.co.uk/dp/0865478007?tag=contindelive-20), p. xi

* Embrace the standard of [The Humble Learner](https://www.linkedin.com/pulse/myth-sufficiently-smart-engineer-aaron-blohowiak/), The Humble Learner accepts the limits of human capacity while seeking to grow their technical and empathetic skills
* Do not create a [Blame and Train](https://www.snafucatchers.com/single-post/2017/06/04/BorkedTheDatabaseCase) culture where mistakes are handled by blaming and shaming the employee (and sometimes terminating their employment) and then train other employees using the incident as an example
  * Instead recognise each failure as what it is, a lesson, identify what went wrong and how we can ensure it does not go wrong again (this does not mean produce lots of documentation)
* Introduce the new engineer(s) to the relevant people within the organisation
* Remember not everyone maybe as smart as you are, they may be missing
  * Context / Situational awareness (how did we get from here to there?)
  * Tribal Knowledge
  * Culture
* What are the Preferred practices or ["Design Principles"](https://www.gov.uk/design-principles)?
* Listen to their point of view. Bringing in a new person is a prime opportunity to find out where the code or process needs improvement
* Test your mentoring and on boarding process to flush out any shortfalls by getting the last person who joined to mentor the new joiner.
* Make your documentation inclusive e.g. this document is parsed using [alex](http://alexjs.com/) in order to catch insensitive and inconsiderate writing.
* Be wary of not overloading new starts with too much information. There is often quite a lot to learn (even more than you think), instead provide a set of useful links so people can research at their own pace.


### Have up to date Documentation
<summary>Make it easy to understand and do the things</summary>

It's important to either have or do the following:

* Regularly tidy your documentation, old documents should be removed, outdated ones updated, if you touch it then update it
* High-Level logical Architecture. E.g. ideally written in a Git friendly format:
  * [SVG](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) diagrams in [github](https://github.com/blog/1902-svg-viewing-diffing) so you can see the infrastructure changes over time
  * [Graphviz description language](http://www.graphviz.org/content/dot-language)
  * [Graphvizo](http://gravizo.com/)
* An overview of the company’s infrastructure.
* Systems integration points and their third party dependencies
* A intranet/wiki or enterprise social network to Learn about different teams, key members with pictures. On day one, one can easily get overwhelmed with lots of new names and faces.
* Have documentation for your alerts. If something is important enough to page the on-call person about, it's important enough to have a runbook entry about it. If you alert because _foo queue is too long_, there should be a [runbook](http://holyhandgrenade.org/blog/2011/08/runbooks-are-stupid-and-youre-doing-them-wrong/) entry describing how to fix it. 
  * At one client I worked with we actually managed to configure the monitoring system so the alerts themselves actually had a link to the relevant runbook entry :+1: :clap:
* Create a Glossary of Terms [e.g. a Minipedia] for describing any organisation specific acronyms or terms
  * [Create an on-boarding wiki page (i.e. Confluence/Google Docs)](https://wiki.mozilla.org/Devops/onboarding)
  * :+1: For Open,online and easy to reach [checklists](https://github.com/annahsebok/onboarding-documents-1/blob/master/Checklists/team-based-checklists/devops-new-hire-checklist.md)
* Write your documentation as if it's going to be [open](https://www.gov.uk/design-principles#tenth) to public scrutiny someday.
* Have an easy to use and setup collection of shared resources e.g. bookmark file of URL links, .ssh/config files


### Operations

<summary>Make it easy to get shit done</summary>

> [“Complexity exacts a staggering tax on your humans. Good Ops engineers attempt to pay down that tax.”](https://twitter.com/bridgetkromhout/status/647333814411358208)
> >  [Charity Majors](https://twitter.com/mipsytipsy)

* Have all relevant accounts setup and ready
* Create [Operations Checklists](http://atulgawande.com/book/the-checklist-manifesto/) for your key processes
* Simplify and reuse as much of your architecture as possible
* Have your work structured so people can see what needs to be done i.e. Kanban board backlog or To Do lists
* Provide information regarding the applications that are maintained by the team and how to do the operations for those applications
* Make it difficult to make mistakes e.g
  * [protected branches e.g. to prevent force pushes to master](https://github.com/blog/2051-protected-branches-and-required-status-checks)
  * If you have code standards, don't just document them back them up with [Automated Code standards](https://medium.com/@biratkirat/step-4-automate-your-coding-standard-filip-van-laenen-5b1c486e4883) triggered by [CI checks](https://en.wikipedia.org/wiki/Continuous_integration) or [pre-commit hooks](https://githooks.com/)
* Ensure your naming conventions makes sense, if something is called build_X and it actually deploys_X then change the name to deploys_X if possible to reduce confusion
* With the above in mind nobody should be able to do something catastrophic to an environment unless they are determined on doing so i.e.
  * Make the right thing the easy thing to do by creating safety harnesses using build or scripting tools like the following list to do the most common tasks safety without the worry of screwing up:
    * [Make](https://www.gnu.org/software/make/)
    * [Gradle](https://gradle.org/)
    * [Rake](https://ruby.github.io/rake/)
    * [Thor](http://whatisthor.com/)
    * [Invoke](http://www.pyinvoke.org/)
    * [Fabric](http://www.fabfile.org/)
    * [Paver](https://github.com/paver/paver)
  * Put safe  conditionals in your configuration management to do be able to test runs without the worry of screwing up e.g. Ansible tasks:

```
- name: “Do something really Dangerous"
  command: /sbin/something —could —be —dangerous --if --run --it --in --prod
  when: testmode == “Off"
```


### Processes

<summary>How should we do stuff</summary>

* Have [Shovel Ready](https://en.wikipedia.org/wiki/Shovel_ready) work for new starters, create a backlog of work that be be easily done by a new starter:
  * Ideally work that:
    * is well defined,
    * is easily explained,
    * requires some research,
    * adds value and;
    * is not grunt work e.g. documentation.
* Assign your new start an on boarding buddy/mentor
* [Pair](https://www.agilealliance.org/glossary/pairing/) with new start as soon and as often as possible
* When [and if] you do a Retro, then base it against a known good baseline i.e.
  * If you are doing production deploys in the wee hours of the night and it goes successfully, remember this is not necessarily reflect a **good** deployment.
* Put as much detail into tasks / stories as possible including assumptions, reference information, existing implementations, attempt to narrow down the acceptance criteria in order to prevent unnecessary research or rework.
* Avoid on boarding during crunch times (important or critical planned releases)
* Ideally have your accounts linked with some central or shared directory e.g. Github/Google/LDAP so your new starters don’t have to remember 101 user/password combinations
* In your alerting system put context sensitive help that points to a helpful [runbook](https://en.wikipedia.org/wiki/Runbook)
* Configuration management test modes i.e. testing_mode on
  * Blocking infrastructure tests or linters to catch mistakes early, e.g.
    * [Yamllint](https://github.com/adrienverge/yamllint)
    * [Test Infra]( https://github.com/philpep/testinfra)
    * [Inspec](http://inspec.io/)
    * [Serverspec](http://serverspec.org/)
    * [Ansible --syntax-check](https://raymii.org/s/tutorials/Ansible_-_Playbook_Testing.html)
* Add or invite individual to any relevant [Slack](https://slack.com/), [IRC](https://en.wikipedia.org/wiki/Internet_Relay_Chat) channels or Mailing lists.
* Provide information regarding relevant processes e.g.
  * Incident, problem and change management
  * Deploying changes / releases to the different environments
  * Ordering infrastructure / tools
  * Authorization for tools & applications
  * Use of test environments and creating and using testdata
* Have [Clean code](https://blog.goyello.com/2013/01/21/top-9-principles-clean-code/) It really helps if your code is good, is sensibly organized and structured. If the code base is large, it should be broken apart in understandable segments
* Create a [Papercuts.md](https://gist.github.com/actionjack/ee8408733b756fc101aa22488bb464a1) in your Repos, These are a log of things that have hurt us in the current environment, they may not be actual [technical debt](https://en.wikipedia.org/wiki/Technical_debt),however they could be things for us to discuss and possibly fix in the future.
* If you have adopted a particular [coding style guideline](https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Coding_Style) on your project then document or reference it for new joiners to easily reference and adopt
* [Story kickoffs](https://elabor8.com.au/how-to-introduce-story-kickoffs-to-your-team/) can be extremely useful to new starters by helping them getting to the mindset of the team, identify areas that aren't immediately visible in the code base and generally reduce constant rework due to missing acceptance criteria.


### Version control management

<summary>How do we safely change things</summary>

* Document your coding standards and strategies in the open e.g.
  * [Version control & branch strategy](https://www.infoq.com/articles/agile-version-control)
  * Code review process
  * Release handling management
* Have an Up to date [README](https://thejunkland.com/blog/how-to-write-good-readme.html) documentation in all repos
  * :+1: have [sequence diagrams](https://en.wikipedia.org/wiki/Sequence_diagram) in all repos e.g. [plantuml](http://plantuml.com/) or [mermaid](https://mermaidjs.github.io/)
  * :+1: have [Architecture Decision Records](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) in your [repos](https://github.com/npryce/adr-tools)
  * :+1: Have a well [structured git history](http://www.annashipman.co.uk/jfdi/good-pull-requests.html) in your repos
* If at all possible make [Pull Requests](https://help.github.com/articles/about-pull-requests/) a first class citizen nothing is more demoralising than having a Pull Request sitting around without [feedback](http://engineering.leadgenius.com/post/129799259649/the-pull-request-review-checklist) and a chance of being merged.
* Good [Pull Requests](https://github.com/alphagov/frontend/pull/784) can also be an excellent teaching tool for new starts or old hands alike, a good PR tell's you what was implemented, why and how so if you (or anyone else) need to do something similar in the future it will make things a lot easier than relying on your memory or tribal knowledge.
* If you use [slack](https://slack.com) or something similiar consider adding a notification bot for pull request and push activities, e.g. for [bitbucket](https://marketplace.atlassian.com/apps/1213042/slack-notifications-plugin?hosting=server&tab=overview) or [github](https://github.com/Talkdesk/pr-police) to notify your colleagues that a Pull Request is ready for review.


### Development environments

<summary>How do we safely change things</summary>

* Have at least a minimally functioning [Continuous Integration setup](https://www.thoughtworks.com/continuous-integration)
* Make it easy to set up an easy to use cross platform or run a local environment that does not mess up what’s currently there e.g. in a [virtual machine](https://medium.com/@jevgenijdmitrijev/how-to-creating-a-ubuntu-development-environment-with-help-of-virtual-box-f2cc198e1c63)
  * [pyenv](https://github.com/pyenv/pyenv), [jenv](http://www.jenv.be/), [Rbenv](https://github.com/rbenv/rbenv), [venv](https://docs.python.org/3/library/venv.html), [virtualenv](https://virtualenv.pypa.io/en/stable/), [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv), [pipenv](https://pipenv.readthedocs.io/en/latest/)
  * :+1: Vagrant boxen in order to test locally!
  * :+1: Docker containers
  * :+1: The ability to create individualized development environments in the cloud e.g. [AWS](https://aws.amazon.com/), [Azure](https://azure.microsoft.com), [Google](https://cloud.google.com/), [Digital Ocean](https://www.digitalocean.com/), etc in order to safely deploy, iterate and test in a separate (and safe) environment


## Useful links

<details>
<summary>Would you like to know more?</summary>

* [Onboarding and Mentoring Apprentices with DevOps Culture](https://vimeo.com/115484860) by [Mercedes Coyle](https://twitter.com/benzobot)

* [How to Onboard Software Engineers](http://blog.fogcreek.com/how-to-onboard-software-engineers-interview-with-kate-heddleston/) Interview with [Kate Heddleston](https://twitter.com/heddle317)

* [Onboarding New Hires with Trello](https://medium.com/@Liz_Hall1/onboarding-new-hires-with-trello-ecc87e87ffd5) by [Elizabeth Hall](https://twitter.com/Liz_Hall1)

* [If you want your new engineers to hit the ground running, give them a soft landing](https://blog.asana.com/2013/02/onboarding-new-engineers/) by [Greg Slovacek](https://twitter.com/slobak)

* [Building world class Ops teams](https://youtu.be/l5vKPZW-m0E?list=PLK4VB0cauli7-_RIvpmn651ePtddw9_Fp) by [Charity Majors](https://twitter.com/mipsytipsy)

* [Ops and Operability](https://vimeo.com/205526857) by [Dan North](https://twitter.com/tastapod)

* [Engineering a culture of psychological safety](https://blog.intercom.com/psychological-safety/)

* [GOV.UK Platform as a Service Team Manual](https://team-manual.cloud.service.gov.uk/#paas-team-manual)

* [Empathy: The Essence of DevOps](https://medium.com/@jeffsussna/empathy-the-essence-of-devops-572ed2a7f42b)

* [The (written) unwritten guide to pull requests](https://www.atlassian.com/blog/git/written-unwritten-guide-pull-requests)

* [Mike Pountney's Pull Request Etiquette](https://gist.github.com/mikepea/863f63d6e37281e329f8)

</details>

## See a problem here

See a problem? Need something clarified? Raise and Issue and I'll try and fix it.

## Contributing

I'm open to [well structured Pull Requests](http://www.annashipman.co.uk/jfdi/good-pull-requests.html)

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License


[MIT][license] © [Martin Jackson][author]

<!-- Definitions. -->

[license]: LICENSE

[author]: http://uncommonsense-uk.com/
