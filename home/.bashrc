## .bashrc
## Mac Radigan

pathmunge ~/bin
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

#export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64
export XMODIFIERS="@im=SCIM"
export GTK_IM_MODULE="scim"
export XIM_PROGRAM="scim -d"
export QT_IM_MODULE="scim"
export LC_ALL=C
export JAVA_HOME=/opt/jdk/jre
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export VST_PATH=~/dat/music/lmms/vst
export RLWRAP_HOME=~/.rlwrap
export RLWRAP_EDITOR="vim +%L"
export RLWRAP_FILTERDIR="~/.rlwrap"
export GUILE_LOAD_PATH=/usr/share/guile/1.8
export GUILE_IMPLEMENTATION_PATH=/usr/share/guile/1.8
export SCHEME_LIBRARY_PATH=/usr/share/guile/1.8
export CLASSPATH=/opt/libreadline-java:$CLASSPATH

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
alias bconf='vi ~/.vimbrc'
alias econf='vi ~/.emacs'
alias iconf='vi ~/.i3/config'
alias xconf='vi ~/.xmonad/xmonad.hs'
alias xcheck='xmonad --recompile'
alias wconf='vi ~/.elinks/elinks.conf'
alias sconf='vi ~/.screenrc'
alias tconf='vi ~/.tmux.conf'
alias gconf='vi ~/.gdbinit'
alias pconf='vi ~/.pentadactylrc'
alias mx='chmod 755 '
alias vc='sudo chvt '
alias v='vi +":bl"'
alias se='sudoedit'
alias e='vim -- *(D.oa[1])'
alias vi='vim -O '
alias v='vi +":bl"'
alias se='sudoedit'
alias vio='vim -o '
alias vip='vim -c ":Project vimprojects"'
alias gvim='gvim -c ":colorscheme torte"'
alias ll='ls -l'
alias la='ls -la'
alias lsr='ls -rtl'
alias tx='tmux attach -d'
alias tx-kill='tmux kill-sessions'
alias tl='tmux list-windows'
alias sc='screen'
alias scr='screen -R'
alias sl='screen -list'
alias sx='startx'
#alias rw='rlwrap -pyellow -S ":>< " -c -a -m -z shell '
alias rw='enhance '
alias rs='rsync -avhr '
alias rss='rsync --max-size=0.5G -avhr'
alias dh='df -h'
alias xa='xargs -I{}'
alias lesser='/usr/share/vim/vim72/macros/less.sh'
alias less='/usr/bin/less'
alias un='uname '
alias una='uname -a'
alias unn='uname -n'
alias me='ps -uxf'
alias untar='tar -zxvf'
alias dim='xbacklight'
alias lock='i3lock -c 000000'
alias bb='blanker'
alias jo='jobs'
alias evince='evince $* 1>/dev/null 2>/dev/null'
alias ev='evince'
alias igrep='grep -i'
alias lns='ln -fs'
alias rd=rmdir
alias sd=sudo
alias db='rw gdb -q'
#alias gdb='rw gdb -q'
alias ldb='rw libtool --mode=execute gdb'
alias gg='rw gdb -q'
alias tn='telnet'
alias pk=pkill
alias off='sudo shutdown -h now'
alias on='sudo shutdown -r now'
alias ifa='ifconfig -a'
alias xe='emacs -nw'
alias md5='openssl md5'
alias dush='du -sh'
alias halt='sudo shutdown -h now'
alias cs='csi -q'
alias k9='kill -9'
alias pe='ps -ef'
alias px='ps -xf'
alias f='fg'
alias tt="tr ' ' '\n'"
alias ee='echo'
alias sane='stty sane'
alias caly='cal -y'
alias ecal='calendar -A 31'
alias plan='cal; ecal'
alias di='echo $DISPLAY'
#alias rm='srm'
function gxe { emacs $* 1>/dev/null 2>/dev/null & }
#export DISPLAY=`uname -n`:0.0

## docker
alias dk='docker'
alias dkp='docker ps'
alias dki='docker images'
alias dke='docker exec'
alias dkn='docker start'
alias dkk='docker stop'

## build systems
alias are='autoreconf --install'
alias cn='./configure'
alias cnm='./configure && make'
alias pc='pkg-config'
alias mk='make'
alias mkc='make clean'
alias mkb='make clobber'
alias mkdc='make distclean'
alias mkr='make clean; make'
alias mki='sudo make install'
alias mnp='mvn package'
alias le='lein'
alias leu='lein uberjar'
alias ler='lein repl'

## notes
alias jot='vi ~/.scratch'
alias got='gvim ~/.scratch'
alias jcat='cat ~/.scratch'
alias jconf='vi ~/.scratch'
alias note='~/.scratch'

## environment
alias yconf='vi ~/local/environment/install/'
alias yumi='sudo yum -y install '
alias yuml='yum -C list installed '
alias apti='sudo apt install -y '
alias aptconf='vi ~/local/environment/install/apt-install.sh'

## tags
alias tu='gtags'
#alias tu='ctags -f tags *.[ch]*'
#alias tu='cscope -b *.[ch]*'

## services
alias ck='ps -ef | grep -E "(jackd|lmms)"'
alias mc-tool='memcached-tool 127.0.0.1:11211 '

## logging
alias mt='multitail'

## multimedia
alias ffm='ffmpeg'

## network
alias wget='wget --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" '

## communication
alias mutt='env DISPLAY= mutt'
alias mu='mutt'
alias mcabber='mcabber'
alias finch='finch'
alias xm='finch'

## graphics
alias qiv='qiv -R'
alias xv='qiv -R'
#alias gimp='gimp -s 2>/dev/null 1>/dev/null &'
alias ink='inkscape 2>/dev/null 1>/dev/null &'

## text
alias fmpp='/opt/fmpp/bin/fmpp'

## network
alias nmc='nmcli'
alias nmcl='nmcli con show'
alias nmcd='nmcli con delete'
alias nmci='nmcli con show id'
alias con='nmcli con show'
alias wifi='nmcli d wifi'

## encryption
alias decfs='ecryptfs-mount-private'
alias encfs='ecryptfs-umount-private'

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
alias calf='calfjackhost&'

## xmpp
alias finch='finch'
alias xm='mcabber'

## root
alias ro='root -l'
alias rx='root -l -q -x -b'

## tcl
alias tcl='tclsh'
alias tc='tclsh'

## lisp
alias rkt='racket'
alias gu='guile'
alias sc='gsi'
alias sbcl='sbcl --noinform'
alias sb='sbcl'
alias sbx='sbcl -load'
alias ecl='ecl'
alias ec='ecl'
alias ecx='ecl -load'
alias cl='clisp'
alias clx='clisp -load'
alias closure='java -jar /opt/closure/compiler.jar --compilation_level ADVANCED_OPTIMIZATIONS --js '

## perl
alias pl='perl'
alias pln='perl -lne'
alias pli='perl -d -e 1'

## python
#alias python='python3'
alias pip='pip3'
alias py='ipython3 --pylab --profile sh --no-confirm-exit --no-banner --quick --nosep'

## java
alias java='/opt/jdk/jre/bin/java'

## groovy
alias gy='groovy'
alias gyi='groovy'

## language
#alias im-server='ibus --xim'
alias im-setup='scim-setup'
alias im-server='scim -d 1>/dev/null 2>/dev/null &'

## scientific
alias R='R -q --no-save'
alias oc='octave -q'
alias ml='octave -q'
#alias scilab='/opt/scilab/bin/scilab'
alias scilab='/opt/scilab/bin/scilab -nw'
alias gp='gnuplot'
alias ij='/opt/j/bin/jconsole'
alias jbrk='/opt/j/bin/jbrk'
alias jython='/opt/jython/bin/jython'
alias h5='h5dump -H'
alias kx='q'
alias kona='k'
alias k='k'
alias eli='elix'
alias julia='/opt/julia/bin/julia --color=no'
alias ju='julia'
alias gdl='/opt/gdl/bin/gdl -q'
alias pro='gdl'

## locate
alias ff='find -L'
alias f.='find -L ./'
alias fn='find -L ./ -name'
alias findex='find ./ -perm -o+rx -type f '
alias lo='locate'

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
alias fox='firefox&'
alias chr='chrome&'
alias opera='/usr/local/bin/opera'
alias lx='lynx'
alias el='elinks'
alias goog='lynx http://www.google.com'
alias conkeror='xulrunner /opt/conkeror/application.ini 1>/dev/null 2>/devl/null &'
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

## grive
alias fuse='google-drive-ocamlfuse ~/gdrive'

## scm
alias gui='git gui&'
alias gci='git commit'
alias gca='git commit -a -S'
alias gpu='git push'
alias ga='git add'
alias gist='git log --oneline --decorate --pretty="format:%h %G? %aN %s"'
alias gh-pages='git checkout gh-pages'
alias gh-master='git checkout master'

## archive
alias alien='/usr/local/bin/alien'
alias isomount='mount -o loop -t iso9660 '
alias cdmount='sd mount -t iso9660 /dev/cdrom /media'
alias dtrx='dtrx -v'
alias dx='dtrx -v'

## networks
alias dl='wget -r -e robots=off -nH --no-check-certificate --convert-links --page-requisites --no-clobber --no-parent --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" '

function web {
  chrome $* 1>/dev/null 2>/dev/null &
}

function kill-screen {
  session=$1
  screen -X -S $session quit
}

function tb {
  f=`basename $1`
  tar -zcvf $f-`date +%F`-a.tar.gz $f
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

#function say { espeak --stdout -f $1 | aplay }
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

## encrypted email
# echo "message" | ma "subject" recipient
function ma { mutt -s $1 $2 }
# fma "subject" file recipient
function fma { echo "" | mutt -s $1 -a $2 -- $3 }
# echo "message" | ema "subject" recipient
function ema { gpg -ea -r $2 -o - | mutt -s $1 $2 }
# fema "subject" file recipient
function fema { gpg -ea -r $3 -o - $2 | mutt -s $1 $3 }

function enc {
  fn=$1; shift; d=${fn%/*}; f=${fn##*/}; n=${f%.*}; e=${f##*.}
  cwd=`pwd`
  x=aes-256-cbc
  to=z
  te=`echo $to |sed 's/v//g'`
  ext=.tg$te.$x
  if [[ -z "$PASS" ]]; then
    (cd $d; find $f -print0 | tar -c$to --null -T - | openssl enc -$x -salt -out $cwd/$f$ext)
  else
    (cd $d; find $f -print0 | tar -c$to --null -T - | openssl enc -$x -pass env:PASS -salt -out $cwd/$f$ext)
  fi
}
function dec {
  fn=$1; shift; d=${fn%/*}; f=${fn##*/}; n=${f%.*}; e=${f##*.}
  x=$e
  to=z
  if [[ -z "$PASS" ]]; then
    cat $fn | openssl enc -d -$x -salt | tar -x$to
  else
    cat $fn | openssl enc -d -$x -pass env:PASS -salt | tar -x$to
  fi
}
function encd { 
  fn=$1; shift; d=${fn%/*}; f=${fn##*/}; n=${f%.*}; e=${f##*.}
  if [[ -z "$PASS" ]]; then
    find $f -print0 | tar -c --null -T - | gpg -a -c -o $f.tar.gpg
  else
    find $f -print0 | tar -c --null -T - | gpg --batch --passphrase $PASS -a -c -o $f.tar.gpg
  fi
}
function decd { 
  fn=$1; shift; d=${fn%/*}; f=${fn##*/}; n=${f%.*}; e=${f##*.}
  if [[ -z "$PASS" ]]; then
    cat $f | gpg -d | tar -xv
  else
    cat $f | gpg --batch --passphrase $PASS -d | tar -xv
  fi
}

function fix-dbus {
  eval `dbus-launch`
  export DBUS_SESSION_BUS_ADDRESS
}

function wifi-connect {
  ssid=$1
  name=$ssid
  sudo nmcli con add type wifi con-name $name ifname wlo1 ssid $ssid
  if [[ "$#" -gt 1 ]]; then
    password=$2
    sudo nmcli con modify $name wifi-sec.key-mgmt wpa-psk
    sudo nmcli con modify $name wifi-sec.psk $password
  fi
  echo "bringing up connection: $name"
  sudo nmcli con up $name
  sudo nmcli con show id $name
  sudo nmcli con show
}

function gacl {
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa
  ssh -vT git@github.com
}

function txt2pdf {
  fn=${1}; shift
  b=${fn%.*}
  enscript ${fn} -o - | ps2pdf - ${b}.pdf
}

if [ -f ~/.`uname -n`.alias ]; 
then
 . ~/.`uname -n`.alias
fi
alias aconf="vi ~/.`uname -n`.alias"

if [ -f ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

## *EOF*
