#!/bin/bash
apt-get install -y python-software-properties
add-apt-repository ppa:saltstack/salt
apt-get update -y
apt-get install -y salt-minion salt-master salt-syndic salt-ssh
