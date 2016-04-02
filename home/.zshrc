## .zshrc
## Mac Radigan

pathmunge () {
  case ":${PATH}:" in
    *:"$1":*)
        ;;
    *)
      if [ "$2" = "after" ] ; then
        PATH=$PATH:$1
      else
        PATH=$1:$PATH
      fi
  esac
}

pathmunge ~/bin
#pathmunge /opt/anaconda3/bin
pathmunge /opt/Qt/5.3/gcc_64/bin
pathmunge ~/.rlwrap
pathmunge /usr/local/bin
pathmunge /opt/octave/bin
pathmunge /opt/maven/bin
pathmunge /opt/jython/bin
pathmunge /opt/ardour/bin
pathmunge /opt/non/bin
pathmunge ~/bin
pathmunge /opt/lilypond/bin
pathmunge /opt/eli
pathmunge /opt/scilab/bin
pathmunge /opt/j/bin
pathmunge /opt/jython/bin
pathmunge /opt/julia/bin
pathmunge /opt/gdl/bin
pathmunge /opt/firefox
pathmunge /opt/midiedit/bin
pathmunge /opt/gradle/bin
pathmunge /usr/lib64/gambit-c/bin

## directories
hash -d s=~/sandbox
hash -d da=~/dat
hash -d d=~/dev
hash -d l=~/local
hash -d t=~/temp
hash -d x=~/xfer
hash -d g=~/Google\ Drive
hash -d e=~/local/environment

export KiB=$((1024))
export MiB=$((1024 ** 2))
export GiB=$((1024 ** 3))
export XMODIFIERS="@im=SCIM"
export GTK_IM_MODULE="scim"
export XIM_PROGRAM="scim -d"
export QT_IM_MODULE="scim"
#export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64
export GUILE_LOAD_PATH=/usr/share/guile/1.8
export GUILE_IMPLEMENTATION_PATH=/usr/share/guile/1.8
export SCHEME_LIBRARY_PATH=/usr/share/guile/1.8
export JAVA_HOME=/opt/jdk/jre
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export VST_PATH=~/dat/music/lmms/vst
export RLWRAP_HOME=~/.rlwrap
export RLWRAP_EDITOR="vim +%L"
export RLWRAP_FILTERDIR="~/.rlwrap"
export CLASSPATH=/opt/libreadline-java:/usr/share/java/jna.jar:$CLASSPATH
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/nvidia:/usr/local/lib:/usr/lib64/root/:/usr/lib64:/opt/java-readline:/usr/lib64:/usr/lib64/boost:/opt/anaconda3/lib
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
autoload -U zcalc
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
  #PROMPT=' %F{red}><%F{white} '
  #RPROMPT=''
  #PROMPT="%(?.%F{green}-.%F{red}%?) %F{magenta}%m%F{yellow}%(!.#. )%F{red}>< %F{black}"
  PROMPT="%(?.%F{green}-.%F{magenta}%?)%F{yellow}%(!.#. )%F{red}>< %F{white}"
  RPROMPT="%F{magenta}%(?..ERROR %?)%F{white}"
  preexec () { echo -ne "\e[0m" }
}
mn
alias mm='. ~/.prompt_diannao'
#setopt hist_ignore_all_dups

bindkey -M viins '/' vi-history-search-backward
bindkey -M viins '?' history-incremental-pattern-search-backward
bindkey '#' vi-pound-insert
bindkey '0' vi-digit-or-beginning-of-line
bindkey "^[[A" history-beginning-search-backward
#bindkey "^[[B" history-beginning-search-forward
#bindkey ^r  history-incremental-search-backward
#bindkey -M viins '^r' history-incremental-search-backward
#bindkey -M viins '^r' vi-history-search-backward
bindkey '^[[Z' reverse-menu-complete
bindkey -M viins '^r' history-incremental-pattern-search-backward
#bindkey -M vicmd 'jk' '\e'
bindkey -M viins '^k' vi-kill-line
#bindkey -M viins 'kj' vi-kill-line
#bindkey -M vicmd kh vi-pound-insert
bindkey -M vicmd 'jh' vi-pound-insert
#bindkey -M viins 'jl' clear-screen
#bindkey -M viins 'jn' push-line
#bindkey -M viins 'ji' history-incremental-pattern-search-backward
#bindkey -M viins 'jo' vi-digit-or-beginning-of-line
#export KEYTIMEOUT=1
export KEYTIMEOUT=40


## basic
set -o vi
alias cls='clear'
alias reload='. ~/.zshrc'
alias re='. ~/.zshrc'
alias conf='vi ~/.zshrc'
alias cconf='vi ~/.zshrc ~/.bashrc'
alias vconf='vi ~/.vimrc'
alias iconf='vi ~/.i3/config'
alias wconf='vi ~/.elinks/elinks.conf'
alias sconf='vi ~/.screenrc'
alias tconf='vi ~/.tmux.conf'
alias gconf='vi ~/.gdbinit'
alias pconf='vi ~/.pentadactylrc'
alias mx='chmod 755 '
alias vc='sudo chvt '
alias e='vim -- *(D.oa[1])'
alias vi='vim -O '
alias v='vi +":bl"'
alias se='sudoedit'
alias vio='vim -o '
alias vip='vim -c ":Project vimprojects"'
alias gvim='gvim -c ":colorscheme torte"'
alias e='vim -- *(D.oa[1])'
alias ll='ls -l'
alias la='ls -la'
alias lsr='ls -rtl'
alias tx='tmux attach -d'
alias tx-kill='tmux kill-sessions'
alias tl='tmux list-windows'
alias ss='screen'
alias ssr='screen -R'
alias sl='screen -list'
alias dh='df -h'
alias xa='xargs -I{}'
alias lesser='/usr/share/vim/vim72/macros/less.sh'
alias less='/usr/bin/less'
alias un='uname '
alias una='uname -a'
alias unn='uname -n'
alias me='ps -uxf'
alias untar='tar -zxvf'
alias sx='startx'
alias rw='rlwrap -pyellow -S ":>< " -c -a -m -z shell '
#alias rw='enhance '
alias dim='xbacklight'
alias rs='rsync -avhr'
alias rss='rsync --max-size=0.5G -avhr'
alias utar='tar -zxvf'
alias ztar='tar -zcvf'
alias lock='i3lock -c 000000'
alias bb='blanker'
alias dt='date +"%F"'
alias jo='jobs'
alias evince='evince $* 1>/dev/null 2>/dev/null'
alias ev='evince'
alias igrep='grep -i'
alias lns='ln -fs'
alias rd=rmdir
alias sd=sudo
alias db='rw gdb -q'
alias ldb='rw libtool --mode=execute gdb'
alias tn='rw telnet'
alias pk=pkill
alias off='sudo shutdown -h now'
alias on='sudo shutdown -r now'
alias ifa='ifconfig -a'
alias xe='emacs -nw'
alias md5='openssl md5'
alias dush='du -sh'
alias halt='sudo shutdown -h now'
alias gu='guile'
alias cs='rw csi -q'
alias k9='kill -9'
alias pp='ps -ef'
alias px='ps -xf'
alias f='fg'
alias ee='echo'
alias cc='cat'
alias sane='stty sane'
alias caly='cal -y'
alias ecal='calendar -A 31'
alias plan='cal; ecal'
alias di='echo $DISPLAY'
alias ca='zcalc'
#alias rm='srm'
function gxe { emacs $* 1>/dev/null 2>/dev/null & }
#export DISPLAY=`uname -n`:0.0

## build systems
alias are='autoreconf --install'
alias cn='./configure'
alias cnm='./configure && make'
alias pc='pkg-config'
alias mk='make'
alias mkc='make clean'
alias mkdc='make distclean'
alias mkr='make clean; make'
alias mki='sudo make install'
alias mnp='mvn package'
alias le='lein'
alias leu='lein uberjar'
alias ler='lein repl'

## notes
alias -g j='|tee -a ~/.scratch'
alias -g jn='echo "" |tee -a ~/.scratch'
alias jot='vi ~/.scratch'
alias got='gvim ~/.scratch'
alias jcat='cat ~/.scratch'
alias jconf='vi ~/.scratch'
alias note='~/.scratch'

## suffix and global
alias -s c=vim h=vim cpp=vim hpp=vim cxx=vim hxx=vim
alias -g p="|"
alias -g tt="|tr ' ' '\n'"
alias -g pv='|pv'
alias -g h1='|head -n 1'
alias -g t1='|tail -n 1'
alias -g l='|less'
alias -g m='|more'
alias -g x='|xargs -I{}'
alias -g g='|grep'
alias -g s='|sed'
alias -g A='|awk'
alias -g ge='|grep -E'
alias -g gi='|grep -i'
alias -g gv='|grep -v'
alias -g xi='|xclip -selection clipboard -i'
alias -g xo='xclip -selection clipboard -o'
alias -g null='1>/dev/null 2>/dev/null'
alias -g ta='2>>log.err|tee -a log.out'
alias -g to='2>log.err|tee log.out'
alias -g eo='1>log.out 2>log.err'
alias -g oe='3>&2 1>&2 2>&3 3>&-'
alias -g and='&&'

## history
alias ./='eval ${${(z)$(fc -l -1)[2,-1]}}'

## environment
alias econf='vi ~/local/environment/install/yum-install.sh'
alias yumi='sudo yum -y install '
alias yuml='yum -C list installed '

## tags
#alias tu='gtags'
#alias tu='ctags -f tags *.[ch]*'
alias tu='cscope -b *.[ch]*'

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
alias mutt='env DISPLAY= LD_LIBRARY_PATH=/usr/local/lib:/usr/lib64:/usr/lib64 mutt'
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
alias calf='calfjackhost&'

## root
alias ro='root -l'
alias rx='root -l -q -x -b'

## tcl
alias tcl='rw tclsh'
alias tc='rw tclsh'

## lisp
alias sbcl='rw sbcl --noinform'
alias sb='sbcl'
alias sbx='sbcl -load'
alias sc='rw gsi'
alias guile='rw guile'
alias racket='rw racket'
alias rkt='rw racket'
alias ecl='rw ecl'
alias ec='ecl'
alias ecx='ecl -load'
alias cl='rw clisp'
alias clx='clisp -load'
alias closure='java -jar /opt/closure/compiler.jar --compilation_level ADVANCED_OPTIMIZATIONS --js '

## perl
alias pl='perl'
alias pln='perl -lne'
alias pli='rw perl -d -e 1'

## python
#alias python='python3'
#alias python='python2.6'
alias python='/opt/anaconda3/bin/python'
alias pip='pip3'
alias py='ipython3 --pylab --profile sh --no-confirm-exit --no-banner --quick --nosep'

## java
alias java='/opt/jdk/jre/bin/java'

## groovy
alias groovy='/opt/groovy/bin/groovy'
alias gy='rw groovy'

## language
#alias im-server='ibus --xim'
alias im-setup='scim-setup'
alias im-server='scim -d 1>/dev/null 2>/dev/null &'

## scientific
#alias octave='/opt/octave/bin/octave -q'
alias R='rw R -q --no-save'
alias oc='rw octave -q'
alias ml='rw octave -q'
alias scilab='/opt/scilab/bin/scilab'
alias sci='scilab -nw'
alias gp='gnuplot'
alias ij='rw /opt/j/bin/jconsole'
alias jbrk='/opt/j/bin/jbrk'
alias jython='/opt/jython/bin/jython'
alias h5='h5dump -H'
alias kx='rw q'
alias kona='k'
alias k='rw k'
alias eli='rw elix'
alias julia='/opt/julia/bin/julia --color=no'
alias ju='rw julia'
alias gdl='/opt/gdl/bin/gdl -q'
alias pro='gdl'

## database connections
alias ms='mssql'
alias ims='imssql'

## locate
alias ff='find -L'
alias f.='find -L ./'
alias fn='find -L ./ -name'
alias findex='find ./ -perm -o+rx -type f '
alias lo='locate'

## build
alias genmake='/opt/genmake/bin/gen_make.sh'
alias cmake='cmake28'
alias make='gmake'

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
alias el='elinks'
alias goog='lynx http://www.google.com'
alias conkeror='xulrunner /opt/conkeror/application.ini NULL &'
alias conk='conkeror'
alias wiki='lynx http://en.wikipedia.org'
alias gollum='/usr/local/rvm/gems/ruby-2.1.0/bin/gollum'
alias ra='ranger'
alias fm='vifm'

## keyboard
alias pst=" sh -c 'xsel | xvkbd -xsendevent -file - 2>/dev/null' "

## developer
alias ddd='ddd 1>/dev/null 2>/dev/null &'
alias cle='clewn -va'

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
alias dx='dtrx -v'

## binary
function xx { vi <(xxd $1) }
function xio { vi <(xxd $1) <(xxd $2) }
function xd { vi -d <(xxd $1) <(xxd $2) }

function zb {
  f=$(basename $1)
  zip -r $f-`date +%F`-a.zip $f
  openssl md5 $f-`date +%F`-a.zip > $f-`date +%F`-a.zip.md5
}

function tb {
  f=$(basename $1)
  tar -zcvf $f-`date +%F`-a.tar.gz $f
  openssl md5 $f-`date +%F`-a.tar.gz > $f-`date +%F`-a.tar.gz.md5
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

## filesystem navigation
function d {
  if [[ ${1} == [~/]* ]]; then
    f=$(echo ${1}* | awk '{print$1}')
    cd ${f}*
  else
    f=$(echo *${1}* | awk '{print$1}')
    cd *${f}*
  fi
  pwd
  ls
}
function u { cd -1 }
function tmpl { cp $1 $2; vi $2 }

function gg {
  rw gdb -q -x debug.gdb --args $*
}

function vx {
  setopt extendedglob
  fh=$(ls -1 (#i)./include/$1.h*)
  fc=$(ls -1 (#i)./src/$1.c*)
  vi -O $fc $fh
}

function txt2pdf {
  infile=$1
  outfile=$2
  tempfile=/tmp/temp.ps
  enscript -p $tempfile $infile
  ps2pdf $tempfile $outfile
  rm $tempfile
}

## encrypted email
# xma "subject" recipient (from X11 clipboard)
function ma { xclip -o | mutt -s $1 $2 }
# echo "message" | ma "subject" recipient
function ma { mutt -s $1 $2 }
# fma "subject" file recipient
function fma { echo "" | mutt -s $1 -a $2 -- $3 }
# echo "message" | ema "subject" recipient
function ema { gpg -ea -r $2 -o - | mutt -s $1 $2 }
# fema "subject" file recipient
function fema { gpg -ea -r $3 -o - $2 | mutt -s $1 $3 }

## encrypted filesystem
# enc directory
function enc { 
  if [[ -z "$PASSPHRASE" ]]; then
    find $1 -print0 | tar -cv --null -T - | gpg -a -c -o $1.tar.gpg
  else
    echo "find $1 -print0 | tar -cv --null -T - | gpg --passphrase $PASSPHRASE -a -c -o $1.tar.gpg"
    find $1 -print0 | tar -cv --null -T - | gpg --batch --passphrase $PASSPHRASE -a -c -o $1.tar.gpg
  fi
}
# dec file
function dec { 
  if [[ -z "$PASSPHRASE" ]]; then
    cat $1 | gpg -d | tar -xv
  else
    echo "cat $1 | gpg --passphrase $PASSPHRASE -d | tar -xv"
    cat $1 | gpg --batch --passphrase $PASSPHRASE -d | tar -xv
  fi
}

if [ -f ~/.`uname -n`.alias ]; 
then
 . ~/.`uname -n`.alias
fi
alias aconf="vi ~/.`uname -n`.alias"

# if [ -f ~/.Xmodmap ]; then
#   xmodmap ~/.Xmodmap
# fi

## *EOF*
