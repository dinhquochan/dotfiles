# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# set term and default user.
export TERM='xterm-256color'
export DEFAULT_USER=`whoami`

# set default language.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# user variables.
export CLICOLOR=1
export EDITOR=vim

# paths.
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.composer/vendor/bin"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# macOS
eval "$(/opt/homebrew/bin/brew shellenv)"

# bash completion.
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# nvm.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# git.
[[ -r "$HOME/.config/git-completion.bash" ]] && . "$HOME/.config/git-completion.bash"

# bun.
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# alias
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
