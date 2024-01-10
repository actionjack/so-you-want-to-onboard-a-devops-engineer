## Operations

<summary>Make it easy to get stuff done</summary>

> [“Complexity exacts a staggering tax on your humans. Good Ops engineers attempt to pay down that tax.”](https://twitter.com/bridgetkromhout/status/647333814411358208)

>> [Charity Majors](https://twitter.com/mipsytipsy)

* Have all relevant user accounts and access setup and ready
* Create [Operations Checklists](http://atulgawande.com/book/the-checklist-manifesto/) for your key processes
* Have your work structured so people can see what needs to be done i.e. Kanban board backlog or To Do lists
* Provide information regarding the applications that are maintained by the team and how to do the operations for those applications
* Have safe to deploy sample dummy applications that can be deployed safely to your infrastructure so new starts can learn how the deployment process works without fear of impacting key applications
* Make it difficult to make mistakes e.g
  * [protected branches e.g. to prevent force pushes to main](https://github.com/blog/2051-protected-branches-and-required-status-checks)
  * If you have code standards, don't __just document them__ back them up with [Automated Code standards](https://medium.com/@biratkirat/step-4-automate-your-coding-standard-filip-van-laenen-5b1c486e4883) triggered by [CI checks](https://en.wikipedia.org/wiki/Continuous_integration) or [pre-commit hooks](https://githooks.com/)
  * [Avoiding committing secrets and credentials into git repositories](https://github.com/awslabs/git-secrets)
* If you have Policies on how to handle certain tasks e.g. Doing Spikes document them and link to them in your stories. e.g. here's the link to how you handle spikes.
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
    * [Gradle](https://gradle.org/)
  * If you use configuration management tools then use them repeatedly and/or test them, try to avoid one shot configuration management i.e. the operation is only run once once  to configure a resource even one you do not expect to change, because it will change and it will break and you will be rushing around trying to figure out what happened.
  * Use the **Guard Rail Pattern** by putting safe  conditionals in your configuration management to do be able to test runs without the worry of screwing up e.g. Ansible tasks:

  ```yaml
  - name: “Do something really Dangerous"
    command: /sbin/something —could —be —dangerous --if --run --it --in --prod
    when: testmode == “Off"
  ```
