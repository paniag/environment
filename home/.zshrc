## .zshrc
## Mac Radigan

  fn=~/.bashrc
  if [ -f $fn ]; 
  then
   . $fn
  fi
  alias zconf="vi ~/.zshrc"

  ## configuration
  alias re='. ~/.zshrc'
  alias conf='vi ~/.zshrc'

  ## environment
  export KiB=$((1024))
  export MiB=$((1024 ** 2))
  export GiB=$((1024 ** 3))

  ## options
  setopt autopushd pushdminus pushdsilent pushdtohome
  autoload -U promptinit && promptinit
  autoload -U compinit && compinit
  autoload -U colors && colors
  autoload -U zcalc
  autoload zmv
 #setopt nolistambiguous

  ## completions
  zstyle ':completion:*' menu select
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  setopt completealiases
  setopt autocd

  ## key bindings
  export KEYTIMEOUT=40
 #export KEYTIMEOUT=1
 #bindkey "^[[A" history-beginning-search-backward
 #bindkey "^[[B" history-beginning-search-forward
 #bindkey ^r  history-incremental-search-backward
 #bindkey -M viins '^r' history-incremental-search-backward
 #bindkey -M vicmd '^r' history-incremental-search-backward
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
  bindkey -M viins 'jl' clear-screen
 #bindkey -M viins 'jn' push-line
 #bindkey -M viins 'ji' history-incremental-pattern-search-backward
 #bindkey -M viins 'jo' vi-digit-or-beginning-of-line

 ## editing
 autoload -U edit-command-line
 zle -N edit-command-line
 bindkey -M vicmd v edit-command-line

  ## suffix and globals
  alias -s c=vim h=vim cpp=vim hpp=vim cxx=vim hxx=vim
  alias -g p='|'
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

  ## standard prompt
 #prompt bart
 #prompt clint
 #. ~/.prompt_diannao

  ## custom prompt
  function mn {
    PROMPT="%(?.%F{green}-.%F{magenta}%?)%F{yellow}%(!.#. )%F{red}>< %F{white}"
    RPROMPT="%F{magenta}%(?..ERROR %?)%F{white}"
    preexec () { echo -ne "\e[0m" }
  }
  mn
  alias mm='. ~/.prompt_diannao'

  ## directories
  hash -d s=~/sandbox
  hash -d da=~/dat
  hash -d d=~/dev
  hash -d l=~/local
  hash -d t=~/temp
  hash -d x=~/xfer
  hash -d g=~/gdrive
  hash -d e=~/local/environment

## *EOF*
