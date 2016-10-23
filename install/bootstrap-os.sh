#!/bin/bash
## bootstrap-os.sh
## Mac Radigan

  rm -Rf ./Desktop ./Documents ./Downloads ./Music ./Pictures ./Public ./Templates ./Videos

  mkdir -p ./temp ./xfer ./dat ./dev ./sandbox ./local ./repo ./archive

  sudo apt-get install -y git  

  (cd ~/local; git clone https://github.com/radiganm/environment.git ./environment)

  (cd ~/local/environment/install; sudo sh ./apt-install.sh)

  (cd ~/local/environment/install; sudo sh ./chicken-install.sh)

  (cd ~/local/environment/install; sudo sh ./python-install.sh)

  (cd ~/local/environment/install; sudo sh ./perl-install.sh)

  (cd ~/local/environment/install; sudo sh ./ruby-install.sh)

  (cd ~/local/environment/install; sudo sh ./git-configure.sh)

  (cd ~/local/environment/install; curl -O http://beta.quicklisp.org/quicklisp.lisp)
  (cd ~/local/environment/install; sudo sbcl ./lisp-install.lisp)

  (cd ~/local/environment/install; sudo sh ./torque-configure.sh)

  (cd ~/local/environment/install; sudo sh ./configure.sh)

  (cd ~; ln -fs ~/local/environment/home/.* .)

## *EOF*
