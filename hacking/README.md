## Requirements

Working installation of 

* ansible
* vagrant
  * will require a working version of ruby and bundler

## Quickstart

Upon first checkout ansible-hydra repo

    $ pwd
    /home/user/ansible-hydra/
    $ cd hacking
    $ source hacking/env-setup
    $ bundle
    $ vagrant up
    $ cd ..
    $ ansible-playbook playbooks/setup.yml
    

The bundle command will install the needed components to run the vagrant
vms with the ansible plugin.

The env-setup script will setup the environment to alias ansible and
ansible-playbook with the included hosts file and private key for the
vagrant VM.
