#!/bin/bash
## install-virtualbox-5.0.sh
## Mac Radigan

  https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
  sudo apt-get update
  sudo apt-get install virtualbox-5.0

  sudo vagrant plugin install vagrant-vbguest

  wget http://download.virtualbox.org/virtualbox/5.0.30/Oracle_VM_VirtualBox_Extension_Pack-5.0.30-112061.vbox-extpack

## *EOF*
