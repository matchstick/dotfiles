PATH="/opt/homebrew/bin:$PATH"
PATH="~/go/bin:$PATH"

export EDITOR="vim"
export CLICOLOR=1
export LSCOLORS=GxExBxDxBxEgEdxbxgxcxd

alias ls='ls -G'
alias ll='ls -lG'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias l='less'
alias more='less'
alias rmba='rm -f *~'
alias vi='vim -X'
alias k='kubectl'

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi
