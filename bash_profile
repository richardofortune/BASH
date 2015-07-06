#!/usr/bin/env bash

# Load RVM, if you are using it

# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
# export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR="/usr/bin/mate -w"
export GIT_EDITOR='subl'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.

export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "

export BLOCKSIZE=1k
# directory colors
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=ExFxBxDxCxegedabagacad

alias refresh="source ~/.bash_profile"

alias mount='mount |column -t'

#GIT
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias st="git status"

# handy short cuts #
alias h='history'
alias j='jobs -l'
alias h='history'
alias c='clear'
alias ..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
# alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias vi=vim
alias sweep='find ~ -type f \( -name '*.swp' -o -name 'wget.log' -o -name 'foobar*' -o -name '*~' -o -name '.netrwhist'  \) -delete'
alias qr="cd ~/git/qe_ruby_tests/"
alias ls="ls -G -p"

alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
alias f='open -a Finder ./'                 
alias ~="cd ~" 

# GIT Sugar
alias gfo='git fetch origin'
alias gd='git diff master origin/master'
alias gm='git merge'   

#networking
alias header='curl -I'
alias wget='wget -c'

#Sugar
alias music="mpsyt"


#   -----------------------------------------------------------------------------------
#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
#   -----------------------------------------------------------------------------------
#cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
#   -------------------------------------------------------------------
alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

#Root and Sudo
alias root='sudo -i'
alias su='sudo -i'

function mcd() {
  mkdir -p "$1" && cd "$1";
}

function servedir(){
    sudo python -m SimpleHTTPServer 80
}

function cd() { builtin cd "$@"; ls; }   

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
