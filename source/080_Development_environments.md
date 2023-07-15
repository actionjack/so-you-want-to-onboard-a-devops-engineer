## Development environments

<summary>How do we safely change things</summary>

> “Measure twice, cut once”

>> Proverb

* Make it easy to set up your local development environment, you should not have to do the following just so you can start work:
  * Log multiple service requests
  * Read through multiple wiki pages
  * hunt down multiple individuals
  * get multiple emails with multiple links
  * Ask multiple people how their personal environment is configured
* Have at least a minimally functioning [Continuous Integration setup](https://www.thoughtworks.com/continuous-integration)
* Make your tooling easy to set up an easy to use cross platform or run a local environment that does not mess up what’s currently there e.g. in a [virtual machine](https://medium.com/@jevgenijdmitrijev/how-to-creating-a-ubuntu-development-environment-with-help-of-virtual-box-f2cc198e1c63)
  * Version managers for example: [asdf](https://github.com/asdf-vm/asdf) [pyenv](https://github.com/pyenv/pyenv), [jenv](http://www.jenv.be/), [Rbenv](https://github.com/rbenv/rbenv), [venv](https://docs.python.org/3/library/venv.html), [virtualenv](https://virtualenv.pypa.io/en/stable/), [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv), [pipenv](https://pipenv.readthedocs.io/en/latest/)
  * :+1: Vagrant boxen in order to test locally
  * :+1: Docker containers e.g. [using the Three Musketeers pattern](https://3musketeers.io/docs/patterns.html#make)
  * :+1: The ability to create individualized development environments in the cloud e.g. [AWS](https://aws.amazon.com/), [Azure](https://azure.microsoft.com), [Google](https://cloud.google.com/), [Digital Ocean](https://www.digitalocean.com/), etc in order to safely deploy, iterate and test in a separate (and safe) environment
