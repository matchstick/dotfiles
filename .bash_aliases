#  Author:	Michael Rubin 
#  Description:	User-defined alias file
#  Date:	1/27/94
#  Modified:	5/17/94

alias ls='ls --color=tty'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias l='less'
alias more='less'
alias rmba='rm -f *~'
alias vi='vim -X'

alias k='kubectl'

alias bashrc='source ~/.bashrc'
alias dos2unix='perl -pi -e "tr/\r//d"'
alias unix2dos='perl -pi -e "s/\n$/\r\n/g"'
alias mac2unix='perl -pi -e "tr/\r/\n/d"'
alias findgrep="find . -print0 | xargs -0 grep"

alias setupirc='screen -S irc irssi -c irc.corp.google.com -p 6667'
alias screen='TERM=screen screen'

# linux
alias spellcode='aspell --mode ccpp check \!*'
alias sc='cscope -d'

# Find Files
alias cppfiles='find . -type f | egrep "\.*(cc|h)$"'
alias ccfiles='find . -type f | egrep "\.*(cc|h)$"'
alias hfiles='find . -type f | egrep "\.*h$"'
alias allfiles='find . -type f'
alias pyfiles='find . -name "*.py"'
alias javafiles='find . -name "*.java"'

# archlinux
alias pacman='sudo pacman'
alias pacman_key_sync='pacman -Sy archlinux-keyring && pacman -Su'
alias pacman_key_reset='sudo pacman-key --init && sudo pacman-key --populate'

alias pacman_all='pacman_key_reset ; pacman_key_sync; pacman -Syu'

function count {
  I=$1
  while [ $I -le $2 ];
    do echo $I
    I=$((I+1))
  done
}

function titlebar {
  unset PROMPT_COMMAND
  echo -ne "\033]2;$*\a"
}

function titlebar_reset {
  export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
}

function g4vi {
  g4 edit "$@"
  vi "$@"
}
alias p4vi=g4vi

# Define some handy variables
export CVS_RSH="ssh"
export ENV=$HOME/.bashrc
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

export PATH=~/src/go/bin:$PATH
export GOPATH=~/src/go
function KUBEGOPATH {
  export GOPATH=`pwd`/Godeps/_workspace:`pwd`/_output/local/go:$GOPATH
}
