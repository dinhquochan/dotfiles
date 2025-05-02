export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Default variable
export CLICOLOR=1
export TERM='xterm-256color'
export DEFAULT_USER=`whoami`
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='vim'

# Paths
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.composer/vendor/bin

# Aliases
alias ezsh="vim $HOME/.zshrc"
alias rzsh="source $HOME/.zshrc"
alias etmux="vim $HOME/.config/tmux/tmux.conf"

alias start='tmux new-session -DAs main'
alias vim=/opt/homebrew/bin/nvim

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
alias sail='bash $([ -f vendor/bin/sail ] && echo vendor/bin/sail || echo $HOME/.local/bin/sail)'
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

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/han/.lmstudio/bin"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/han/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# Starship
eval "$(starship init zsh)"

