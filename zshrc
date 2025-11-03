# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# User configuration

# General variables
export TERM='xterm-256color'
export DEFAULT_USER=$(whoami)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export CLICOLOR=1
export EDITOR='vim'

export GPG_TTY=$(tty)

# User specific environment
PATH="$HOME/.local/bin:$PATH"
PATH="$PATH:$HOME/.composer/vendor/bin"

# JetBrains
PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# DBngin
PATH="$PATH:/Users/Shared/DBngin/mysql/8.0.33/bin"
PATH="$PATH:/Users/Shared/DBngin/postgresql/17.0/bin"

export PATH

# Aliases

# General
alias reloaddns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias start='tmux new-session -DAs main'
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'
alias c='clear'

# File system
alias ls='ls -G'
alias ll='ls -l'
alias la='ll -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias vim=/opt/homebrew/bin/nvim

rmds() {
    find . -name '.DS_Store' -type f -delete
}

# Tools
alias d='docker'
alias dc='docker compose'
alias dce='docker compose exec'
alias dcr='docker compose run'

# Git
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip [skip ci]'"
alias nah='git reset --hard; git clean -df'

# Specific programs

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


