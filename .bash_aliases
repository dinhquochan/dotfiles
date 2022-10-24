# changes defaults
alias vim='/opt/homebrew/bin/nvim'
alias git='/opt/homebrew/bin/git'

alias ls='ls -G'
alias ll='ls -lh'
alias lsa='ls -lah '

# fast edit zshrc, vimrc
alias ebash='vim ~/.bashrc'
alias rbash='source ~/.bashrc'
alias evim='vim ~/.vimrc'
alias etmux='vim ~/.tmux.conf'

# utilities
alias reloaddns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'
alias c='clear'

# git
alias g='git'
alias gti='git'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard;git clean -df'
alias gp='git push'
alias gpu='git pull'
alias gf='git fetch'
alias gst='git status'
alias gss='git status -s'

# php
alias a='php artisan'
alias tinker='php artisan tinker'
alias phpunit='vendor/bin/phpunit'
alias sail='vendor/bin/sail'
alias pint='vendor/bin/pint'
alias phpstan='vendo/bin/phpstan'

function phpv() {
    valet stop
    brew unlink php@7.3 php@7.4 php@8.0 php@8.1
    brew link --force --overwrite $1
    brew services start $1
    composer global update
    rm -f ~/.config/valet/valet.sock
    valet install
}

# docker
alias dc='docker compose'
alias dce='dc exec'
alias dcr='dc run'

# functions
function rmds() {
    find . -name '.DS_Store' -type f -delete
}
