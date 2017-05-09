# So you want to Onboard a DevOps/WebOps Engineer/Consultant

At the moment everyone seems to be so concerned with recruiting DevOps Engineers but I feel the process of on-boarding them is still very hit and miss especially in busy organisations.

## Making it easy to get work done from day one

Reduce the time spent learning the peculiarities of complex environments rather than improving or iterating them, with a dedication to making every engineer effective.


Here are some easy tips on how to make your environment easy to onboard:

### Have Up to date Documentation

It's important to have the following:

* Regularly groom your documentation, old documents should be removed, outdated ones updated, if you touch it then update it
* High-Level logical Architecture. e.g. ideally written in a Git friendly format:
	* [SVG](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) diagrams in [github](https://github.com/blog/1902-svg-viewing-diffing) so you can see the infrastructure changes over time
	* [Graphviz description language](http://www.graphviz.org/content/dot-language)
* An overview of the company’s infrastructure.
* A intranet/wiki or enterprise social network to Learn about different teams, key members and pictures. On day one, one can easily get overwhelmed with lots of new names and faces.
* Create a Glossary of Terms [e.g. a Minipedia] for describing any organisation specific acronyms or terms
   * Create an on-boarding wiki page (i.e. Confluence/Google Docs) e.g. https://wiki.mozilla.org/Devops/onboarding
   * :+1: For Open,online and easy to reach [checklists](https://github.com/annahsebok/onboarding-documents-1/blob/master/Checklists/team-based-checklists/devops-new-hire-checklist.md)
* Write your documentation as if it's going to be open someday.

### Operations

* Have your work structured so people can see what needs to be done i.e. Kanban board backlog or todo lists
* Make it difficult to make mistakes e.g
        * protected masters, https://github.com/blog/2051-protected-branches-and-required-status-checks
        * Coding guidelines backed up by CI checks
* Ensure your naming conventions makes sense, if something is called build_X and it actually deploys_X then change the name to deploys_X if possible to reduce confusion
* Have all relevant accounts setup and ready
* Nobody should be able to do something catastrophic to an environment unless they are dead set on doing so i.e.
    * Use safety harnesses
        * [Make](https://www.gnu.org/software/make/), [Gradle](https://gradle.org/) or [Rake](https://ruby.github.io/rake/) commands to do the most common tasks safety without the worry of screwing up e.g. Ansible tasks:

```
- name: “Do something really Dangerous"
  command: /sbin/something —could —be —dangerous --if --run --it --in --prod
  when: testmode == “Off"
```

### Processes

* Have [Shovel Ready](https://en.wikipedia.org/wiki/Shovel_ready) work for new starters, create a backlog of work that be be easily done for new starters
* Assign an on boarding buddy/mentor
* Pair as soon and often as possible
* When [and if] you do a Retro, then base on a known good baseline i.e.
	* If you are doing production deploys in the wee hours of the night and it goes successfully, remember this is not necessarily reflect a **good** deployment.
* Put as much detail into tasks / stories as possible including assumptions, reference information, narrow acceptance criteria.
* Avoid on boarding during crunch times (important or critical planned releases)
* Ideally have your accounts linked with some central or shared directory e.g. Github/Google/LDAP so you don’t have to remember 101 user/password combinations
* In your alerting system put context sensitive help that points to a helpful runbook
* Configuration management test modes i.e. testing_mode on
	* Blocking infrastructure tests or linters to catch mistakes early, e.g.
		* Yamllint https://github.com/adrienverge/yamllint
		* Test Infra https://github.com/philpep/testinfra
		* Inspec - http://inspec.io/
		* Serverspec - http://serverspec.org/
		* Ansible --syntax-check
* Add or invite individual to any relevant [Slack](https://slack.com/), [IRC](https://en.wikipedia.org/wiki/Internet_Relay_Chat) channels or Mailing lists.

### Version control management

* Document your coding standards and strategies in the open e.g.
	* Version control branching strategy
	* Code review process
	* Release handling management
* Have an Up to date [README](https://thejunkland.com/blog/how-to-write-good-readme.html) documentation in all repos
    * :+1: have [sequence diagrams](https://en.wikipedia.org/wiki/Sequence_diagram) in all repos i.e. http://plantuml.com/
    * :+1: have [Architecture Decision Records](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) in your [repos](https://github.com/npryce/adr-tools)
    * :+1: Have a well [structured git history](http://www.annashipman.co.uk/jfdi/good-pull-requests.html) in your repos

### Development environments

* Make it easy to set up an easy to use cross platform or run a local environment that doesn’t mess up what’s currently there e.g. (https://cloud.gov/docs/ops/creating-a-local-dev-environment-in-Virtual-Box/)
    * pyenv, jenv, Rbenv, venv, virtualenv, [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)
    * :+1: Vagrant boxen test locally!
    * :+1: Docker containers

### Culture

* Remember not everyone maybe as smart as you are, they may be missing
    * Context / Situational awareness (how did we get from here to there?)
    * Tribal Knowledge
    * Culture
* What are the Preferred practices?
* Listen to their point of view they bring a fresh pair of eyes to the situation
* Test your mentoring and on boarding process to flush out any shortfalls by getting the last person who joined to mentor the new joiner.

## Useful links
[Onboarding and Mentoring Apprentices with DevOps Culture - Mercedes Coyle @benzobot](https://vimeo.com/115484860)

[How to Onboard Software Engineers – Interview with Kate Heddleston](http://blog.fogcreek.com/how-to-onboard-software-engineers-interview-with-kate-heddleston/)

See a problem here
===
See a problem? Need something clarified? Raise and Issue and I'll try and fix it.


Want to Contribute?
===

I'm open to [well structured Pull Requests](http://www.annashipman.co.uk/jfdi/good-pull-requests.html)
