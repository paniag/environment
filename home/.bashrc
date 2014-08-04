## .bashrc
## Mac Radigan

if [ -f ~/.`uname -n`.alias ]; 
then
 . ~/.`uname -n`.alias
fi
alias aconf="vi ~/.`uname -n`.alias"

#export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64
export XMODIFIERS="@im=SCIM"
export GTK_IM_MODULE="scim"
export XIM_PROGRAM="scim -d"
export QT_IM_MODULE="scim"
export JAVA_HOME=/opt/jdk/jre
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export VST_PATH=~/dat/music/lmms/vst
export RLWRAP_HOME=~
export RLWRAP_EDITOR="vi +%L"
export RLWRAP_FILTERDIR="~/.rlwrap"
export CLASSPATH=/opt/libreadline-java:$CLASSPATH
export PATH=$PATH:~/bin:~/.rlwrap:/usr/local/bin:/opt/maven/bin:/opt/jython/bin:/opt/ardour/bin:/usr/local/bin:/opt/non/bin:~/bin:/opt/lilypond/bin:/opt/eli:/opt/Qt/5.3/gcc_64/bin
export PATH=$PATH:/opt/scilab/bin:/opt/j/bin:/opt/jython/bin:/opt/julia/bin:/opt/gdl/bin:/opt/firefox:/opt/midiedit/bin:/opt/gradle/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/nvidia:/opt/java-readline:/usr/lib64:/usr/lib64/boost
export M3_HOME=/opt/maven
export M3=$M3_HOME/bin
export EDITOR=vim
export PAGER=vim
export DIRSTACKSIZE=8
export HISTSIZE=1000
export HISTFILESIZE=0
export GPG_TTY=`tty`

## basic
set -o vi
alias cls='clear'
alias reload='. ~/.zshrc'
alias re='. ~/.zshrc'
alias conf='vi ~/.zshrc'
alias vconf='vi ~/.vimrc'
alias iconf='vi ~/.i3/config'
alias sconf='vi ~/.screenrc'
alias mx='chmod 755 '
alias vc='sudo chvt '
alias vi='vim -O '
alias vio='vim -o '
alias gvim='gvim -c ":colorscheme torte"'
alias ll='ls -l'
alias la='ls -la'
alias lsr='ls -rtl'
alias sc='screen'
alias sl='screen -list'
alias sx='startx'
alias rw='rlwrap -a -m -z shell '
alias rs='rsync -avhr '
alias dh='dirs -v'
alias xa='xargs -I{}'
alias lesser='/usr/share/vim/vim72/macros/less.sh'
alias less='/usr/bin/less'
alias un='uname '
alias una='uname -a'
alias unn='uname -n'
alias me='ps -uxf | grep mac'
alias untar='tar -zxvf'
alias rs='rsync -avhr'
alias dim='xbacklight'
alias lock='i3lock -c 000000'
alias jo='jobs'
alias evince='evince $* 1>/dev/null 2>/dev/null'
alias ev='evince'
#export DISPLAY=`uname -n`:0.0

## environment
alias econf='vi ~/local/environment/install/'
alias yumi='sudo yum -y install '
alias jcat='cat ~/temp/notes.txt'
alias jconf='vi ~/temp/notes.txt'

## services
alias ck='ps -ef | grep -E "(jackd|lmms)"'
alias mc-tool='memcached-tool 127.0.0.1:11211 '

## network
alias wget='wget --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" '

## communication
alias mutt='env DISPLAY= mutt'
alias mu='mutt'
alias xmpp='mcabber'

## graphics
alias qiv='qiv -R'
alias xv='qiv -R'
alias gimp='gimp -s 2>/dev/null 1>/dev/null &'
alias ink='inkscape 2>/dev/null 1>/dev/null &'

## text
alias fmpp='/opt/fmpp/bin/fmpp'

## audio
#alias jack='jackd -v -a -R -P -d &'
alias jack1='pasuspender -- jackd -d alsa -d hw:0 & '
alias jack2-start='jack_control start'
alias jack2-stop='jack_control stop'
alias qj='qjackctl &'
alias qsy='qsynth &'
alias rose='rosegarden &'
alias ardour='ardour3 &'
alias vk='vkeybd --octave 6 --name "VK" &'
alias utau='LANG=ja_JP.utf8 wine ~/UTAU/utau.exe'
alias zyn='zynaddsubfx &'
alias qt='qtractor &'
alias mp='mp3blaster'
alias mpa='mp3blaster ~/.playlist'
alias mpl='mp3blaster -l ~/.playlist-full'
alias mpa='mp3blaster -a ~/.playlist'
alias baudline='/opt/baudline/baudline'
alias sndpeek='/opt/sndpeek/bin/sndpeek'
alias mix='alsamixer'
alias calf='jackcalfhost'

## xmpp
alias finch='finch'
alias xm='mcabber'

## root
alias ro='rw root -l'
alias rx='rw root -l -q -x -b'

## lisp
alias cl='rw sbcl'

## python
#alias python='python3'
alias python='python2.6'
alias pip='pip3'
alias py='ipython3 --pylab --profile sh --no-confirm-exit --no-banner --quick --nosep'

## java
alias java='/opt/jdk/jre/bin/java'

## groovy
alias groovy='/opt/groovy/bin/groovy'
alias gy='rw groovy'

## javascript
alias closure='java -jar /opt/closure/compiler.jar --compilation_level ADVANCED_OPTIMIZATIONS --js '

## language
#alias im-server='ibus --xim'
alias im-setup='scim-setup'
alias im-server='scim -d 1>/dev/null 2>/dev/null &'

## scientific
alias R='rw R -q --no-save'
alias oct='rw octave -q'
#alias scilab='/opt/scilab/bin/scilab'
alias scilab='/opt/scilab/bin/scilab -nw'
alias sci='scilab -nw'
alias gp='gnuplot'
alias ij='rw /opt/j/bin/jconsole'
alias jbrk='/opt/j/bin/jbrk'
alias jython='/opt/jython/bin/jython'
alias h5='h5dump -H'
alias kx='rw q'
alias eli='rw elix'
alias julia='/opt/julia/bin/julia'
alias gdl='/opt/gdl/bin/gdl -q'
alias pro='gdl'

## locate
alias findex='find ./ -perm -o+rx -type f '

## database connections
alias ms='mssql'
alias ims='imssql'

## kvm
alias vstart='/usr/libexec/qemu-kvm -hda -redir tcp:2222::22 -hda'
alias virsh-c='virsh -c qemu:///system'
alias virsh-display='virsh -c qemu:///system vncdisplay'
alias vnc='vncviewer'

## gpgpu
alias codexl='/opt/codexl/bin/CodeXL &'
alias cxl='codexl'
alias openclprof='/opt/openclprof1.0/bin/openclprof'

## browser
alias web='pentadactyl'
alias pent='pentadactyl'
alias pentadactyl='firefox'
alias firefox='/opt/firefox/firefox-bin 1>/dev/null 2>/dev/null &'
alias fox='firefox'
alias chrome='google-chrome'
alias opera='/usr/local/bin/opera'
alias lx='lynx'
alias goog='lynx http://www.google.com'
alias conkeror='xulrunner /opt/conkeror/application.ini 1>/dev/null 2>/devl/null &'
alias conk='conkeror'
alias wiki='lynx http://en.wikipedia.org'
alias gollum='/usr/local/rvm/gems/ruby-2.1.0/bin/gollum'
alias ra='ranger'
alias fm='vifm'

## keyboard
alias pst=" sh -c 'xsel | xvkbd -xsendevent -file - 2>/dev/null' "

## scm
alias git='/opt/git/bin/git'
alias gci='git commit'
alias gpu='git push'
alias ga='git add'
alias gist='git log --oneline --decorate'
alias gh-pages='git checkout gh-pages'
alias gh-master='git checkout master'

## archive
alias alien='/usr/local/bin/alien'
alias isomount='mount -o loop -t iso9660 '

## transfer
alias wget-files='wget -r -nH --cut-dirs=9999 '

function web {
  chrome $* 1>/dev/null 2>/dev/null &
}

function kill-screen {
  session=$1
  screen -X -S $session quit
}

function unrpm {
  f=$1
  rpm2cpio $f | cpio -idmv
}

function backup {
  dir=$1
  dt=`date +%F`
  dest=$dir-$dt-a.tar.gz
  tar -zcvf $dest $dir
  ldest=~/backup
  mv $dest $ldest
  rdest=/media/media-2/backup
  if [[ -d $rdest ]]; then
    rsync -avhr $ldest/* $rdest
  fi
}

function mkd {
  dir=$1
  mkdir $dir
  cd $dir
}

function bright {
  level=${1}
  su root -c "echo -n ${level} > /sys/class/backlight/acpi_video0/brightness"
}

function midi-setup {
  sudo -s -- sh -c 'modprobe snd-virmidi ; modprobe snd-seq-dummy ports=4'
  amidi -l
  aconnect -i -o
}

function ranger-setup {
  ranger --copy-config=scope
}

function audio-setup {
  sudo -s -- sh -c 'modprobe snd-pcm-oss ; modprobe snd-seq-device; modprobe snd-pcm-oss ; modprobe snd-seq-device ; modprobe snd-seq-midi ; modprobe snd-seq-oss ; modprobe snd-seq-midi-event ; modprobe snd-seq ; modprobe snd-virmidi'
}

function vin {
  xterm -e "vim $*" &
}

function scrape {
url=${1}
shift
ext=${1}
if [[ -z $url ]] || [[ -z $ext ]]
then
  echo "scrape <url> <extension>"
else
python - <<EOT
from BeautifulSoup import BeautifulSoup
import urllib2
import urlparse
import re
url = "${url}"
page=urllib2.urlopen(url)
soup = BeautifulSoup(page.read())
print '#!/usr/bin/curl --config'
print 'user-agent = "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3"'
for link in soup.findAll('a'):
  if link.get('href') is not None:
    href = urlparse.urljoin(url,link['href'])
    pattern = "(http|ftp).+.%s" % "${ext}"
    if href is not None and re.search(pattern,href):
      file = href.split('/')[-1]
      print 'url = "%s"' % (href)
      print 'output = "%s"' % (file)
EOT
fi
}

## *EOF*
