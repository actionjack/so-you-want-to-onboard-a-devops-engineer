So you want to Onboard a DevOps/WebOps Engineer/Consultant
===

At the moment everyone seems to be so concerned with recruiting DevOps Engineers but I feel the process of on-boarding them is still very hit and miss especially in busy organisations.

Making it easy to get work done on day one
===

Reduce the time spent learning the peculiarities of certain environments rather than improving or iterating them,

Here are some easy tips on how to make your environment easy to onboard:

* Up to date Documentation
    * High-Level logical Architecture. e.g. written in a Git friendly format: 
    	* [SVG](https://en.wikipedia.org/wiki/Scalable_Vector_Graphics) diagrams in github so you can see the infrastructure changes over time
    	* [Graphviz description language](http://www.graphviz.org/content/dot-language)
    * An overview of the company’s infrastructure.
    * A intranet/wiki or enterprise social network to Learn about different teams, key members and pictures. On day one, one can easily get overwhelmed with lots of new names and faces.
    * When [and if] you do a Retro, then base on a known good baseline
        * If you are doing production deploys in the dead of night and it goes successfully, remember this is not necessarily a good deployment.
    * Create a Glossary of Terms e.g. a Minipedia for describing any organisation specific acronyms or terms 
    * Put as much detail into tasks / stories as possible including assumptions, reference information, narrow acceptance criteria.
    * Make it difficult to make mistakes e.g 
        * protected masters, https://github.com/blog/2051-protected-branches-and-required-status-checks
        * Coding guidelines backed up by CI checks 
* Create an on-boarding wiki page (i.e. Confluence/Google Docs) e.g. https://wiki.mozilla.org/Devops/onboarding
    * +1 For online and easy to reach [checklists](https://github.com/annahsebok/onboarding-documents-1/blob/master/Checklists/team-based-checklists/devops-new-hire-checklist.md)
* Regularly groom your documentation, old documents should be removed, outdated ones updated, if you touch it then update it
* Make your naming make sense if something is called build_X and it actually deploys_X then change the name to deploys_X if possible to reduce confusion
* Have your work structured so people can see what needs to be done i.e. Kanban board backlog or todo lists
* Have Shovel Ready work for new starters, create a backlog of work that be be easily done for new starters
* Pair as soon as possible
* Avoid on boarding during crunch times (important or critical planned releases)
* Assign an on boarding buddy/mentor
* Have all relevant accounts setup and ready
* Ideally have your accounts linked with some central or shared directory e.g. Github/Google/LDAP so you don’t have to remember 101 user/password combinations
* Have an Up to date Readme.md documentation in all repos
    * +1 have [sequence diagrams](https://en.wikipedia.org/wiki/Sequence_diagram) in all repos i.e. http://plantuml.com/ 
        * +1 have [Architecture Decision Records](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) in your [repos](https://github.com/npryce/adr-tools)
    * +1 Have a well [structured git history](http://www.annashipman.co.uk/jfdi/good-pull-requests.html)
* Make it easy to set up an easy to use cross platform or run a local environment that doesn’t mess up what’s currently there e.g. (https://cloud.gov/docs/ops/creating-a-local-dev-environment-in-Virtual-Box/)
    * pyenv, jenv, Rbenv
    * +1 Vagrant boxen test locally!
    * +1 Docker containers
* In your alerting system put context sensitive help that points to a helpful runbook 
* Nobody should be able to do something bad to an environment unless they a dead set on doing so i.e.
    * Use safety harnesses 
        * Make or Rake commands to do the most common tasks safety without fear of screwing up e.g. Ansible tasks:
```
- name: “Do something really Dangerous"
  command: /sbin/something —could —be —dangerous --if --run --it --in --prod
  when: testmode == “Off"
```
* Configuration management test modes i.e. testing_mode on
        * Blocking infrastructure tests or linters to catch mistakes early, e.g.
            * Yamllint https://github.com/adrienverge/yamllint
            * Test Infra https://github.com/philpep/testinfra
            * Inspec - http://inspec.io/
            * Serverspec - http://serverspec.org/
            * ansible --syntax-check
* Remember not everyone maybe as smart as you are, they may be missing
    * Context / Situational awareness (how did we get from here to there?)
    * Tribal Knowledge
    * Culture


Want to Contribute?
===

I'm open to [well structured Pull Requests](http://www.annashipman.co.uk/jfdi/good-pull-requests.html)
