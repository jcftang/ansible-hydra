## README

**WARNING** These playbooks are getting too big to be deployed in a vagrant VM, so they may not work in vagrant.

Playbooks for deploying DRI test and development infrastructure

In the DRI test and development infrastructure for our Hydra Head we
use primarily Ubuntu 12.04.

The goal of this set of plays is to be able to quickly setup a base
system with Ubuntu and have at least the following applications installed
ready to go for use with deploying a Hydra Head.

* Tomcat (from the base repositories)
* Fedora-Commons (the same version as is in the hydra-jetty repo)
* Apache SOLR (the same version as is in the hydra-jetty repo)
* Ruby (via RVM) in a user directory
* Passenger with the installed version of Ruby
* MySQL (from the base repositories)
* Redis
* Shibboleth
* HAProxy
* LDAP
* Corosync/Pacemaker *coming soon*
* Nagios and Collectd

What's missing here is the deployment of the actual Hydra-Head. This part
is not automated yet as it's not clear what we want to do this is area.

Also default usernames and passwords are used (from the upstream),
these scripts are not yet ready for production usage.

## Requirements

* A target machine (or VM) that you can login to with ssh keys
* The target machine should be running a flavour of Ubuntu 12.04- should
  be a fresh/stock install (a vagrant Ubuntu based basebox is great for
  testing against)
* Ansible 1.4 or newer on your own host machine

## Usage

Ideally first read up on how ansible works at <http://www.ansible.cc>.

To deploy the scripts on to a fresh set of machines, first setup your
ansible hosts file. e.g. create a file in *$HOME/.ansible_hosts* or look
at the hosts.vagrant file as an example. You may want to override some
of the `group_vars/all` settings via the hosts file.

The IP address will be specific to your site. Then you can run one of
the playbooks from the playbooks directory.

	$ pwd
	/home/jtang/ansible-hydra
	$ ansible-playbook -i myhosts.file site.yml
	[ lots of output ]

There are a number of playbooks in the playbooks directory, so have a
poke around.
