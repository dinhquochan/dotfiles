if [ -z "$PS1" ]; then
   return
fi

[[ -s "/etc/bashrc_$TERM_PROGRAM" ]] && . "/etc/bashrc_$TERM_PROGRAM"

# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
. "$HOME/.config/git/git-completion.bash"
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
. "$HOME/.config/git/git-prompt.sh"

export TERM='xterm-256color'
export DEFAULT_USER=`whoami`
export PS1='\[\e[0;36m\]\W\[\e[0;35m\]$(__git_ps1 " (%s)") \[\e[0m\]> '

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=vim

# Load aliases
[ -s "$HOME/.bash_aliases" ] && . "$HOME/.bash_aliases"

# Make bash check its window size after a process completes
shopt -s checkwinsize

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
