## .zshrc
## Mac Radigan

export KiB=$((1024))
export MiB=$((1024 ** 2))
export GiB=$((1024 ** 3))
export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export VST_PATH=~/dat/music/lmms/vst
export RLWRAP_HOME=~
export RLWRAP_EDITOR="vi +%L"
export CLASSPATH=/opt/libreadline-java:$CLASSPATH
export PATH=$PATH:/opt/octave/bin:/opt/maven/bin:/opt/jython/bin:/opt/ardour/bin:/opt/non/bin:~/bin:/opt/lilypond/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/nvidia:/usr/local/lib:/usr/lib64/root/:/usr/lib64:/opt/java-readline:/usr/lib64:/usr/lib64/boost
export M2_HOME=/opt/maven
export M2=$M2_HOME/bin
export TEXINPUTS=~/library/texmf/:
export EDITOR=vim
export PAGER=less
export GNUTERM=x11
export DIRSTACKSIZE=8
export HISTSIZE=1000
export HISTFILESIZE=0
#export PYTHONPATH=.:/usr/lib64/python2.6/site-packages/numpy:/usr/lib64/python2.6/site-packages/numpy/core:/usr/lib64/python2.6/site-packages/numpy/lib
#export PYTHONPATH=.:~/library/python:/usr/lib64/python2.6/site-packages:/usr/lib64/python2.6/site-packages/numpy/core:/usr/lib64/python2.6/site-packages/numpy/lib
setopt autopushd pushdminus pushdsilent pushdtohome
autoload -U promptinit
promptinit
autoload -U compinit
compinit
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
#prompt bart
prompt clint
#setopt hist_ignore_all_dups


autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "%{$fg[grey]%}%s %{$reset_color%}%r/%S%{$fg[grey]%} %{$fg[blue]%}%b%{$reset_color%}%m%u%c%{$reset_color%} "
setopt prompt_subst
PROMPT='%F{red}[%F{cyan}%D{%a %y/%m/%d %R %Z}%F{red}]%F{red}[%F{green}%n@%m%F{white}:%F{yellow}%~%F{red}][%F{cyan}${vcs_info_msg_0_}%F{red}]
[%F{green}%l%F{white}:%F{green}%B%h%b%F{red}]%F{white}\$%b '
#[%F{green}%l%F{red}] %F{green}%B%h%b %(?..[%?%1v] )%(2v.%U%2v%u.)%f%B%F{white}\$%b "

bindkey -M viins '/' vi-history-search-backward
bindkey -M viins '?' history-incremental-pattern-search-backward
bindkey '#' vi-pound-insert
bindkey '0' vi-digit-or-beginning-of-line

## basic
set -o vi
alias cls='clear'
alias reload='. ~/.zshrc'
alias conf='vi ~/.zshrc'
alias cconf='vi ~/.zshrc ~/.bashrc'
alias vconf='vi ~/.vimrc'
alias vi='vim -O '
alias vio='vim -o '
alias ll='ls -l'
alias la='ls -la'
alias lsr='ls -rtl'
alias sc='screen'
alias dh='dirs -v'
alias xa='xargs -I{}'
alias lesser='/usr/share/vim/vim72/macros/less.sh'
alias less='/usr/bin/less'
alias un='uname '
alias una='uname -a'
alias unn='uname -n'
alias me='ps -uxf | grep mac'
alias untar='tar -zxvf'
#export DISPLAY=`uname -n`:0.0

## suffix and global
alias -s c=vim h=vim cpp=vim hpp=vim cxx=vim hxx=vim
alias -g G='|grep '

## environment
alias econf='vi ~/local/environment/install/yum-install.sh'

## services
alias ck='ps -ef | grep -E "(jackd|lmms)"'
alias mc-tool='memcached-tool 127.0.0.1:11211 '

## network
alias wget='wget --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" '

## artistic style
alias mystyle='astyle -s2 -xG -S --style=allman --recursive "src/*.cpp" "include/*.hpp"'

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

## root
alias ro='root -l'
alias rx='root -l -q -x -b'

## python
alias python='python3'
alias py='ipython --pylab --profile sh'

## groovy
alias groovy='/opt/groovy/bin/groovy'
alias gy='groovy'

## javascript
alias closure='java -jar /opt/closure/compiler.jar --compilation_level ADVANCED_OPTIMIZATIONS --js '

## scientific
#alias octave='/opt/octave/bin/octave -q'
alias oct='octave'
alias scilab='/opt/scilab/bin/scilab'
alias sl='scilab -nw'
alias gp='gnuplot'
alias j='/opt/j/bin/jconsole'
alias jbrk='/opt/j/bin/jbrk'
alias jython='/opt/jython/bin/jython'
alias h5='h5dump -H'

## locate
alias findex='find ./ -perm -o+rx -type f '

## build
alias genmake='/opt/genmake/bin/gen_make.sh'
alias cmake='cmake28'

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
alias web='chrome'
alias chrome='google-chrome'
alias lx='lynx'
alias goog='lynx http://www.google.com'
alias gollum='/usr/local/rvm/gems/ruby-2.1.0/bin/gollum'

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
