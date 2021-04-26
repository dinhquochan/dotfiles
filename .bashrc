# Setup LOCALE
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Setup CURRENT_USER
DEFAULT_USER=`whoami`

# Setup git
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source $HOME/.config/git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source $HOME/.config/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# PS1
export PS1='\[\e[01;36m\]\w\[\e[1;35m\]$(__git_ps1 " (%s)")\n\[\e[1;32m\]❯\[\e[0m\] '

# User variables
export EDITOR='vim'

# Aliases
alias vim='/usr/local/bin/vim'
alias git='/usr/local/bin/git'

alias ebash='vim ~/.bashrc'
alias rbash='source ~/.bashrc'
alias evim='vim ~/.vimrc'

alias ls='ls -G'
alias ll='ls -l'
alias lsa='ls -la'
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'

function rmds() {
    find . -name '.DS_Store' -type f -delete
}

alias c='clear'

alias stt='subl .'

alias a='php artisan'
alias tinker='php artisan tinker'
alias migrate='php artisan migrate'
alias mfs='php artisan migrate:fresh'
alias serve='php artisan serve'
alias queue='php artisan queue:listen'
alias sf='symfony'
alias sfc='sf console'
alias phpunit='vendor/bin/phpunit'

function scheduler() {
    while :; do
        php artisan schedule:run
    echo "Sleeping 60 seconds..."
        sleep 60
    done
}

function phpv() {
    valet stop
    brew unlink php@7.3 php@7.4 php
    brew link --force --overwrite $1
    brew services start $1
    composer global update
    rm -f ~/.config/valet/valet.sock
    valet install
}

alias mysqladm='mysql -u root -ppassword'

function db {
    if [ "$1" = "refresh" ]; then
        mysql -uroot -ppassword -e "drop database $2; create database $2"
    elif [ "$1" = "create" ]; then
        mysql -uroot -ppassword -e "create database $2"
    elif [ "$1" = "drop" ]; then
        mysql -uroot -ppassword -e "drop database $2"
    fi
}

alias docker-composer="docker-compose"

alias g='git'
alias gti='git'
alias gss='git status -s'
alias gst='git status'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard;git clean -df'
alias gcm='git checkout $(git_main_branch)'
alias gcd='git checkout develop'
alias gcs='git checkout staging'
alias gp='git push'

# Paths
# Path to /usr/local/sbin
export PATH=/usr/local/sbin:$PATH

# Path to composer vendor binary
export PATH=$HOME/.composer/vendor/bin:$PATH

# Path to yarn global binary
export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH

# Path symfony binary
export PATH=$HOME/.symfony/bin:$PATH

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# GPG
export GPG_TTY=$(tty)

