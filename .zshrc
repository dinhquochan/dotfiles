export ZSH="$HOME/.oh-my-zsh"
# Oh my zsh
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Default variable 
export TERM='xterm-256color'
export DEFAULT_USER=`whoami`
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Paths
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/Users/Shared/DBngin/mysql/8.0.33/bin:$PATH

# Aliases
alias ezsh="vim $HOME/.zshrc"
alias rzsh="source $HOME/.zshrc"
alias etmux="vim $HOME/.config/tmux/tmux.conf"

alias ls='eza'
alias la='ll -a'
alias ll='ls --long'

alias start='tmux new-session -DAs main'

alias reloaddns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'

alias c='clear'

alias g='git'
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

# Useful support for interacting with Terminal.app or other terminal programs
[ -r "/etc/zshrc_$TERM_PROGRAM" ] && . "/etc/zshrc_$TERM_PROGRAM"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Herd injected PHP binary.
export PATH="/Users/tee/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/tee/Library/Application Support/Herd/config/php/81/"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/tee/Library/Application Support/Herd/config/php/83/"

