#!/bin/sh
## home.sh

  (mkdir -p ~/local; cd ~/local; git clone https://github.com/radiganm/environment.git)
  (cd ~; ln -fs ~/local/environment/home/.* .)

## *EOF*
