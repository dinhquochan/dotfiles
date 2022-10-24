export TERM='xterm-256color'
export DEFAULT_USER=`whoami`

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export EDITOR='vim'

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# paths
export PATH=$HOME/.bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH

# aliases
source $HOME/.bash_aliases

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

