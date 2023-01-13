export TERM='xterm-256color'
export DEFAULT_USER=`whoami`

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='vim'

export PS1='\u@\h:\[\e[01;32m\]\w\[\e[0m\]\$ '

if [ -f $HOME/.bash_aliases ]; then
  . $HOME/.bash_aliases
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
