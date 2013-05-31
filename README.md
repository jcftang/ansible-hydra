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

## Requirements

* A target machine (or VM) that you can login to with ssh keys
* The target machine should be running a flavour of RHEL6 - should
  be a fresh/stock install (a vagrant rhel6 based basebox is great for
  testing against)
* Ansible 1.2 or newer on your own host machine
