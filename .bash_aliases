alias git='/opt/homebrew/bin/git'
alias vim='/opt/homebrew/bin/nvim'

alias ls='ls -G'
alias lsa='ls -a'
alias ll='ls -l'
alias lla='ll -a'

alias ebash='vim ~/.bashrc'
alias rbash='source ~/.bash_profile'
alias etmux='vim ~/.tmux.conf'

alias reloaddns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias weather='curl -s wttr.in/Ho_Chi_Minh | sed -n "1,7p"'

alias c='clear'

alias g='git'
alias gti='git'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gp='git push'
alias gst='git status'
alias gss='git status -ss'
alias wip="git add . && git commit -m 'wip'"
alias nah='git reset --hard;git clean -df'

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
