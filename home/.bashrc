## .bashrc
## Mac Radigan

export PATH=$PATH:/opt/octave/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/nvidia
export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64/jre
export EDITOR=vim
export PAGER=vim
export DIRSTACKSIZE=8
export HISTSIZE=1000
export HISTFILESIZE=0

## basic
set -o vi
alias cls='clear'
alias reload='. ~/.zshrc'
alias conf='vi ~/.zshrc'
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
#export DISPLAY=`uname -n`:0.0

## root
alias ro='root -l'
alias rx='root -l -q -x -b'

## python
alias py='ipython --pylab --profile sh'

## groovy
alias gy='groovy'

## scientific
#alias octave='/opt/octave/bin/octave -q'
alias oct='octave'
alias scilab='/opt/scilab/bin/scilab'
alias sl='scilab -nw'
alias gp='gnuplot'

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

## *EOF*
