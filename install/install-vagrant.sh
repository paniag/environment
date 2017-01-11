#!/bin/bash
## install-vagrant.sh
## Mac Radigan

  (mkdir -p /tmp/vagrant; \
   wget https://releases.hashicorp.com/vagrant/1.8.0/vagrant_1.8.0_x86_64.deb; \
   sudo dpkg -i vagrant_1.8.0_x86_64.deb \
   && vagrant plugin install vagrant-vbguest
  )

## *EOF*
