## .bashrc
## Mac Radigan

## basic
set -o vi
alias cls='clear'
alias reload='. ~/.bashrc'
alias conf='vi ~/.bashrc'
alias vconf='vi ~/.vimrc'
alias vi='vim -O '
alias ll='ls -l'
alias la='ls -la'
alias sc='screen'
alias dh='dirs -v'
alias xa='xargs -I{}'

## kvm
alias vstart='/usr/libexec/qemu-kvm -hda -redir tcp:2222::22 -hda'
alias virsh-c='virsh -c qemu:///system'
alias virsh-display='virsh -c qemu:///system vncdisplay'
alias vnc='vncviewer'
function vkill {
  node=$1
  virsh destroy $node
  virsh undefine $node
  virsh vol-delete --pool vg0 $node
}

## safe
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## python
alias pip='pip-python'

## Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## *EOF*
