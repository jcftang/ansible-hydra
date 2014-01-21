## Requirements

Working installation of 

* ansible 1.2 or newer
* vagrant 1.2 or newer

## Quickstart

Upon first checkout ansible-hydra repo

    $ pwd
    /home/user/ansible-hydra/
    $ cd hacking
    $ source hacking/env-setup
    $ vagrant up
    $ cd ..
    $ ansible-playbook playbooks/setup.yml
    
The env-setup script will setup the environment to alias ansible and
ansible-playbook with the included hosts file and private key for the
vagrant VM.
