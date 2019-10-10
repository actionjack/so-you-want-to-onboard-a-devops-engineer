# So you want to Onboard a DevOps Practitioner

Author: Martin Jackson - [@actionjack](https://twitter.com/actionjack)

[![Build Status](https://travis-ci.org/actionjack/so-you-want-to-onboard-a-devops-engineer.svg?branch=master)](https://travis-ci.org/actionjack/so-you-want-to-onboard-a-devops-engineer)

At the moment everyone seems to be so concerned with recruiting DevOps Engineers but I feel the process of on-boarding them and giving them the environment to succeed is still a very hit and miss affair, especially in busy organisations.

Also nobody (at least nobody I know...) wants to work in a difficult environment:
* Bad environments (and [broken cultures](https://www.forbes.com/sites/forbescoachescouncil/2018/06/21/toxic-corporate-culture-10-warning-signs-to-watch-for/#10af593499ec)) do not attract nor retain top talent. In fact it does the exact opposite.

> “Suffering increases in proportion to knowledge of a better way.”
>> Jim Hickstein

## Making it easy to get work done from day one
<summary>Simplify, simplify and after that simplify some more</summary>

> “Everything should be made as simple as possible, but no simpler.”
>> Albert Einstein

Reduce the time spent learning environments by building them to be simple to understand, with a focus on a making it possible for every engineer (new or old) to become effective in the shortest possible amount of time.

Here is some guidance on how to make your environment easier to onboard and keep the people working on them happy.

## Basics
<summary>The raw basics</summary>

> "The only way you can stay on top is to remember to touch bottom and get back to basics."
>> Shane Black

* Have internet access sorted out for new starts or let them know if there isn't any.
* Locker access (if you supply lockers for hot-desk environments).
* Let security know that they are coming.
* Let people know if they are required to use their own equipment or are being supplied with specified equipment and what Operating System.
* If you haven't already done so adopt some Group Chat software like [Slack](https://slack.com/), [Microsoft Teams](https://products.office.com/en-us/microsoft-teams/group-chat-software) or [Rocket Chat](https://rocket.chat/) this kind of software is beneficial to all and reduces pressure on key individuals because your questions go out to a group of people rather than target specific individuals who may be busy and under constant interruption.
  * If you do the above try and implement some [communications etiquette](https://hiverhq.com/blog/slack-etiquette/), for example when you answer someone create the answer in a thread so the questions, context, conversation and possibly solution are kept in the same place rather than being strewn throughout the chat history.


### Culture
<summary>Aim to create a culture of empathy and psychological safety </summary>

> "It's possible for good people, in perversely designed systems, to casually perpetrate acts of great harm on strangers, sometimes without ever realising it."
> > [Ben Goldacre](http://www.badscience.net/), [Bad Pharma](https://www.amazon.co.uk/dp/0865478007?tag=contindelive-20), p. xi

* Embrace the standard of [The Humble Learner](https://www.linkedin.com/pulse/myth-sufficiently-smart-engineer-aaron-blohowiak/), The Humble Learner accepts the limits of human capacity while seeking to grow their technical and empathetic skills
* Do not create nor foster a [Blame, Shame and Train](https://www.ehstoday.com/safety/your-safety-strategy-blame-shame-and-train) culture where mistakes are handled by openly blaming and shaming the employee (and sometimes terminating their employment) and then train other employees using the incident as an example
  * Instead recognise each failure as what it is, a lesson, identify what went wrong and how we can ensure it does not go wrong again (and no, this does not mean this is an excuse to produce lots more documentation:stuck_out_tongue_winking_eye:)
* Try to foster a culture of improvement, benchmark your organisation against some form of [maturity model](https://devopsadoptmeth.wordpress.com/method-description/devops-maturity-model/) to identify the gaps and attempt to close them.
* Introduce the new engineer(s) to the relevant people within the organisation
* Remember not everyone may be as smart as you are, they may be missing
  * Context / Situational awareness (how did we get from here to there?)
  * Tribal Knowledge (This is where our ancestors bodies were buried!)
  * Cultural awareness (How we do things around here)
  * [Technical Expertise in that specific problem domain](https://team-manual.cloud.service.gov.uk/team/orientation/#avoid-assuming-expertise)
  * The local Taxonomy - concepts and language does vary for work place to work place. e.g. pre-approved changes and standard changes many not necessarily mean the same thing from job to job.
* What are the Preferred practices or ["Design Principles"](https://www.gov.uk/design-principles)?
* Listen to their point of view. Bringing in a new person is a prime opportunity to find out where the code or process needs improvement
* Test your mentoring and on boarding process to flush out any shortfalls by getting the last person who joined to mentor the new joiner.
* Make your documentation inclusive e.g. this document is parsed using [alex](http://alexjs.com/) in order to catch insensitive and inconsiderate writing.
* Be wary of not overloading new starts with too much information. There is often quite a lot to learn (even more than you think), instead provide a set of useful links so people can research at their own pace.
* Write code that takes into account how future maintainers will feel reading it, let your code be [empathetic](https://www.benjaminjohnson.me/blog/empathetic-code/)


### Have up to date Documentation
<summary>Make it easy to understand and do the things</summary>

> “If it’s not documented, it didn’t happen.”
>> Every Regulatory Agency Inspector

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
* Have documentation for your alerts. If something is important enough to disturb the on-call person about, it's important enough to have a runbook entry about it. If you alert because _foo queue is too long_, there should be a [runbook](http://holyhandgrenade.org/blog/2011/08/runbooks-are-stupid-and-youre-doing-them-wrong/) entry describing how to fix it. 
  * At one client I worked with we actually managed to configure the monitoring system so the alerts themselves actually had a link to the relevant runbook entry :+1: :clap:
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
```
    instance_type: m4.4xlarge # Larger than this currently causes issues on our AMIs...
```
* what would have been more helpful would have been:

```
    instance_type: m4.4xlarge # Larger than this type causes issues see REF-2019
```



### Operations

<summary>Make it easy to get shit done</summary>

> [“Complexity exacts a staggering tax on your humans. Good Ops engineers attempt to pay down that tax.”](https://twitter.com/bridgetkromhout/status/647333814411358208)
> >  [Charity Majors](https://twitter.com/mipsytipsy)

* Have all relevant user accounts and access setup and ready
* Create [Operations Checklists](http://atulgawande.com/book/the-checklist-manifesto/) for your key processes
* Have your work structured so people can see what needs to be done i.e. Kanban board backlog or To Do lists
* Provide information regarding the applications that are maintained by the team and how to do the operations for those applications
* Make it difficult to make mistakes e.g
  * [protected branches e.g. to prevent force pushes to master](https://github.com/blog/2051-protected-branches-and-required-status-checks)
  * If you have code standards, don't __just document them__ back them up with [Automated Code standards](https://medium.com/@biratkirat/step-4-automate-your-coding-standard-filip-van-laenen-5b1c486e4883) triggered by [CI checks](https://en.wikipedia.org/wiki/Continuous_integration) or [pre-commit hooks](https://githooks.com/)
  * [Avoiding committing secrets and credentials into git repositories](https://github.com/awslabs/git-secrets)
* Ensure your naming conventions are consistent and make sense:
  * If something is called build_X and it actually deploys_X then change the name to deploys_X if possible to reduce confusion and prevent [information hiding](https://en.wikipedia.org/wiki/Information_hiding),
  * If your environment structure is env-productgroup-application then make sure the naming is consistent across all environments e.g.
    * Development-Acme-Bomb
    * Test-Acme-Bomb
    * PreProduction-Acme-Bomb
    * Production-Acme-Bomb
* Nobody should be able to do something catastrophic to an environment unless they are determined on doing so i.e.
  * Make doing the right thing easy to do by creating safety harnesses using build or scripting tools like the following list to do the most common tasks safety without the worry of screwing up:
    * [Bash Scripts](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_02_01.html)
    * [Make](https://www.gnu.org/software/make/)
    * [Gradle](https://gradle.org/)
    * [Rake](https://ruby.github.io/rake/)
    * [Fabric](http://www.fabfile.org/)
  * Put safe  conditionals in your configuration management to do be able to test runs without the worry of screwing up e.g. Ansible tasks:

```
- name: “Do something really Dangerous"
  command: /sbin/something —could —be —dangerous --if --run --it --in --prod
  when: testmode == “Off"
```


### Processes

<summary>How should we be doing the stuff</summary>

> "If you can't describe what you are doing as a process, you don't know what you're doing."
>> W. Edwards Deming

* Everyone seems to have their own particular spin on Agile Scrum or Kanban, so explain up front what the process is and refine when and if necessary.
* Have [Shovel Ready](https://en.wikipedia.org/wiki/Shovel_ready) work for new starters, create a backlog of work that be be easily done by a new starter:
  * Ideally [work that](https://www.visual-paradigm.com/scrum/write-user-story-smart-goals/):
    * is well defined,
    * is easily explained,
    * requires some research,
    * adds value and;
    * is __not__ grunt work e.g. documentation.
* Assign your new start an [on boarding buddy/mentor](https://hbr.org/2019/06/every-new-employee-needs-an-onboarding-buddy) 
  * Ensure that this "Buddy" has enough free cycles to be there for the new start if needed
* [Pair](https://www.agilealliance.org/glossary/pairing/) with new start as soon and as often as possible depending on the complexity of the environment this could go on for weeks, don't be afraid to pick up this pairing at a later date if the engineer has never touched that code block before.
* When [and if] you do a Retro, then base it against a known good baseline i.e.
  * If you are doing production deploys in the early hours of the night and it goes successfully, remember this is not necessarily reflect a **good** deployment.
* Put as much detail into tasks / stories as possible including:
  * Assumptions, 
  * Reference information and existing implementations
  * Ensuring to narrow down the acceptance criteria in order to prevent [unnecessary research or rework](https://idioms.thefreedictionary.com/go+down+the+rabbit+hole)
* Ideally make your [Tasks/Stories as small as possible](https://www.leadingagile.com/2014/01/small-stories-reduce-variability-velocity-improve-predictability/) this is for a number of reasons some of those being:
  * It makes them easier to handle and get your head around
  * You are less likely to have to [context switch](https://simpleprogrammer.com/context-switching/) within a story if it has a narrow [problem domain](https://en.wikipedia.org/wiki/Problem_domain)
  * You are more likely to actually finish that particular story and not have to pick up a new one and have to go back to the original story, since the smaller it is the less likely it is to run into some sort of unpredicted blockage.
* Avoid onboarding during crunch times (important or critical planned releases)
* Ideally have your accounts linked with some central or shared directory e.g. Github/Google/LDAP so your new starters don’t have to  create and remember 101 user/password combinations
* Use configuration management that has a [dry run feature](https://en.wikipedia.org/wiki/Dry_run_(testing)) e.g. `--testing_mode on`
  * Blocking infrastructure tests or linters to catch mistakes early, e.g.
    * [Yamllint](https://github.com/adrienverge/yamllint)
    * [Test Infra]( https://github.com/philpep/testinfra)
    * [Inspec](http://inspec.io/)
    * [Serverspec](http://serverspec.org/)
    * [Ansible --syntax-check](https://raymii.org/s/tutorials/Ansible_-_Playbook_Testing.html)
    * [cfg_nag](https://github.com/stelligent/cfn_nag)
    * [terratest](https://github.com/gruntwork-io/terratest)
* Add or invite individual to any relevant [Slack](https://slack.com/), [IRC](https://en.wikipedia.org/wiki/Internet_Relay_Chat) or [Microsoft Teams](https://products.office.com/en-us/microsoft-teams/group-chat-software) channels or Mailing lists.
* Provide information regarding relevant processes e.g.
  * Incident, problem and change management
  * Deploying changes / releases to the different environments
  * Ordering infrastructure / tools
  * Authorization for tools & applications
  * Use of test environments and creating and using testdata
* Have [Clean code](https://blog.goyello.com/2013/01/21/top-9-principles-clean-code/) It really helps if your code is good, is sensibly organized and structured. If the code base is large, it should be broken apart in understandable segments
* Create a [Papercuts.md](https://gist.github.com/actionjack/ee8408733b756fc101aa22488bb464a1) in your Repos, These are a log of things that have hurt us in the current environment, they may not be actual [technical debt](https://en.wikipedia.org/wiki/Technical_debt),however they could be things for us to discuss and possibly fix in the future.
* If you have adopted a particular [coding style guideline](https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Coding_Style) on your project then document or reference it for new joiners to easily reference and adopt
* [Story kickoffs](https://elabor8.com.au/how-to-introduce-story-kickoffs-to-your-team/) can be extremely useful to new starters by helping them getting to the mindset of the team, identify areas that aren't immediately visible in the code base and generally reduce constant rework due to poor or missing acceptance criteria.


### Version control management

> "A generation which ignores history has no past and no future."
>> Robert Heinlein

<summary>How do we safely change the things</summary>

* Document your coding standards and strategies in the open e.g.
  * [Version control & branch strategy](https://www.infoq.com/articles/agile-version-control)
  * Code review process
  * Release handling management
* Have an Up to date [README](https://thejunkland.com/blog/how-to-write-good-readme.html) documentation in all repos
  * :+1: have [sequence diagrams](https://en.wikipedia.org/wiki/Sequence_diagram) in all repos e.g. [plantuml](http://plantuml.com/) or [mermaid](https://mermaidjs.github.io/)
  * :+1: have [Architecture Decision Records](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) in your [repos](https://github.com/npryce/adr-tools)
  * :+1: Have a Clear and concise [git history](http://www.annashipman.co.uk/jfdi/good-pull-requests.html) that [clearly](https://commitizen.github.io/cz-cli/) and easily documents the changes done and the reasons why in your repositories
* Make [Pull Requests](https://help.github.com/articles/about-pull-requests/) a first class citizen, nothing is more demoralising than having a Pull Request sitting around without [feedback](https://devchecklists.com/pull-requests-checklist/) and a chance of being merged especially if it needs to be continually rebased.
* Good [Pull Requests](https://github.com/alphagov/frontend/pull/784) can also be an excellent teaching tool for new starts or old hands alike, a good PR tell's you what was implemented, why and how so if you (or anyone else) need to do something similar in the future it will make things a lot easier than relying on your memory or tribal knowledge.
* If you use [slack](https://slack.com) or something similiar consider adding a notification bot for pull request and push activities, e.g. for [bitbucket](https://marketplace.atlassian.com/apps/1213042/slack-notifications-plugin?hosting=server&tab=overview) or [github](https://github.com/Talkdesk/pr-police) to notify your colleagues that a Pull Request is ready for review.
* Keep your pull request list short and tidy, [merge good requests quickly](https://medium.com/@biratkirat/step-52-let-your-project-speak-for-itself-daniel-lindner-e45a0b1ce2c7) and close poor ones or those that are never going to be merged.


### Development environments

<summary>How do we safely change things</summary>

> "Measure twice, cut once"
>> Proverb

* Make it easy to set up your local development environment, you should not have to do the following just so you can start work:
  * Log multiple service requests
  * Read through multiple wiki pages
  * hunt down multiple individuals
  * get multiple emails with multiple links
  * Ask multiple people how their personal environment is configured
* Have at least a minimally functioning [Continuous Integration setup](https://www.thoughtworks.com/continuous-integration)
* Make your tooling easy to set up an easy to use cross platform or run a local environment that does not mess up what’s currently there e.g. in a [virtual machine](https://medium.com/@jevgenijdmitrijev/how-to-creating-a-ubuntu-development-environment-with-help-of-virtual-box-f2cc198e1c63)
  * [pyenv](https://github.com/pyenv/pyenv), [jenv](http://www.jenv.be/), [Rbenv](https://github.com/rbenv/rbenv), [venv](https://docs.python.org/3/library/venv.html), [virtualenv](https://virtualenv.pypa.io/en/stable/), [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv), [pipenv](https://pipenv.readthedocs.io/en/latest/)
  * :+1: Vagrant boxen in order to test locally!
  * :+1: Docker containers
  * :+1: The ability to create individualized development environments in the cloud e.g. [AWS](https://aws.amazon.com/), [Azure](https://azure.microsoft.com), [Google](https://cloud.google.com/), [Digital Ocean](https://www.digitalocean.com/), etc in order to safely deploy, iterate and test in a separate (and safe) environment


## Useful links

<details>
<summary>Would you like to know more?</summary>

* [Onboarding and Mentoring Apprentices with DevOps Culture](https://vimeo.com/115484860) by [Mercedes Coyle](https://twitter.com/benzobot)

* [How to Onboard Software Engineers](https://medium.com/therobinkim/kate-heddleton-how-to-onboard-software-engineers-559785163686) Interview with [Kate Heddleston](https://twitter.com/heddle317)

* [Onboarding New Hires with Trello](https://medium.com/@Liz_Hall1/onboarding-new-hires-with-trello-ecc87e87ffd5) by [Elizabeth Hall](https://twitter.com/Liz_Hall1)

* [If you want your new engineers to hit the ground running, give them a soft landing](https://blog.asana.com/2013/02/onboarding-new-engineers/) by [Greg Slovacek](https://twitter.com/slobak)

* [Building world class Ops teams](https://youtu.be/l5vKPZW-m0E?list=PLK4VB0cauli7-_RIvpmn651ePtddw9_Fp) by [Charity Majors](https://twitter.com/mipsytipsy)

* [Ops and Operability](https://vimeo.com/205526857) by [Dan North](https://twitter.com/tastapod)

* [Engineering a culture of psychological safety](https://blog.intercom.com/psychological-safety/)

* [GOV.UK Platform as a Service Team Manual](https://team-manual.cloud.service.gov.uk/#paas-team-manual)

* [Empathy: The Essence of DevOps](https://medium.com/@jeffsussna/empathy-the-essence-of-devops-572ed2a7f42b)

* [The (written) unwritten guide to pull requests](https://www.atlassian.com/blog/git/written-unwritten-guide-pull-requests)

* [Mike Pountney's Pull Request Etiquette](https://gist.github.com/mikepea/863f63d6e37281e329f8)

* [Write good git commit messages](https://juffalow.com/other/write-good-git-commit-message)

* [Code for the maintainer](http://wiki.c2.com/?CodeForTheMaintainer)

* [Become a Better Programmer by Making It Hard to Write Bad Code](https://blog.daftcode.pl/become-a-better-programmer-by-making-it-hard-to-write-bad-code-d118ab90e0f7)

* [Avoiding Stupidity is Easier than Seeking Brilliance](https://fs.blog/2014/06/avoiding-stupidity/)

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
