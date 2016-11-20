#!/bin/bash
## install-google-earth
## Mac Radigan

  dpkg --add-architecture i386

  apt-get install -y msttcorefonts
  apt-get install -y libc6-i386
  apt-get install -y libglib2.0-0:i386
  apt-get install -y libglu1-mesa:i386
  apt-get install -y libglu1-mesa-glx:i386
  apt-get install -y libext6:i386
  apt-get install -y libxrender1:i386
  apt-get install -y libx11-6:i386
  apt-get install -y libfontconfig16:i386
  apt-get install -y lsb-core

  #wget -O /tmp/google-earth64.deb http://dl.google.com/dl/earth/client/current/google-earth-stable_current_i386.deb
  wget -O /tmp/google-earth64.deb http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
  dpkg -i /tmp/google-earth64.deb
  rm -f /tmp/google-earth64.deb

## *EOF*
