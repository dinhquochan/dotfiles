export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# git
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.config/bash/git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.config/bash/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# prompt
export PS1='\u@\h:\[\e[32m\]\w\[\e[0m\]\$\[\033[0;35m\]$(__git_ps1 " (%s)")\[\e[0m\] '
export EDITOR='vim'

# paths
# path to /usr/local/sbin
export PATH=/usr/local/sbin:$PATH

# path to composer vendor binary
export PATH=$HOME/.composer/vendor/bin:$PATH

# path to yarn global binary
export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH

# path symfony binary
export PATH=$HOME/.symfony/bin:$PATH

# aliases
# basic
alias c='clear'
alias _='sudo '
alias ...=../..
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..

# replace the defauls
alias vim='/usr/local/bin/vim'
alias git='/usr/local/bin/git'

# colours for `ls` command
alias ls='ls -G'
alias lsa='ls -la'
alias ll='ls -lGh'

# editing and reloading bash profile
alias ebash='vim ~/.bash_profile'
alias rbash='source ~/.bash_profile'

# php
alias a='php artisan'
alias tinker='php artisan tinker'
alias migrate='php artisan migrate'
alias mfs='php artisan migrate:fresh'
alias serve='php artisan serve'
alias sf='bin/console'
alias phpunit='vendor/bin/phpunit'

function scheduler () {
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

# mysql
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

# what's the fuck are u doing?
alias docker-composer="docker-compose"

# utilities
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias weather='curl -s wttr.in | sed -n "1,7p"'

function rmds() {
    find . -name '.DS_Store' -type f -delete
}

# git
alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gss='git status -s'
alias gst='git status'
alias gp='git push'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard;git clean -df'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
