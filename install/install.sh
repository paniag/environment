#!/bin/bash
## install.sh

opt=/opt

## openmpi
ln -s /usr/lib64/openmpi/bin/mpicc /usr/bin/mpicc
ln -s /usr/lib64/openmpi/bin/mpic++ /usr/bin/mpic++

## scilab
mkdir scilab
cd scilab
curl -O http://www.scilab.org/download/5.3.3/scilab-5.3.3.bin.linux-x86_64.tar.gz
tar -zxvf scilab-5.3.3.bin.linux-x86_64.tar.gz
rsync -avhr scilab-5.3.3.bin.linux-x86_64 ${opt}
(cd ${opt}; ln -s scilab-5.3.3.bin.linux-x86_64 scilab)

## cuda
mkdir cuda
cd cuda
curl -O http://developer.download.nvidia.com/compute/cuda/5_0/rel-update-1/installers/cuda_5.0.35_linux_64_rhel6.x-1.run
chmod 775 cuda_5.0.35_linux_64_rhel6.x-1.run
yes | ./cuda_5.0.35_linux_64_rhel6.x-1.run

## octave sources
mkdir octave
cd octave
wget ftp://ftp.gnu.org/gnu/octave/octave-3.6.4.tar.gz
tar -zxvf octave-3.6.4.tar.gz
rsync -avhr Soctave-3.6.4 ${opt}
(cd ${opt}; ln -s octave-3.6.4 octave)

## octave dependencies
mkdir suitesparse
cd suitesparse
curl -O http://www.cise.ufl.edu/research/sparse/SuiteSparse/SuiteSparse-4.2.1.tar.gz
tar -zxvf SuiteSparse-4.2.1.tar.gz
rsync -avhr SuiteSparse-4.2.1 ${opt}
(cd ${opt}; ln -s SuiteSparse-4.2.1 SuiteSparse)

## openmapserver
curl -O http://download.osgeo.org/mapserver/mapserver-6.2.1.tar.gz
curl -O http://download.osgeo.org/mapserver/mapcache-1.0.0.tar.gz
curl -O http://download.osgeo.org/mapserver/tinyows-1.1.0.tar.bz2
curl -O http://download.osgeo.org/mapserver/mapserver-suite-12.11.tar.gz

## qemu
curl -O http://wiki.qemu-project.org/download/qemu-1.4.1.tar.bz2

## maven2
curl -O http://apache.cs.utah.edu/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz

## jsoftware
curl -O http://www.jsoftware.com/download/j701a_linux64.sh
sudo sh ./j701a_linux64.sh

## ffmpeg
git clone git://source.ffmpeg.org/ffmpeg.git
(cd ffmpeg; \
git checkout n1.2; \
./configure --enable-version3 --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libvpx --enable-libfaac \
--enable-libmp3lame --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libvo-aacenc --enable-libxvid --disable-ffplay \
--enable-shared --enable-gpl --enable-postproc --enable-nonfree --enable-avfilter --enable-pthreads --extra-cflags=-fPIC;
make )

## virt-goodies
#svn co http://bazaar.launchpad.net/~ubuntu-virt/virt-goodies/trunk/changes
curl -O http://archive.ubuntu.com/ubuntu/pool/universe/v/virt-goodies/virt-goodies_0.4.orig.tar.gz
tar -zxvf virt-goodies_0.4.orig.tar.gz

## jython
wget -O jython-2.7-b1.jar "http://search.maven.org/remotecontent?filepath=org/python/jython/2.7-b1/jython-2.7-b1.jar"

## libobj
curl -O http://people.cs.kuleuven.be/~ares.lagae/libobj/obj-0.1.tar.gz
tar -zxvf obj-0.1.tar.gz
(cd obj-0.1; ./configure && make && sudo make install)

## pyqt4
# # sip 4.15.4
curl -O http://sourceforge.net/projects/pyqt/files/sip/sip-4.15.4/sip-4.15.4.tar.gz
tar -zxvf ./sip-4.15.4.tar.gz
cd ./sip-4.15.4
python ./configure.py
make
sudo make install
# # pyqt4 4.10.3
curl -O http://sourceforge.net/projects/pyqt/files/PyQt4/PyQt-4.10.3/PyQt-x11-gpl-4.10.3.tar.gz
tar -zxvf ./PyQt-x11-gpl-4.10.3.tar.gz
cd ./PyQt-x11-gpl-4.10.3
python ./configure.py
make
sudo make install
# # pyqt4 4.9.6
# wget "http://downloads.sourceforge.net/project/pyqt/PyQt4/PyQt-4.9.6/PyQt-x11-gpl-4.9.6.tar.gz?r=http%3A%2F%2Fstackoverflow.com%2Fquestions%2F13981964%2Fwhy-are-sip-and-pyqt4-not-getting-along&ts=1390789685&use_mirror=softlayer-ams"
# tar -zxvf ./PyQt-x11-gpl-4.9.6.tar.gz
#cd ./PyQt-x11-gpl-4.9.6
# python ./configure.py
# make
# sudo make install

## mm-common
git clone https://github.com/GNOME/mm-common.git
cd ./mm-common
./autogen.sh
./configure --enable-network
make && sudo make install

## glibmm
git clone https://github.com/GNOME/glibmm.git
cd glibmm
./autogen.sh
./configure
make && sudo make install

## jack2
git clone https://github.com/jackaudio/jack2
(cd jack2; ./waf configure --dbus --alsa)
(cd jack2; ./waf build && sudo ./waf install)

## ardour
git clone git://git.ardour.org/ardour/ardour.git
cd ardour
git branch 2.0-ongoing
./waf configure
./waf

## vkeybd
curl -O ftp://ftp.suse.com/pub/people/tiwai/vkeybd/vkeybd-0.1.18d.tar.bz2
tar -jxvf vkeybd-0.1.18d.tar.bz2
(cd vkeybd-0.1.18d.tar.bz2; make && sudo make install)

## bristol
wget "http://downloads.sourceforge.net/project/bristol/bristol/0.60/bristol-0.60.9.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fbristol%2F%3Fsource%3Ddlp&ts=1391321137&use_mirror=iweb"
tar -zxvf ./bristol-0.60.9.tar.gz
(cd ./bristol-0.60.9.tar.gz; ./configure)
(cd ./bristol-0.60.9.tar.gz; make && sudo make install)

## abcmidi
git clone https://github.com/laughingman182/abcmidi.git
(cd clone; ./configure && make && sudo make install)

## timidity 
wget "http://downloads.sourceforge.net/project/timidity/TiMidity%2B%2B/TiMidity%2B%2B-2.14.0/TiMidity%2B%2B-2.14.0.tar.bz2?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Ftimidity%2Ffiles%2FTiMidity%252B%252B%2FTiMidity%252B%252B-2.13.0%2F&ts=1391152277&use_mirror=softlayer-dal"
tar -jxvf ./TiMidity%2B%2B-2.14.0.tar.bz2
(cd ./TiMidity-2.14.0; ./configure --enable-alsa --enable-sound=alsa --enable-audio=jack; make)
(cd ./TiMidity-2.14.0; sudo make install)

## timidity patches 1.0.0
curl -O http://distro.ibiblio.org/pdaxrom/download/1.1.0beta4/src/timidity-patches-1.0.0.tar.bz2
tar -jxvf timidity-patches-1.0.0.tar.bz2
cd timidity-patches-1.0.0

## timidity lib 0.2
#broken# wget http://www.loria.fr/~pagel/TIMIDITY/timidity-lib-0.1.tar.gz
curl -O http://ieee.uwaterloo.ca/sca/www.cgs.fi/tt/timidity/timidity-lib-0.2.tar.gz
mkdir timidity-lib-0.2
(cd timidity-lib-0.2; tar -zxvf ../timidity-lib-0.2.tar.gz)

## pyalsa
curl -O ftp://ftp.alsa-project.org/pub/pyalsa/pyalsa-1.0.26.tar.bz2
tar -jxvf pyalsa-1.0.26.tar.bz2
(cd pyalsa-1.0.26; python setup.py build)
(cd pyalsa-1.0.26; sudo python setup.py install)

# ## Steev's MIDI library
# wget http://www.bluedust.dontexist.com/pub/sources/midilib-1.6.tar.gz
# tar -zxvf midilib-1.6.tar.gz
# (cd midilib; make)

## SAPP Midi File library
curl -O http://midifile.sapp.org/download/midifile.tar.bz2
tar -jxvf midifile.tar.bz2
(cd midifile; make)

## libjdkmidi
svn checkout http://libjdkmidi.googlecode.com/svn/trunk/ libjdkmidi-read-only
(cd libjdkmidi-read-only/c++; mkdir dist; cd dist; ../configure && make)

## abcMIDI
wget "http://downloads.sourceforge.net/project/abc/abcmidi/abcmidi/abcMIDI-2014-01-28.zip?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fabc%2F&ts=1391413354&use_mirror=softlayer-dal"
unzip abcMIDI-2014-01-28.zip
(cd abcmidi; ./configure && make && make install)

## abcpp
#wget http://abcplus.sourceforge.net/abcm2ps-6.6.22-1.src.rpm
curl -O http://moinejf.free.fr/abcm2ps-6.6.22.tar.gz
tar -zxvf abcm2ps-6.6.22.tar.gz
(cd abcm2ps-6.6.22; ./configure && make && sudo make install)

## alien
git clone git://git.kitenet.net/alien
(cd alien; perl Makefile.PL && make && sudo make install)

## non
curl -O http://bandshed.net/avlinux6-debs/non-things/NON-1.9.4+GIT20130923.zip
unzip NON-1.9.4+GIT20130923.zip
(cd NON-1.9.4+GIT20130923; alien -r non-mixer-1.9.4+GIT20130923avlinux6-1_i386.deb)
(cd NON-1.9.4+GIT20130923; alien -r non-sequencer_1.9.3+git20120426avlinux6-1_i386.deb)
(cd NON-1.9.4+GIT20130923; alien -r non-session-manager-1.9.4+GIT20130923avlinux6-1_i386.deb)
(cd NON-1.9.4+GIT20130923; alien -r non-timeline-1.9.4+GIT20130923avlinux6-1_i386.deb)
(cd NON-1.9.4+GIT20130923; alien -r non-toolkit-1.9.4+GIT20130917avlinux6-1_i386.deb)

## ecasound
curl -O http://ecasound.seul.org/download/ecasound-2.9.1.tar.gz
tar -zxvf ecasound-2.9.1.tar.gz
(cd ecasound-2.9.1; ./configure && make && sudo make install)

## cairo
curl -O http://cairographics.org/releases/cairo-1.12.0.tar.gz
tar -zxvf cairo-1.12.0.tar.gz
(cd cairo-1.12.0; ./configure && make && sudo make install)

## drobilla (patchage)
svn co http://svn.drobilla.net/lad/trunk drobilla-lad
cd drobilla-lad

## muse score
svn co http://svn.drobilla.net/lad/trunk drobilla-lad
curl -O http://ftp.osuosl.org/pub/musescore/releases/MuseScore-1.3/mscore-1.3.tar.bz2
tar -jxvf mscore-1.3.tar.bz2
(cd mscore-1.3; make && sudo make install)

## lilypond
curl -O http://download.linuxaudio.org/lilypond/binaries/linux-64/lilypond-2.18.0-1.linux-64.sh
sh ./lilypond-2.18.0-1.linux-64.sh

## exmid
curl -O http://zeusw.org/download/exmid/2007-10-27/exmid-sources_2007-10-27.tar.gz
tar -zxvf exmid-sources_2007-10-27.tar.gz
(cd exmid-sources_2007-10-27; make)

## vamp
curl -O http://code.soundsoftware.ac.uk/attachments/download/690/vamp-plugin-sdk-2.5.tar.gz
tar -zxvf vamp-plugin-sdk-2.5.tar.gz
(cd vamp-plugin-sdk-2.5; ./configure && make && sudo make install)

## libsmf
wget "http://downloads.sourceforge.net/project/libsmf/libsmf/1.3/libsmf-1.3.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Flibsmf%2F%3Fsource%3Ddlp&ts=1392797820&use_mirror=iweb"
tar -zxvf libsmf-1.3.tar.gz
(cd libsmf-1.3; ./configure && make && sudo make install)

## libmemcached
wget https://launchpad.net/libmemcached/1.0/1.0.18/+download/libmemcached-1.0.18.tar.gz
tar -zxvf libmemcached-1.0.18.tar.gz
(cd libmemcached-1.0.18; ./configure && make && sudo make install)

## python 3
wget http://legacy.python.org/ftp//python/3.3.4/Python-3.3.4.tar.xz
tar -pxvf Python-3.3.4.tar.xz
(cd Python-3.3.4; ./configure && make && sudo make install)
sudo curl https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | python3
easy_install numpy python-dateutil pytz pyparsing six

## rtaudio
git clone https://github.com/thestk/rtaudio.git

## mpc
wget ftp://gcc.gnu.org/pub/gcc/infrastructure/mpc-0.8.1.tar.gz
tar zxvf mpc-0.8.1.tar.gz
cd mpc-0.8.1
./configure --disable-shared --enable-static --prefix=/tmp/gcc --with-gmp=/tmp/gcc --with-mpfr=/tmp/gcc
make && make check && sudo make install

## gmp
wget ftp://gcc.gnu.org/pub/gcc/infrastructure/gmp-4.3.2.tar.bz2
bunzip2 gmp-4.3.2.tar.bz2
tar xvf gmp-4.3.2.tar
cd gmp-4.3.2
./configure --disable-shared --enable-static --prefix=/tmp/gcc
make && make check && sudo make install

## minixml
curl -O http://www.msweet.org/files/project3/mxml-2.8.tar.gz
tar -zxvf mxml-2.8.tar.gz
(cd mxml-2.8; ./configure; make && sudo make install)

## ZynAddSubFX
wget "http://downloads.sourceforge.net/project/zynaddsubfx/zynaddsubfx/2.4.3/ZynAddSubFX-2.4.3.tar.bz2?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fzynaddsubfx%2Ffiles%2F%3Fsource%3Dnavbar&ts=1399101561&use_mirror=superb-dca3"
bunzip2 ZynAddSubFX-2.4.3.tar.bz2
tar -xvf ZynAddSubFX-2.4.3.tar
(cd ZynAddSubFX-2.4.3; cmake .; make && sudo make install)

## xcb-cursor
git clone git://anongit.freedesktop.org/xcb/util-cursor
(cd util-cursor; git submodule update --init)
(cd util-cursor; ./autogen.sh; ./configure; make && sudo make install)

## mp3blaster
wget "http://downloads.sourceforge.net/project/mp3blaster/mp3blaster/mp3blaster-3.2.5/mp3blaster-3.2.5.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fmp3blaster%2Ffiles%2F&ts=1401497331&use_mirror=colocrossing"
tar -zxvf mp3blaster-3.2.5.tar.gz
(cd mp3blaster-3.2.5; ./configure; make && sudo make install)

## ranger
curl -O http://nongnu.org/ranger/ranger-stable.tar.gz
tar -zxvf ranger-stable.tar.gz
(cd ranger-1.6.1; make && sudo make install)

## baudline
curl -O http://www.baudline.com/baudline_1.08_linux_x86_64.tar.gz
tar -zxvf baudline_1.08_linux_x86_64.tar.gz
sudo mkdir -p /opt
sudo rsync -avhr baudline_1.08_linux_x86_64 /opt
sudo ln -s /opt/baudline_1.08_linux_x86_64 /opt/baudline

## extace
wget "http://downloads.sourceforge.net/project/extace/eXtace/1.9.9/extace-1.9.9.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fextace%2F%3Fsource%3Ddlp&ts=1401539739&use_mirror=colocrossing"
tar -zxvf extace-1.9.9.tar.gz
(cd extace-1.9.9; ./configure; make && sudo make install)

## freemarker
wget "http://downloads.sourceforge.net/project/freemarker/freemarker/2.2.8/freemarker-2.2.8.tar.gz?r=http%3A%2F%2Ffreemarker.org%2Ffreemarkerdownload.html&ts=1406457603&use_mirror=iweb"
wget "http://downloads.sourceforge.net/project/fmpp/fmpp/0.9.14/fmpp_0.9.14.tar.gz?r=http%3A%2F%2Ffmpp.sourceforge.net%2F&ts=1406457764&use_mirror=colocrossing"
tar -zxvf freemarker-2.2.8.tar.gz
tar -zxvf fmpp_0.9.14.tar.gz

## clewn
wget "http://downloads.sourceforge.net/project/clewn/clewn/clewn-1.15/clewn-1.15.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fclewn%2Ffiles%2Fclewn%2Fclewn-1.15%2F&ts=1406884855&use_mirror=tcpdiag"
tar -zxvf clewn-1.15.tar.gz
(cd clewn-1.15; ./configure && make && sudo make install)

## gtags
curl -O http://tamacom.com/global/global-6.3.2.tar.gz
tar -zxvf global-6.3.2.tar.gz
(cd global-6.3.2; ./configure && make && sudo make install)

## *EOF* 
