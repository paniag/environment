## .zshrc
## Mac Radigan

if [ -f ~/.`uname -n`.alias ]; 
then
 . ~/.`uname -n`.alias
fi
alias aconf="vi ~/.`uname -n`.alias"

export KiB=$((1024))
export MiB=$((1024 ** 2))
export GiB=$((1024 ** 3))
export XMODIFIERS="@im=SCIM"
export GTK_IM_MODULE="scim"
export XIM_PROGRAM="scim -d"
export QT_IM_MODULE="scim"
#export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64
export JAVA_HOME=/opt/jdk/jre
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export VST_PATH=~/dat/music/lmms/vst
export RLWRAP_HOME=~
export RLWRAP_EDITOR="vi +%L"
export RLWRAP_FILTERDIR="~/.rlwrap"
export CLASSPATH=/opt/libreadline-java:$CLASSPATH
export PATH=$PATH:~/bin:/opt/Qt/5.3/gcc_64/bin
export PATH=$PATH:~/.rlwrap:/usr/local/bin:/opt/octave/bin:/opt/maven/bin:/opt/jython/bin:/opt/ardour/bin:/opt/non/bin:~/bin:/opt/lilypond/bin:/opt/eli
export PATH=$PATH:/opt/scilab/bin:/opt/j/bin:/opt/jython/bin:/opt/julia/bin:/opt/gdl/bin:/opt/firefox:/opt/midiedit/bin:/opt/gradle/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/nvidia:/usr/local/lib:/usr/lib64/root/:/usr/lib64:/opt/java-readline:/usr/lib64:/usr/lib64/boost
export M3_HOME=/opt/maven
export M3=$M3_HOME/bin
export TEXINPUTS=~/library/texmf/:
export EDITOR=vim
export PAGER=less
export GNUTERM=x11
export DIRSTACKSIZE=8
export HISTSIZE=1000
export HISTFILESIZE=0
export GPG_TTY=`tty`
#export PYTHONPATH=.:/usr/lib64/python2.6/site-packages/numpy:/usr/lib64/python2.6/site-packages/numpy/core:/usr/lib64/python2.6/site-packages/numpy/lib
#export PYTHONPATH=.:~/library/python:/usr/lib64/python2.6/site-packages:/usr/lib64/python2.6/site-packages/numpy/core:/usr/lib64/python2.6/site-packages/numpy/lib
setopt autopushd pushdminus pushdsilent pushdtohome
autoload -U promptinit && promptinit
autoload -U compinit && compinit
autoload -U colors && colors
autoload zmv
#setopt nolistambiguous
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
setopt completealiases
#bindkey "^[[A" history-beginning-search-backward
#bindkey "^[[B" history-beginning-search-forward
#bindkey ^r  history-incremental-search-backward
#bindkey -M viins '^r' history-incremental-search-backward
#bindkey -M vicmd '^r' history-incremental-search-backward
setopt autocd
#. ~/.prompt_diannao
#prompt bart
#prompt clint
function mn {
  #PROMPT='%F{red}>%F{white} '
  PROMPT=' %F{red}><%F{white} '
  RPROMPT=''
}
mn
alias mm='. ~/.prompt_diannao'
#setopt hist_ignore_all_dups

bindkey -M viins '/' vi-history-search-backward
bindkey -M viins '?' history-incremental-pattern-search-backward
bindkey '#' vi-pound-insert
bindkey '0' vi-digit-or-beginning-of-line
export KEYTIMEOUT=1

## basic
set -o vi
alias cls='clear'
alias reload='. ~/.zshrc'
alias re='. ~/.zshrc'
alias conf='vi ~/.zshrc'
alias cconf='vi ~/.zshrc ~/.bashrc'
alias vconf='vi ~/.vimrc'
alias iconf='vi ~/.i3/config'
alias sconf='vi ~/.screenrc'
alias tconf='vi ~/.tmux.conf'
alias mx='chmod 755 '
alias vc='sudo chvt '
alias vi='vim -O '
alias vio='vim -o '
alias vip='vim -c ":Project vimprojects"'
alias gvim='gvim -c ":colorscheme torte"'
alias ll='ls -l'
alias la='ls -la'
alias lsr='ls -rtl'
alias tx='tmux attach -d'
alias tx-kill='tmux kill-sessions'
alias tl='tmux list-windows'
alias ss='screen'
alias ssr='screen -R'
alias sl='screen -list'
alias dh='dirs -v'
alias xa='xargs -I{}'
alias lesser='/usr/share/vim/vim72/macros/less.sh'
alias less='/usr/bin/less'
alias un='uname '
alias una='uname -a'
alias unn='uname -n'
alias me='ps -uxf | grep mac'
alias untar='tar -zxvf'
alias sx='startx'
alias rw='rlwrap -S "W>< " -c -a -m -z shell '
alias dim='xbacklight'
alias rs='rsync -avhr'
alias utar='tar -zxvf'
alias ztar='tar -zcvf'
alias lock='i3lock -c 000000'
alias bb='blanker'
alias dt='date +"%F"'
alias jo='jobs'
alias evince='evince $* 1>/dev/null 2>/dev/null'
alias ev='evince'
alias igrep='grep -i'
#export DISPLAY=`uname -n`:0.0

## suffix and global
alias -s c=vim h=vim cpp=vim hpp=vim cxx=vim hxx=vim
alias -g mac='mac@radigan.org'
alias -g h1='|head -n 1'
alias -g t1='|tail -n 1'
alias -g l='|less'
alias -g m='|more'
alias -g x='|xargs -I{}'
alias -g g='|grep'
alias -g s='|sed'
alias -g A='|awk'
alias -g ig='|grep -i'
alias -g xi='|xclip -i'
alias -g xo='xclip -o'
alias -g null='1>/dev/null 2>/dev/null'
alias -g ta='2>>log.err|tee -a log.out'
alias -g to='2>log.err|tee log.out'
alias -g eo='1>log.out 2>log.err'
alias -g oe='3>&2 1>&2 2>&3 3>&-'
alias -g j='|tee -a ~/temp/notes.txt'
alias -g jn='echo "" |tee -a ~/temp/notes.txt'
alias jcat='cat ~/temp/notes.txt'
alias jconf='vi ~/temp/notes.txt'
alias note='~/temp/notes.txt'

## environment
alias econf='vi ~/local/environment/install/yum-install.sh'
alias yumi='sudo yum -y install '

## services
alias ck='ps -ef | grep -E "(jackd|lmms)"'
alias mc-tool='memcached-tool 127.0.0.1:11211 '

## logging
alias mt='multitail'

## network
alias dl='wget -r -e robots=off -nH --no-check-certificate --convert-links --page-requisites --no-clobber --no-parent --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" '

## artistic style
alias mystyle='astyle -s2 -xG -S --style=allman --recursive "src/*.cpp" "include/*.hpp"'

## communication
alias mutt='env DISPLAY= mutt'
alias mu='mutt'
alias mcabber='mcabber'
alias finch='finch'
alias xm='finch'

## graphics
alias qiv='qiv -R'
alias xv='qiv -R'
alias gimp='gimp -s 2>/dev/null 1>/dev/null &'
alias ink='inkscape 2>/dev/null 1>/dev/null &'

## text
alias fmpp='/opt/fmpp/bin/fmpp'

## encryption
alias decfs='ecryptfs-mount-private'
alias encfs='ecryptfs-umount-private'

## audio
##alias jack='jackd -v -R -P -d '
alias jack1='pasuspender -- jackd -d alsa -d hw:0 & '
alias jack2-start='jack_control start'
alias jack2-stop='jack_control stop'
alias qj='qjackctl &'
alias qsy='qsynth &'
alias rose='rosegarden &'
alias ardour='ardour3 &'
alias vk='vkeybd --octave 6 --name "VK" &'
alias utau='LANG=ja_JP.utf8 wine ~/UTAU/utau.exe'
alias mp='mp3blaster'
alias mpl='mp3blaster -l ~/.playlist-full'
alias mpa='mp3blaster -a ~/.playlist'
alias baudline='/opt/baudline/baudline'
alias sndpeek='/opt/sndpeek/bin/sndpeek'
alias mix='alsamixer'
alias calf='jackcalfhost'

## root
alias ro='rw root -l'
alias rx='rw root -l -q -x -b'

## lisp
alias racket='rw racket'
alias guile='rw guile'
alias sbcl='rw sbcl --noinform'
alias ecl='rw ecl'

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
#alias octave='/opt/octave/bin/octave -q'
alias R='rw R -q --no-save'
alias oct='rw octave -q'
alias scilab='/opt/scilab/bin/scilab'
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

## database connections
alias ms='mssql'
alias ims='imssql'

## locate
alias f='find -L ./ '
alias fn='find -L ./ -name'
alias findex='find ./ -perm -o+rx -type f '
alias lo='locate'

## build
alias genmake='/opt/genmake/bin/gen_make.sh'
alias cmake='cmake28'
alias make='gmake -j'

## kvm
alias vstart='/usr/libexec/qemu-kvm -hda -redir tcp:2222::22 -hda'
alias virsh-c='virsh -c qemu:///system'
alias virsh-display='virsh -c qemu:///system vncdisplay'
alias vnc='vncviewer'

## multimedia
alias ffmpeg='/opt/ffmpeg/bin/ffmpeg'

## gpgpu
alias codexl='/opt/codexl/bin/CodeXL &'
alias cxl='codexl'
alias openclprof='/opt/openclprof1.0/bin/openclprof'

## browser
alias web='pentadactyl'
alias pent='pentadactyl'
alias pentadactyl='firefox'
alias firefox='/opt/firefox/firefox-bin NULL &'
alias fox='firefox'
alias chrome='google-chrome'
alias opera='/usr/local/bin/opera'
alias lx='lynx'
alias goog='lynx http://www.google.com'
alias conkeror='xulrunner /opt/conkeror/application.ini NULL &'
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
alias gca='git commit -a'
alias gpu='git push'
alias ga='git add'
alias gist='git log --oneline --decorate'
alias gh-pages='git checkout gh-pages'
alias gh-master='git checkout master'

## archive
alias alien='/usr/local/bin/alien'
alias isomount='mount -o loop -t iso9660 '
alias dtrx='dtrx -v'

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

function audio-setup {
  sudo -s -- sh -c 'modprobe snd-pcm-oss ; modprobe snd-seq-device; modprobe snd-pcm-oss ; modprobe snd-seq-device ; modprobe snd-seq-midi ; modprobe snd-seq-oss ; modprobe snd-seq-midi-event ; modprobe snd-seq ; modprobe snd-virmidi'
}

function ranger-setup {
  ranger --copy-config=scope
}

function vin {
  xterm -e "vim $*" &
}

function screen-kill-detached {
  screen -ls | grep Detached | awk '{print}' | xargs -I{} screen -X -S {} quit
}

function scrape {
url=${1}
shift
ext=${1}
if [[ -z $url ]] || [[ -z $ext ]]
then
  echo "scrape <url> <extension>"
else
python2.6 - <<EOT
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

function bat {
  r=` cat /proc/acpi/battery/BAT0/state | awk '$0~/remaining capacity:/{print $3".0"}' `
  c=` cat /proc/acpi/battery/BAT0/info | awk '$0~/design capacity:/{print $3".0"}' `
  b=$((100*r/c))
  echo "$b[1,4]%"
}

function say { espeak --stdout -f $1 | aplay }
function path { echo ${${1}:a} }
function cdd { cd ${PWD:t} $1 }
function fbreader { FBReader $* 2>/dev/null 1>/dev/null & }

## encrypted email
# echo "message" | ma "subject" recipient
function ma { mutt -s $1 $2 }
# fma "subject" file recipient
function fma { echo "" | mutt -s $1 -a $2 -- $3 }
# echo "message" | ema "subject" recipient
function ema { gpg -ea -r $2 -o - | mutt -s $1 $2 }
# fema "subject" file recipient
function fema { gpg -ea -r $3 -o - $2 | mutt -s $1 $3 }

## *EOF*
