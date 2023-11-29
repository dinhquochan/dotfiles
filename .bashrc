# Default variables

export TERM='xterm-256color'
export DEFAULT_USER=`whoami`

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export CLICOLOR=1
export EDITOR=vim
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '

# PATHs

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.composer/vendor/bin"

# Aliases

alias vim='/opt/homebrew/bin/vim'
alias git='/opt/homebrew/bin/git'

alias ezsh="vim $HOME/.zshrc"
alias rzsh="source $HOME/.zshrc"
alias etmux="vim $HOME/.co.tmux.conf"

alias ls='ls --color'
alias ll='ls -l'
alias la='ls -a'
alias lla='la -l'

alias start='tmux new-session -DAs main'

alias reloaddns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519_2023.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'

alias c='clear'

alias g='git'
alias gti='git'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gbr='git branch'
alias gbrd='git branch -d'
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard;git clean -df'

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

# Brew

eval "$(/opt/homebrew/bin/brew shellenv)"

# Node Version Management

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
