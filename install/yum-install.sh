#!/bin/bash
## yum-install.sh
## Mac Radigan

yum --releasever=6x update -y sl-release
yum update -y --skip-broken --exclude hdf5-devel
yum -y install R R-\*
yum -y install supercollider
yum -y install blender
yum -y install p7zip
yum -y install lyx
yum -y install xsel xvkbd
yum -y install livetex-hyperref
yum -y install lynx
yum -y install gcal
yum -y install pcl pcl-devel pcl-tools pcl-doc
yum -y install cmake28*
yum -y install glew-devel
yum -y install glibc-devel
yum -y install glibc-static
yum -y install sdlmame
yum -y install SDL*
yum -y install glut3-dev
yum -y install git-1.7.11.3-1.el6.rfx.x86_64
#yum -y install git
yum -y install easy_install
yum -y update python
yum -y update python3
yum -y install ipython
yum -y install python-matplotlib
#yum -y install python-ipython-notebook
yum -y install scipy
yum -y install python-pandas
yum -y install sympy
yum -y install python-nose
yum -y install python-devel
yum -y install gcc
yum -y install gcc-c++
yum -y install gcc-gfortran
yum -y install java
yum -y install boost
yum -y install epel-release
yum -y install root*
yum -y install opencv
yum -y install opengl
yum -y install kmod-nvidia
yum -y install fftw
yum -y install lapack
yum -y install blas
yum -y install gnuplot
yum -y install hdf5
yum -y install hdf5-devel
yum -y install gdal
yum -y install hdf
yum -y install hdf-devel
yum -y install postgresql
yum -y install mysql
yum -y install libxml2
yum -y install xv
yum -y install imagemagick
yum -y install eog
yum -y install zsh
yum -y install screen
yum -y install rsync
yum -y install vim
yum -y install gvim
yum -y install maven2
yum -y install pcre
yum -y install pcre-devel
yum -y install blas-devel
yum -y install atlas-devel
yum -y install lapack-devel
yum -y install readline
yum -y install readline-devel
yum -y install ncurses-devel
yum -y install ncurses
yum -y install readline-devel
yum -y install netcdf
yum -y install netcdf-devel
yum -y install qhull-devel
yum -y install python-pip
yum -y install openstack-utils openstack-keystone python-keystoneclient 
yum -y install openstack-glance
yum -y install memcached memcached-devel libmemcached-devel python-memcached mod_wsgi openstack-dashboard
yum -y install --skip-broken openstack-*
yum -y install kvm kmod-kvm
yum -y install qemu-kvm qemu-img
yum -y install virt-manager libvirt qemu-system-x86
yum -y install qemu-kvm.x86_64
yum -y install git
yum -y install glib
yum -y install glib-devel
yum -y install vnc
yum -y install ffmpeg
yum -y install ffmpeg
yum -y install gimp
yum -y install desktop-effects
yum -y install compiz-gnome
yum -y install tftp-server
yum -y install gcc-c++.x86_64 gcc-gfortran.x86_64 gcc.x86_64 libgcc.x86_64 
yum -y install binutils.x86_64 binutils-devel.x86_64 libstdc++* 
yum -y install blas-static.x86_64 blas-devel.x86_64 blas.x86_64 
yum -y install lapack-static.x86_64 lapack-devel.x86_64 lapack.x86_64 
yum -y install texinfo.x86_64 texinfo-tex.x86_64 qhull-devel.x86_64 qhull.x86_64 
yum -y install gperf.x86_64 
yum -y install ncurses-devel.x86_64 ncurses-static.x86_64 ncurses-base.x86_64 ncurses.x86_64 ncurses-term.x86_64 
yum -y install GraphicsMagick.x86_64 GraphicsMagick-c++.x86_64 GraphicsMagick-c++-devel.x86_64 GraphicsMagick-devel.x86_64 
yum -y install readline-static.x86_64 readline-devel.x86_64 readline.x86_64 
yum -y install suitesparse-static.x86_64 suitesparse-devel.x86_64 suitesparse.x86_64 suitesparse-doc* 
yum -y install flex.x86_64 flex-static.x86_64 bison.x86_64 bison-devel.x86_64 bison-runtime.x86_64 
yum -y install qrupdate.x86_64 qrupdate-devel.x86_64 
yum -y install curl.x86_64 libcurl.x86_64 libcurl-devel.x86_64 
yum -y install glpk.x86_64 glpk-devel.x86_64 glpk-static.x86_64 glpk-utils.x86_64 
yum -y install hdf5.x86_64 hdf5-devel.x86_64 hdf5-static.x86_64 
yum -y install pcre-static.x86_64 pcre-devel.x86_64 pcre.x86_64 
yum -y install mesa-libGL.x86_64 mesa-libGLU.x86_64 mesa-libGL-devel.x86_64 mesa-libGLU-devel.x86_64 
yum -y install gnuplot.x86_64 gnuplot-common.x86_64 gnuplot-doc* gnuplot-latex* 
yum -y install freetype-devel.x86_64 freetype.x86_64 
yum -y install fltk-static.x86_64 fltk-devel.x86_64 fltk.x86_64 
yum -y install fftw* 
yum -y install gperf
yum -y install flex
yum -y install bison
yum -y install umfpack
yum -y install qrupdate
yum -y install amd
yum -y install colamd
yum -y install ccolamd
yum -y install cholmod
yum -y install cxsparse
yum -y install curl
yum -y install glpk
yum -y install graphicsmagick++
yum -y install hdf5
yum -y install hdf5-devel
yum -y install qhull
yum -y install texi2dvi
yum -y install freeglut-devel
yum -y install freetype.x86_64
yum -y install freetype-devel.x86_64
yum -y install curl
yum -y install libcurl
yum -y install libcurl-devel
yum -y install kernel-headers kernel-devel
yum -y install SDL-devel a52dec a52dec-devel alsa-lib-devel faac faac-devel faad2 faad2-devel
yum -y install freetype-devel giflib gsm gsm-devel imlib2 imlib2-devel lame lame-devel libICE-devel libSM-devel libX11-devel
yum -y install libXau-devel libXdmcp-devel libXext-devel libXrandr-devel libXrender-devel libXt-devel
yum -y install id3tag-devel libogg libvorbis vorbis-tools mesa-libGL-devel mesa-libGLU-devel xorg-x11-proto-devel xvidcore xvidcore-devel zlib-devel
yum -y install amrnb-devel amrwb-devel
yum -y install libtheora theora-tools
yum -y install glibc gcc gcc-c++ autoconf automake libtool
yum -y install ncurses-devel
yum -y install libdc1394 libdc1394-devel
yum -y install yasm nasm
yum -y install libvpx*
yum -y install git-core
yum -y install opencore-amr-devel
yum -y install ccsm emerald-themes compizconfig-backend-gconf fusion-icon-gtk emerald compiz-fusion compiz-fusion-gnome libcompizconfig compiz-gnome compiz-bcop compiz compizconfig-python compiz-fusion-extras compiz-fusion-extras-gnome
yum -y install freeglut
yum -y install openmpi openmpi-devel
yum -y install libXmu-devel
yum -y install compiz-fusion-unsupported-gnome compiz-gnome compiz-bcop
yum -y install gconf-editor
yum -y install java-1.6.0-openjdk
yum -y install armadillo
yum -y install liblog4cxx liblog4cxx-devel
yum -y install QuantLib
yum -y install libyaml-devel libffi-devel
yum -y install rubygems
yum -y install ruby*
yum -y install rvm
yum -y install libicu-devel
yum -y install jack-audio-connection-kit
yum -y install glibmm24 glibmm24-devel
yum -y install rlwrap
yum -y install gstreamer*
yum -y install gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-ugly
yum -y --enablerepo=linuxtech-testing install rosegarden4
yum -y --enablerepo=linuxtech-testing install qjackctl qsynth fluid-soundfont-gm
yum -y --enablerepo=linuxtech-testing install lmms
yum -y --enablerepo=linuxtech-testing install lmms-vst
yum -y install libsamplerate-devel
yum -y install libffado libffado-devel
yum -y install libsndfile-devel
yum -y install pixman pixman-devel
yum -y install liblo-devel
yum -y install ladspa-devel
yum -y install liblrdf-devel
yum -y install torque-server torque torque-scheduler torque-mom torque-client
yum -y install lv2 lv2-devel
yum -y install muse
yum -y install qtwebkit
yum -y update glib
yum -y install yaws
yum -y install hydrogen
yum -y --enablerepo=linuxtech-testing install qtractor
yum -y install rubberband rubberband-devel
yum -y install sord sord-devel
yum -y install globulus-gsi
yum -y groupinstall "Development Tools"
yum -y --enablerepo=rpmforge install unrar
yum -y install gtk+-devel
yum -y install asio-devel
yum -y install activemq activemq-client
yum -y install libvirt
yum -y install expect
yum -y install monit
yum -y install finch
yum -y install mcabber
yum -y install gimp
yum -y install gmp-devel
yum -y install mpc
yum -y install mpfr-devel
yum -y install glibc-devel
yum -y install fluidsynth
yum -y install fltk
yum -y install fltk-fluid
yum -y install cmus
yum -y install @xfce
yum -y install i3
yum -y install conky
yum -y install asciidoc
yum -y install xcb-proto
yum -y install lib-xcb*
yum -y install xcb-util-devel
yum -y install yajl-devel
yum -y install libev-devel
yum -y install xorg-x11-server-devel
yum -y install libXext-devel
yum -y install qtractor
yum -y install xbacklight
yum -y install tmux
yum -y install phpmyadmin
yum -y install xclip
yum -y install xfce4-*
yum -y install mpg123
yum -y install libcaca
yum -y install caca-utils
yum -y install highlight
yum -y install w3m
yum -y install mediainfo
yum -y install terminator
yum -y install esound
yum -y install esound-devel
yum -y install qt5*
yum -y install bluez
yum -y install freetds
yum -y install gsl-devel
yum -y install plplot
yum -y install plplot-devel
yum -y install wxWidgets
yum -y install wxWidgets-devel
yum -y install mpi
yum -y install pslib
yum -y install pslib-devel
yum -y install xulrunner
yum -y install girara
yum -y install girara-devel
yum -y install mutt
yum -y install i3lock
yum -y install dssi-devel
yum -y install fluidsynth-dssi
yum -y install hexter-dssi
yum -y install audacity
yum -y install fluidsynth-devel
yum -y install perl-WWW-Mechanize
yum -y install xscreensaver
yum -y install --enablerepo=linuxtech-testing perl-Curses
yum -y install --enablerepo=linuxtech-testing perl-MIDI-Perl
yum -y install --enablerepo=linuxtech-testing perl-MIDI-ALSA
yum -y install anacron
yum -y install lash-devel
yum -y install nvi
yum -y install nodejs
yum -y install scons
yum -y install libshout-devel
yum -y install libmad
yum -y install libmad-devel
yum -y install libid3tag-devel
yum -y install protobuf-devel
yum -y install protobuf-lite
yum -y install protobuf-lite-devel
yum -y install flac-devel
yum -y install portaudio
yum -y install portaudio-devel
yum -y install portmidi-devel
yum -y install banshee
yum -y groupinstall "Development Tools"
yum -y install qt4-devel
yum -y install libmp4v2-devel 
yum -y install libsndfile-devel 
yum -y install libvorbis-devel
yum -y install portaudio-devel 
yum -y install libshout-devel
yum -y install python-devel
yum -y install portmidi-devel
yum -y install qt-webkit-devel
yum -y install taglib-devel
yum -y install flac-devel
yum -y install protobuf-devel
yum -y install vamp-plugin-sdk-devel
yum -y install libchromaprint-devel
yum -y install rubberband-devel
yum -y install libusbx-devel
yum -y install sbcl
yum -y install gpg
yum -y install vino
yum -y install ibus*
yum -y install html2text
yum -y install ecryptfs-utils
yum -y install qiv
yum -y install freemaker
yum -y install boost.devel.i686
yum -y install libodbc
yum -y install libodbc-devel
yum -y install unixODBC
yum -y install unixODBC-devel
yum -y install kernel*
yum -y install selinux-policy*
yum -y install --setopt=protected_multilib=false *openldap*
yum -y install phpldapadmin
yum -y install npm
yum -y install guile
yum -y install guile-devel
yum -y install tetex
yum -y install tetex-fonts
yum -y install tetex-dvips
yum -y install tetex-latex
yum -y install ghostscript
yum -y install cowsay
yum -y install cowthink
yum -y install espeak
yum -y install --enablerepo=linuxtech-testing aoss
yum -y install multitail
yum -y install lftp
yum -y install vlc --skip-broken
yum -y install latex2html
yum -y install figlet
yum -y install dos2unix
yum -y install unix2dos
yum -y install tmux
yum -y install byobu

## *EOF*
