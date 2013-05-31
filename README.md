## README

Playbooks for deploying DRI test and development infrastructure

In the DRI test and development infrastructure for our Hydra Head we
use primarily Scientific Linux <https://www.scientificlinux.org/>.

The goal of this set of plays is to be able to quickly setup a base
system with SL6x and have at least the following applications installed
ready to go for use with deploying a Hydra Head.

* Tomcat (from the base repositories of RHEL6/Centos6/ScientificLinux6)
* Fedora-Commons (the same version as is in the hydra-jetty repo)
* Apache SOLR (the same version as is in the hydra-jetty repo)
* Ruby (via RVM) in a user directory
* Passenger with the installed version of Ruby
* MySQL (from the base repositories of RHEL6/Centos6/ScientificLinux6)

What's missing here is the deployment of the actual Hydra-Head. This part
is not automated yet as it's not clear what we want to do this is area.

Also default usernames and passwords are used (from the upstream),
these scripts are not yet ready for production usage.

## Requirements

* A target machine (or VM) that you can login to with ssh keys
* The target machine should be running a flavour of RHEL6 - should
  be a fresh/stock install (a vagrant rhel6 based basebox is great for
  testing against)
* Ansible 1.2 or newer on your own host machine

## Usage

Ideally first read up on how ansible works at <http://www.ansible.cc>.

To deploy the scripts on to a fresh set of machines, first setup your
ansible hosts file. e.g. create a file in *$HOME/.ansible_hosts* with
the following contents.

	[hydra]
	192.168.206.110

The IP address will be specific to your site. Then you can run one of
the playbooks from the playbooks directory.

	$ pwd
	/home/jtang/ansible-hydra
	$ ansible-playbook playbooks/hydra.yml
	[ lots of output ]

There are a number of playbooks in the playbooks directory, so have a
poke around.

## TODO

Move away from tasks and use roles instead as it's just plain cleaner.
