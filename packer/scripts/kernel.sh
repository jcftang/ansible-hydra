#!/bin/bash

# install the backported kernel
apt-get update
apt-get install -y linux-image-generic-lts-saucy linux-headers-generic-lts-saucy

# reboot
echo "Rebooting the machine..."
reboot
sleep 60
