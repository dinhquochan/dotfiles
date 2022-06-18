# changes defaults
alias vim='/usr/local/bin/vim'
alias git='/usr/local/bin/git'

alias ls='ls --color'
alias lsa='ls -a'
alias ll='ls -lh'
alias lla='ll -a'

# fast edit zshrc, vimrc
alias ebash='vim ~/.bashrc'
alias ebash='source ~/.bashrc'
alias evim='vim ~/.vimrc'
alias etmux='vim ~/.tmux.conf'

# utilities
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'
alias c='clear'

# git
alias g='git'
alias gti='git'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard;git clean -df'

# php
alias a='php artisan'
alias tinker='php artisan tinker'
alias phpunit='vendor/bin/phpunit'

function phpv() {
    valet stop
    brew unlink php@7.4 php@8.0 php@8.1
    brew link --force --overwrite $1
    brew services start $1
    composer global update
    rm -f ~/.config/valet/valet.sock
    valet install
}

# docker
alias dc='docker compose'

# functions
function rmds() {
    find . -name '.DS_Store' -type f -delete
}
