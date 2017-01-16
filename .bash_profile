# other source
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# brew
PATH="/usr/local/sbin:$PATH"
HOMEBREW_GITHUB_API_TOKEN=

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# aliases
alias ls='ls -GFh'  #  colors and human-readable sizes
alias lx='ls -lXB'  #  sort by extension
alias lk='ls -lSr'  #  sort by size, biggest last
alias lt='ls -ltr'  #  sort by date, most recent last
alias lc='ls -ltcr' #  sort by/show change time, most recent last
alias lu='ls -ltur' #  sort by/show access time, most recent last
alias du='du -kh'   #  makes a more readable output: use 1024-byte, human-readable
alias df='df -kh'   #  makes a more readable output: use 1024-byte, human-readable
alias ..='cd ..'

# request confirmation
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# create intermediate directories as required
alias mkdir='mkdir -p'

# the fuck
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'

# go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# composer
export COMPOSER_DISABLE_XDEBUG_WARN=1

# git
if [ -f ~/.git-prompt.sh ]; then
   source ~/.git-prompt.sh
   export GIT_PS1_SHOWDIRTYSTATE=1
   export GIT_PS1_SHOWUNTRACKEDFILES=1
   export GIT_PS1_SHOWUPSTREAM="auto"
   export GIT_PS1_SHOWCOLORHINTS=1
   export PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
fi
