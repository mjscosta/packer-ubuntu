#!/bin/bash

# Set up sudo
echo "%vagrant ALL=NOPASSWD:ALL" > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

# Setup sudo to allow no-password sudo for "sudo"
usermod -a -G sudo vagrant

# Installing vagrant keys
mkdir /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
cd /home/vagrant/.ssh
wget --no-check-certificate 'https://bitbucket.org/mjscosta/vagrant/raw/37610c7329a0ee30ab1a64be2f05df883131031c/vagrant-rsa.pub' -O authorized_keys
touch authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
