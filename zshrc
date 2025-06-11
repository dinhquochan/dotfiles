# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User Configuration 

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# Default variables
export TERM='xterm-256color'
export DEFAULT_USER=$(whoami)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Editor
export EDITOR='vim'

# Paths
export DEV_PATH=$HOME/Developer
export CODE_PATH=$HOME/Code
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.composer/vendor/bin

# Aliases
alias start='tmux new-session -DAs main'
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

# Functions
rmds() {
    find . -name '.DS_Store' -type f -delete
}

# Platform-specific
if [ -f "$HOME/.zsh_macos" ]; then
    source "$HOME/.zsh_macos"
fi

if [ -f "$HOME/.zsh_linux" ]; then
    source "$HOME/.zsh_linux"
fi

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/nvm.sh" # Use nvm.sh for zsh compatibility

# Starship prompt
eval "$(starship init zsh)"

