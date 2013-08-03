## .zshrc
## Mac Radigan

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/nvidia:/usr/local/lib:/usr/lib64/root/
export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64/jre
#export TEXINPUTS=~/library/tex//:
export EDITOR=vim
export PAGER=less
export GNUTERM=x11
export DIRSTACKSIZE=8
export HISTSIZE=1000
export HISTFILESIZE=0
export PYTHONPATH=.:/usr/lib64/python2.6/site-packages/numpy:/usr/lib64/python2.6/site-packages/numpy/core:/usr/lib64/python2.6/site-packages/numpy/lib
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

PROMPT="%F{red}[%F{cyan}%D{%a %y/%m/%d %R %Z}%F{red}]%F{red}[%F{green}%n@%m%F{white}:%F{yellow}%~%F{red}]
[%F{green}%l%F{white}:%F{green}%B%h%b%F{red}]%F{white}\$%b "
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
alias vconf='vi ~/.vimrc'
alias vi='vim -O '
alias ll='ls -l'
alias la='ls -la'
alias lsr='ls -rtl'
alias sc='screen'
alias dh='dirs -v'
alias xa='xargs -I{}'
alias less='/usr/share/vim/vim72/macros/less.sh'
alias lesser='/usr/bin/less'
#export DISPLAY=`uname -n`:0.0

## root
alias ro='root -l'
alias rx='root -l -q -x -b'

## python
alias py='ipython --pylab --profile sh'

## groovy
alias gy='groovy'

## scientific
alias octave='/opt/octave/bin/octave'
alias oct='octave'
alias scilab='/opt/scilab/bin/scilab'
alias sl='scilab -nw'

## build
alias genmake='/opt/genmake/bin/gen_make.sh'

## kvm
alias vstart='/usr/libexec/qemu-kvm -hda -redir tcp:2222::22 -hda'
alias virsh-c='virsh -c qemu:///system'
alias virsh-display='virsh -c qemu:///system vncdisplay'
alias vnc='vncviewer'

## build
alias cmake='cmake28'

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

## keyboard
alias pst=" sh -c 'xsel | xvkbd -xsendevent -file - 2>/dev/null' "

function backup {
  dir=$1
  dt=`date +%F`
  dest=$dir-$dt-a.tar.gz
  tar -zcvf $dest $dir
  mv $dest ~/SAVE
}

## *EOF*
