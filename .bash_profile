# User configuration

# Default variable
export CLICOLOR=1
export TERM='xterm-256color'
export DEFAULT_USER=`whoami`
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='vim'
export PS1='\u@\h:\[\e[36m\]\w\[\e[0m\]\$ '

# Paths
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:/Users/Shared/DBngin/mysql/8.0.33/bin

# Aliases
alias ezsh="vim $HOME/.zshrc"
alias rzsh="source $HOME/.zshrc"
alias etmux="vim $HOME/.config/tmux/tmux.conf"

alias start='tmux new-session -DAs main'

alias reloaddns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'

alias c='clear'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias g='git'
alias gti='git'
alias gp='git push'
alias gpr='git pull --rebase'
alias gpu='git pull'
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

# Bash Completion
[[ -r "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh" ]] && . "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

