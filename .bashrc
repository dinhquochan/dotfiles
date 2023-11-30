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

# Brew

eval "$(/opt/homebrew/bin/brew shellenv)"

# Bash Completion

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Aliases

alias vim='/opt/homebrew/bin/vim'
alias git='/opt/homebrew/bin/git'

alias ebash="vim $HOME/.bashrc"
alias rbash="source $HOME/.bashrc"
alias etmux="vim $HOME/.config/tmux/tmux.conf"

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
__git_complete g __git_main
alias gti='git'
__git_complete gti __git_main
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gp='git push'
__git_complete gp _git_push
alias gpl='git pull'
__git_complete gpl _git_pull
alias gco='git checkout'
__git_complete gco _git_checkout
alias gbr='git branch'
__git_complete gbr _git_branch
alias gsw='git switch'
__git_complete gsw _git_switch
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard; git clean -df'
alias gst='git status'

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

# Node Version Management

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Git completion
[[ -r "$HOME/.config/git-completion.bash" ]] && . "$HOME/.config/git-completion.bash"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
