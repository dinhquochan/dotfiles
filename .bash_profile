# default variables
export TERM='xterm-256color'
export DEFAULT_USER=`whoami`

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR='vim'

# paths
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/.symfony/bin:$PATH

# git
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source $HOME/.config/bash/git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source $HOME/.config/bash/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# prompt
PS1='\[\e[01;32m\]\u@\h\[\e[0m\]:\[\e[01;34m\]\w\[\e[0m\]\$ '

# aliases
# changes defaults
alias vim='/usr/local/bin/vim'
alias git='/usr/local/bin/git'

# fast edit bash_profile, vimrc
alias ebash='vim ~/.bash_profile'
alias rbash='source ~/.bash_profile'
alias evim='vim ~/.vimrc'
alias etmux='vim ~/.tmux.conf'

# list
alias ls='ls -G'
alias ll='ls -l'
alias lsa='ls -la'

# utilities
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'
alias c='clear'
alias stt='subl .'

# git
alias g='git'
alias gti='git'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard;git clean -df'
alias gp='git push'
alias gpu='git pull'
alias gcm='git checkout main'
alias gcd='git checkout develop'
alias gss='git status -s'
alias gst='git status'

# php
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
    brew unlink php@7.4 php
    brew link --force --overwrite $1
    brew services start $1
    composer global update
    rm -f ~/.config/valet/valet.sock
    valet install
}

# docker
alias docker-composer='docker-compose'
alias dcomp='docker-compose'

# functions
function rmds() {
    find . -name '.DS_Store' -type f -delete
}

# setup bash completion
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# GPG
export GPG_TTY=$(tty)

