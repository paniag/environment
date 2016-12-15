## apt-install.sh
## Mac Radigan

  apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118e89f3a912897c070adbf76221572c52609d
  echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
  apt-get update
  apt-cache policy docker-engine
  apt install -y docker-engine
  systemctl status docker

  add-apt-repository ppa:atareao/atareao
  apt install -y touchpad-indicator

  add-apt-repository ppa:nilarimogard/webupd8
  apt-get update
  apt install -y grive

  add-apt-repository ppa:alessandro-strada/ppa
  apt-get update
  apt-get install google-drive-ocamlfuse

  apt-get install -y openssh-server 
  apt-get install -y vim 
  apt-get install -y vim-gnome 
  apt-get install -y emacs 
  apt-get install -y zsh 
  apt-get install -y rlwrap 
  apt-get install -y screen 
  apt-get install -y tmux 
  apt-get install -y rxvt-unicode 
  apt-get install -y xfonts-terminus 
  apt-get install -y console-terminus 
  apt-get install -y git 
  apt-get install -y i3 
  apt-get install -y stumpwm 
  apt-get install -y elinks 
  apt-get install -y lynx 
  apt-get install -y links 
  apt-get install -y xclip 
  apt-get install -y gambc 
  apt-get install -y chicken-bin 
  apt-get install -y guile-2.0 
  apt-get install -y guile-2.0-dev 
  apt-get install -y mit-scheme 
  apt-get install -y clisp 
  apt-get install -y scbl 
  apt-get install -y ranger 
  apt-get install -y csound 
  apt-get install -y snd 
  apt-get install -y jack2 
  apt-get install -y sonic 
  apt-get install -y chuck 
  apt-get install -y sox 
  apt-get install -y eog 
  apt-get install -y lilypond 
  apt-get install -y imagemagick 
  apt-get install -y octave 
  apt-get install -y liboctave-dev 
  apt-get install -y gnuplot 
  apt-get install -y graphviz 
  apt-get install -y wmctrl 
  apt-get install -y kate 
  apt-get install -y rcconf 
  apt-get install -y conky 
  apt-get install -y dtrx 
  apt-get install -y bison 
  apt-get install -y flex 
  apt-get install -y cowsay 
  apt-get install -y xpdf 
  apt-get install -y texlive-latex-extra 
  apt-get install -y texlive-science 
  apt-get install -y texlive-full 
  apt-get install -y python-pygments 
  apt-get install -y ipython 
  apt-get install -y python-numpy 
  apt-get install -y python-matplotlib 
  apt-get install -y python-pip 
  apt-get install -y python3-pip 
  apt-get install -y cython 
  apt-get install -y htop 
  apt-get install -y ikarus 
  apt-get install -y root-system 
  apt-get install -y sbcl 
  apt-get install -y clisp 
  apt-get install -y axiom 
  apt-get install -y cmake 
  apt-get install -y ecl 
  apt-get install -y libboost-all-dev 
  apt-get install -y gnuradio 
  apt-get install -y liblapack-devel 
  apt-get install -y jack 
  apt-get install -y julia 
  apt-get install -y pdl 
  apt-get install -y inkscape 
  apt-get install -y blender 
  apt-get install -y libeigen3-dev 
  apt-get install -y xmonad 
  apt-get install -y llvm-dev 
  apt-get install -y hovercraft 
  apt-get install -y kvm 
  apt-get install -y tcl-dev 
  apt-get install -y libzmq5-dev 
  apt-get install -y ocaml 
  apt-get install -y groovy 
  apt-get install -y scala 
  apt-get install -y expect 
  apt-get install -y spark 
  apt-get install -y finch 
  apt-get install -y yacas 
  apt-get install -y maximus 
  apt-get install -y ikvm 
  apt-get install -y mutt/xenial 
  apt-get install -y ruby 
  apt-get install -y ruby-dev 
  apt-get install -y libz-dev 
  apt-get install -y libicu-dev 
  apt-get install -y build-essential 
  apt-get install -y python3-dev 
  apt-get install -y enscript 
  apt-get install -y autoconf 
  apt-get install -y automake 
  apt-get install -y libopenblas-base 
  apt-get install -y libopenblas-dev 
  apt-get install -y cscope 
  apt-get install -y global 
  apt-get install -y default-jdk 
  apt-get install -y racket 
  apt-get install -y ack-grep 
  apt-get install -y mdk 
  apt-get install -y torque-server 
  apt-get install -y torque-client 
  apt-get install -y torque-mom 
  apt-get install -y torque-pam 
  apt-get install -y docker 
  apt-get install -y libglew-dev 
  apt-get install -y freeglut3-dev 
  apt-get install -y libglm-dev 
  apt-get install -y docker 
  apt-get install -y libxcursor-dev 
  apt-get install -y haskell-platform 
  apt-get install -y chromium-browser 
  apt-get install -y g++-multilib 
  apt-get install -y libc6-dev 
  apt-get install -y libc6-dev-i386 
  apt-get install -y timidity 
  apt-get install -y libgl1-mesa-glx:i386 
  apt-get install -y libasound2:i386 
  apt-get install -y libfreetype6:i386 
  apt-get install -y postgis2_93 
  apt-get install -y pandoc 
  apt-get install -y gpp 
  apt-get install -y wine 
  apt-get install -y ditaa 
  apt-get install -y tightvncserver
  apt-get install -y vncclient
  apt-get install -y twm
  apt-get install -y fvwm
  apt-get install -y compiz-config-settings-manager
  apt-get install -y x11vnc
  apt-get install -y xvnc4viewer
  apt-get install -y vnc4server
  apt-get install -y libxrandr-dev
  apt-get install -y midori
  apt-get install -y libsoup2.4-dev 
  apt-get install -y libwebkit-dev
  apt-get install -y libgtk-3-dev
  apt-get install -y libwebkitgtk-3.0-dev
  apt-get install -y influxdb
  apt-get install -y nodejs
  apt-get install -y poppler-utils
  apt-get install -y cuneiform
  apt-get install -y qiv
  apt-get install -y mvn
  apt-get install -y mongodb
  apt-get install -y uzbl
  apt-get install -y grafana
  apt-get install -y elasticsearch
  apt-get install -y hydrogen
  apt-get install -y libportmidi-dev

## *EOF*
