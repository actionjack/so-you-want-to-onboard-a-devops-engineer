# So you want to Onboard a DevOps Practitioner

[![Build Status](https://travis-ci.org/actionjack/so-you-want-to-onboard-a-devops-engineer.svg?branch=master)](https://travis-ci.org/actionjack/so-you-want-to-onboard-a-devops-engineer)

At the moment everyone seems to be so concerned with recruiting DevOps Engineers but I feel the process of on-boarding them is still very hit and miss especially in busy organisations.

## Making it easy to get work done from day one

Reduce the time spent learning the peculiarities of complex environments rather than improving or iterating them, with a dedication to making every engineer effective.

Here is some guidance on how to make your environment easier to onboard.

### Have up to date Documentation

It's important to either have or do the following:

* Regularly tidy your documentation, old documents should be removed, outdated ones updated, if you touch it then update it
* High-Level logical Architecture. E.g. ideally written in a Git friendly format:
	* [SVG](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) diagrams in [github](https://github.com/blog/1902-svg-viewing-diffing) so you can see the infrastructure changes over time
	* [Graphviz description language](http://www.graphviz.org/content/dot-language)
	* [Graphvizo](http://gravizo.com/)
* An overview of the company’s infrastructure.
* Systems integration points and their third parties dependencies
* A intranet/wiki or enterprise social network to Learn about different teams, key members with pictures. On day one, one can easily get overwhelmed with lots of new names and faces.
* Have documentation for your alerts. If something is important enough to page the oncall person about, it's important enough to have a runbook entry about it. If you alert because _foo queue is too long_, there should be a [runbook](http://holyhandgrenade.org/blog/2011/08/runbooks-are-stupid-and-youre-doing-them-wrong/) entry describing how to fix it.
* Create a Glossary of Terms [e.g. a Minipedia] for describing any organisation specific acronyms or terms
   * [Create an on-boarding wiki page (i.e. Confluence/Google Docs)](https://wiki.mozilla.org/Devops/onboarding)
   * :+1: For Open,online and easy to reach [checklists](https://github.com/annahsebok/onboarding-documents-1/blob/master/Checklists/team-based-checklists/devops-new-hire-checklist.md)
* Write your documentation as if it's going to be [open](https://www.gov.uk/design-principles#tenth) to public scrutiny someday.
* Have an easy to use and setup collection of shared resources e.g. bookmark file of URL links, .ssh/config files

### Operations

* Have all relevant accounts setup and ready
* Simply and reuse as much of your architecture as possible - [“Complexity exacts a staggering tax on your humans. Good ops engineers attempts to pay down that tax.” - Charity Majors - @mipsytipsy](https://twitter.com/bridgetkromhout/status/647333814411358208)
* Hove your work structured so people can see what needs to be done i.e. Kanban board backlog or todo lists
* Provide information regarding the applications that are maintained by the team and how to do the operations for those applications
* Make it difficult to make mistakes e.g
        * [protected branches e.g. force pushes to master](https://github.com/blog/2051-protected-branches-and-required-status-checks)
        * Coding guidelines backed up by CI checks
* Ensure your naming conventions makes sense, if something is called build_X and it actually deploys_X then change the name to deploys_X if possible to reduce confusion

> "it's possible for good people, in perversely designed systems, to casually perpetrate acts of great harm on strangers, sometimes without ever realising it."
>> [Ben Goldacre](http://www.badscience.net/), [Bad Pharma](https://www.amazon.co.uk/dp/0865478007?tag=contindelive-20), p. xi

* With the above in mind nobody should be able to do something catastrophic to an environment unless they are determined on doing so i.e.
	* Create safety harnesses
	  * [Make](https://www.gnu.org/software/make/), [Gradle](https://gradle.org/) or [Rake](https://ruby.github.io/rake/) commands to do the most common tasks safety without the worry of screwing up e.g. Ansible tasks:

```
- name: “Do something really Dangerous"
  command: /sbin/something —could —be —dangerous --if --run --it --in --prod
  when: testmode == “Off"
```

### Processes

* Have [Shovel Ready](https://en.wikipedia.org/wiki/Shovel_ready) work for new starters, create a backlog of work that be be easily done by a new starter:
  * Ideally work that:
    * is well defined,
    * is easily explained,
    * requires some research,
    * adds value and;
    * is not grunt work e.g. document X.
* Assign your new start an on boarding buddy/mentor
* [Pair](https://www.agilealliance.org/glossary/pairing/) with new start as soon and as often as possible
* When [and if] you do a Retro, then base it against a known good baseline i.e.
  * If you are doing production deploys in the wee hours of the night and it goes successfully, remember this is not necessarily reflect a **good** deployment.
* Put as much detail into tasks / stories as possible including assumptions, reference information, existing implementations, narrow acceptance criteria.
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

### Version control management

* Document your coding standards and strategies in the open e.g.
  * [Version control & branch strategy](https://www.infoq.com/articles/agile-version-control)
  * Code review process
  * Release handling management
* Have an Up to date [README](https://thejunkland.com/blog/how-to-write-good-readme.html) documentation in all repos
  * :+1: have [sequence diagrams](https://en.wikipedia.org/wiki/Sequence_diagram) in all repos i.e. http://plantuml.com/
  * :+1: have [Architecture Decision Records](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) in your [repos](https://github.com/npryce/adr-tools)
  * :+1: Have a well [structured git history](http://www.annashipman.co.uk/jfdi/good-pull-requests.html) in your repos
* If at all possible make [Pull Requests](https://help.github.com/articles/about-pull-requests/) a first class citizen nothing is more demoralising than having a Pull Request sitting around without [feedback](http://engineering.leadgenius.com/post/129799259649/the-pull-request-review-checklist) and a chance of being merged.

### Development environments

* Have at least a minimally functioning [Continous Integration setup](https://www.thoughtworks.com/continuous-integration)
* Make it easy to set up an easy to use cross platform or run a local environment that doesn’t mess up what’s currently there e.g. in a [virtual machine](https://cloud.gov/docs/ops/creating-a-local-dev-environment-in-Virtual-Box/)
  * [pyenv](https://github.com/pyenv/pyenv), [jenv](http://www.jenv.be/), [Rbenv](https://github.com/rbenv/rbenv), [venv](https://docs.python.org/3/library/venv.html), [virtualenv](https://virtualenv.pypa.io/en/stable/), [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)
  * :+1: Vagrant boxen in ordet to test locally!
  * :+1: Docker containers
  * :+1: The ability to create individualized development environments in the cloud e.g. [AWS](https://aws.amazon.com/), [Azure](https://azure.microsoft.com), [Google](https://cloud.google.com/), [Digital Ocean](https://www.digitalocean.com/), etc in order to safely deploy, iterate and test in a separate (and safe) environment

### Culture

* Introduce the new engineer(s) to the relevant people within the organization
* Remember not everyone maybe as smart as you are, they may be missing
  * Context / Situational awareness (how did we get from here to there?)
  * Tribal Knowledge
  * Culture
* What are the Preferred practices or ["Design Principles"](https://www.gov.uk/design-principles)?
* Listen to their point of view. Bringing in a new person is a prime opportunity to find out where the code needs improvement
* Test your mentoring and on boarding process to flush out any shortfalls by getting the last person who joined to mentor the new joiner.
* Make your documentation inclusive e.g. this document is parsed using [alex](http://alexjs.com/) in order to catch insensitive and inconsiderate writing.
* Be wary of not overloading new starts with too much information there there is often quite a lot to learn (even more than you think), instead provide a set of useful links so people can research at their own pace.

## Useful links
* [Onboarding and Mentoring Apprentices with DevOps Culture - Mercedes Coyle @benzobot](https://vimeo.com/115484860)

* [How to Onboard Software Engineers – Interview with Kate Heddleston - @heddle317](http://blog.fogcreek.com/how-to-onboard-software-engineers-interview-with-kate-heddleston/)

* [Onboarding New Hires with Trello - Elizabeth Hall - @Liz_Hall1](https://medium.com/@Liz_Hall1/onboarding-new-hires-with-trello-ecc87e87ffd5)

* [If you want your new engineers to hit the ground running, give them a soft landing - Greg Slovacek - @slobak ](https://blog.asana.com/2013/02/onboarding-new-engineers/)

* [Building world class Ops teams by Charity Majors @mipsytipsy](https://youtu.be/l4vKPZW-m0E?list=PLK4VB0cauli7-_RIvpmn651ePtddw9_Fp)

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

The MIT License (MIT)

Copyright (c) 2017 Martin Jackson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
