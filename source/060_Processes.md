## Processes

<summary>How should we be doing the stuff</summary>

> “If you can't describe what you are doing as a process, you don't know what you're doing.”

>> W. Edwards Deming

* Everyone seems to have their own particular spin on Agile Scrum or Kanban, so explain up front what the process is and refine when and if necessary.
* Have [Shovel Ready](https://en.wikipedia.org/wiki/Shovel_ready) work for new starters, create a backlog of work that can be easily done by a new starter:
  * Ideally [work that](https://www.visual-paradigm.com/scrum/write-user-story-smart-goals/):
    * is well defined,
    * is easily explained,
    * requires some research,
    * adds value and;
    * is __not__ grunt work e.g. documentation.
* Assign your new starter an [on boarding buddy/mentor](https://hbr.org/2019/06/every-new-employee-needs-an-onboarding-buddy)
  * Ensure that this "Buddy" has enough free cycles to be there for the new start if needed
* [Pair](https://www.agilealliance.org/glossary/pairing/) with new start as soon and as often as possible depending on the complexity of the environment this could go on for weeks (if not months), don't be afraid to pick up this pairing at a later date if the engineer has never touched that code block before.
* When [and if] you do a Retro, then base it against a known good baseline i.e.
  * If you are doing production deploys in the early hours of the night and it goes successfully, remember this is not necessarily reflect a **good** deployment.
* Put as much detail into tasks / stories as possible including:
  * Assumptions,
  * Reference information and existing implementations,
  * Ensuring to narrow down the acceptance criteria in order to prevent [unnecessary research or rework](https://idioms.thefreedictionary.com/go+down+the+rabbit+hole),
  * Diagrams.
* Ideally make sure your [Tasks/Stories are as small as atomically possible](https://www.leadingagile.com/2014/01/small-stories-reduce-variability-velocity-improve-predictability/) this is for a number of reasons some of those being:
  * It makes them easier to handle and get your head around
  * You are less likely to have to [context switch](https://simpleprogrammer.com/context-switching/) within a story if it has a narrow [problem domain](https://en.wikipedia.org/wiki/Problem_domain)
  * You are more likely to actually finish that particular story and not have to pick up a new one and have to go back to the original story, since the smaller it is the less likely it is to run into some sort of unpredicted blockage.
* Avoid [if possible] onboarding during crunch times (important or critical planned releases)
* Ideally have your accounts linked with some central or shared directory e.g. Github/Google/LDAP so your new starters don’t have to  create and remember 101 user/password combinations or have to request access to multiple applications separately.
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
* Have [Clean code](https://blog.goyello.com/2013/01/21/top-9-principles-clean-code/) It really helps if your code is good, sensibly organized and well structured. If the code base is large, it should be broken down into smaller understandable segments
* Create a [Papercuts.md](https://gist.github.com/actionjack/ee8408733b756fc101aa22488bb464a1) in your Repos, These are a log of things that have hurt us in the current environment, they may not be actual [technical debt](https://en.wikipedia.org/wiki/Technical_debt),however they could be things for us to discuss and possibly fix in the future.
* If you have adopted a particular [coding style guideline](https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Coding_Style) on your project then document or reference it for new joiners to easily reference and adopt
* [Story kickoffs](https://elabor8.com.au/how-to-introduce-story-kickoffs-to-your-team/) can be extremely useful to new starters by helping them getting to the mindset of the team, identify areas that aren't immediately visible in the code base and generally reduce constant rework due to poor or missing acceptance criteria.
* Embed you processes in your code. If your process requires you to hand off to another team to get the thing you want done e.g. After issuing a Pull Request you need to notify another team to run a Jenkins pipeline, then put the team and the contact information in the documentation (e.g. Slack Channel).
* Use code formatters to standardize the structure your code e.g. `terraform fmt` this can make reading diffs a lot easier since you don't have to deal with things like differing indentation.
* Encourage [Swarming](https://www.jrothman.com/mpd/project-management/2016/07/pairing-swarming-and-mobbing/) on difficult issues or development blockages (e.g. blocked pipelines) where the entire team  works together on a single task
