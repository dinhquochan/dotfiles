export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set term and default user
export TERM='xterm-256color'
export DEFAULT_USER=`whoami`

# Set default language.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# User variables
export CLICOLOR=1
export EDITOR=vim

# PATHs
export PATH=$PATH:$HOME/.composer/vendor/bin

# Aliases
alias vim='/opt/homebrew/bin/vim'
alias git='/opt/homebrew/bin/git'

alias ls="eza"
alias ll="ls -l"
alias la="ls -a"
alias lla="ll -a"

alias ezsh="vim $HOME/.zshrc"
alias rzsh="source $HOME/.zshrc"
alias etmux="vim $HOME/.config/tmux/tmux.conf"

alias start='tmux new-session -DAs main'

alias reloaddns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519_2023.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'

alias c='clear'

alias gti='git'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard; git clean -df'

alias art='php artisan'
alias tinker='art tinker'
alias phpunit='vendor/bin/phpunit'
alias sail='vendor/bin/sail'
alias pint='vendor/bin/pint'
alias phpstan='vendor/bin/phpstan'

alias dc='docker compose'
alias dce='dc exec'
alias dcr='dc run'

function rmds() {
    find . -name '.DS_Store' -type f -delete
}

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


# Starship
eval "$(starship init zsh)"
# bun completions
[ -s "/Users/handinh/.bun/_bun" ] && source "/Users/handinh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
