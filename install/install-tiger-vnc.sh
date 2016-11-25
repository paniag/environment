#!/bin/bash
## install-tiger-vnc.sh
## Mac Rdigan

  wget https://bintray.com/artifact/download/tigervnc/stable/ubuntu-14.04LTS/amd64/tigervncserver_1.6.0-3ubuntu1_amd64.deb
  sudo dpkg -i tigervncserver_1.6.0-3ubuntu1_amd64.deb
  sudo apt-get -f install

## *EOF*
