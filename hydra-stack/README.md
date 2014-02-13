## Requirements

Working installation of 

* ansible 1.4.x or newer
* vagrant 1.4.x or newer
* virtualbox 4.3.x or newer

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
8080 and solr/fedora contexts.
