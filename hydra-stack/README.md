# Sample Hydra Stack for development and pre-production usage

## Requirements

Working installation of 

* ansible 1.4.x or newer
* vagrant 1.4.x or newer
* virtualbox 4.3.x or newer

The playbooks and roles primarily target Ubuntu 12.04.

### Ideally use Homebrew

    $ brew install ansible brew-cask
    $ brew cask install virtualbox vagrant

## Quickstart

    $ pwd 
    /home/user/ansible-hydra/hydra-stack
    $ cd hacking
    $ source env-setup
    $ vagrant up
    $ cd ..
    $ ansible-playbook site.yml
    
The env-setup script will setup the environment to alias ansible and
ansible-playbook with the included hosts file and private key for the
vagrant VM. The default playbook will install

From source/binaries (from an upstream source)

* Solr 4.0
* Fedora Commons 3.6.2
* FITS 0.6.2
* rvm, ruby 2.0.0-p195 and passenger 

From the packaging system

* redis
* mysql
* imagemagick
* clamav
* ffmpeg
* ghostscript 
* apache2

The site.yml file will do a test deploy of a dummy application,
the app will reside in the app directory.

The services will be available on 10.0.1.200 on the various port 80 and
8080 and solr/fedora contexts, etc...

The default usernames, passwords and database names etc... are in the
'group_vars/all' file.

## Suggested workflow usage

Boot up and provision the development VM

    myworkstation$ cd hacking && vagrant up
    myworkstation$ source hacking/env-setup
    myworkstation$ ansible-playbook site.yml

The hacking directory is a vboxsf shared directory, so any files in
there will appear in /vagrant in the virtual machine.

Place a copy of the code you want to develop in the hacking directory...

    myworkstation$ cp -a ~/develop/my_cool_hydra_head ~/develop/ansible-hydra/hydra-stack/hacking

Once you have a copy of the repo in place, the suggested workflow is,
run all tests, gem/bundle/rails commands inside the VM. So to kick off
a configuration for a hydra-head that uses sufia

    myworkstation$ cd ~/develop/ansible-hydra/hydra-stack/hacking
    myworkstation$ vagrant ssh
    hydra-stack$ pwd
    /home/vagrant
    hydra-stack$ cd /vagrant/my_cool_hydra_head

You can edit files either in the VM or on the host, just remember that
the files /vagrant directory is a shared location between virtualbox
and your physical machine.

Configure the rails app with the settings which you can find in
'group_vars/all' and hosts.vagrant (ip addresses). Configure the various
development: profiles to point to the services provided by the VM.

Once you have configured it up, you can do a bundle install to install
the needed dependancies.

    hydra-stack$ cd /vagrant/my_cool_hydra_head
    hydra-stack$ bundle install
    hydra-stack$ rails s

From your host machine you should be able to view http://10.0.1.200:3000

