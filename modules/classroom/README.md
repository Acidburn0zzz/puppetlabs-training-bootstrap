# classroom

## Setting up the training classroom environment.

Simply classify every node in the classroom with `classroom`. It will conditionally
configure both master and agent and will account for certain variations in PE versions.

It will enable storeconfigs on the master, then restart `pe-httpd`. On the second and any
subsequent runs, it will collect all exported user records and instantiate accounts, ssh keys,
git respositories, console accounts, etc.

Each agent will generate an ssh key, create a git repository with a remote set up to point at
the master. It will then export a user record for the master to collect. Keep in mind that
since it uses a custom fact to get root's ssh key, the agent must run twice before a valid
account will be created on the master. Users who come in late can simply follow along in the
instruction guide and when they complete these steps, they will automatically join the classroom
environment.

Once all nodes have been classified, just kick off a few puppet runs and everyone will be happy
as a clam. Especially because they all walk away with copies of their source code and a teeny
bit of experience with git.

## Course specific configurations

### Rapid Deploy

When transitioning to the Rapid Deploy course, you should remove the `classroom` class from
each node and reclassify them with `classroom::rapid_deploy`.

Contact
-------

education@puppetlabs.com
