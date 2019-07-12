# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# brew
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

# weather
alias weather='curl -s wttr.in/Berlin'

# go
export GO111MODULE=on
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# git (see https://github.com/git/git/tree/master/contrib/completion)
if [ -f ~/.git-prompt.sh ]; then
   source ~/.git-prompt.sh
   export GIT_PS1_SHOWDIRTYSTATE=1
   export GIT_PS1_SHOWUNTRACKEDFILES=1
   export GIT_PS1_SHOWUPSTREAM="auto"
   export GIT_PS1_SHOWCOLORHINTS=1
   export PROMPT_COMMAND='__git_ps1 "$(if [[ $? == 0 ]]; then echo "\[\e[32m\]\\\$"; else echo "\[\e[31m\]\\\$"; fi)\[\e[0m\] \u@\h:\w" "\n\\\$ "'
fi

if [ -f ~/.git-completion.bash ]; then
   source ~/.git-completion.bash
fi

# other source
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
