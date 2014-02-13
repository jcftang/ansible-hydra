## Requirements

Working installation of 

* ansible 1.4.4 or newer
* vagrant 1.4.x or newer

## Quickstart

    $ cd hacking
    $ source hacking/env-setup
    $ vagrant up
    $ cd ..
    $ ansible-playbook site.yml
    
The env-setup script will setup the environment to alias ansible and
ansible-playbook with the included hosts file and private key for the
vagrant VM.
