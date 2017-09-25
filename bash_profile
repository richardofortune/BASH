#!/usr/bin/env bash

# Load RVM, if you are using it

# Add rvm gems and nginx to the path
export PATH=$PATH:~/.gem/ruby/1.8/bin:/opt/nginx/sbin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Path to the bash it configuration
# export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
# export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
# export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export EDITOR='atom'
export GIT_EDITOR='atom'

# Set the path nginx
export NGINX_PATH='/opt/nginx'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "

export BLOCKSIZE=1k
# directory colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#BASH
alias bp="atom ~/.bash_profile"
alias refresh="source ~/.bash_profile"
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
alias f='open -a Finder ./'
alias ~="cd ~"
alias mount='mount |column -t'
#Shell sugar
alias sc="shellcheck"
alias hosts='sudo atom "/etc/hosts"'

#GIT
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias st="git status"
alias gaa="git add --all"
alias gc="git commit"
alias gca='git commit --amend --date"$(date)"'

# GIT Sugar
alias gfo='git fetch origin'
alias gd='git diff master origin/master'
alias gm='git merge'
alias innitbruv="git init"

# handy short cuts #
alias h='history'
alias j='jobs -l'
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
alias ls="ls -G -p"

#Working folders
alias wg="cd ~/git"
alias gh="git open $(git remote -v | grep fetch | awk '{print $2}' | sed 's/git@/http:\/\//' | sed 's/com:/com\//')| head -n1"

#bundler tools
alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'

#networking
alias header='curl -I'
alias wget='wget -c'

#backup - Time Machine
alias iofreeOn="sudo sysctl debug.lowpri_throttle_enabled=0" #disable I/O throttling
alias iofreeOff="sudo sysctl debug.lowpri_throttle_enabled=1" #enable I/O throttling

#Sugar
alias music="mpsyt"

#   ---------------------------------------------------------------------------
# Docker
#   ---------------------------------------------------------------------------
#alias did="docker rmi $(docker images -q)"
#alias dcd="docker rm $(docker ps -q)"

alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# interactive container
alias dki="docker run -t -i -P"

# Remove containers
function drm() { docker rm $(docker ps -q -a); }

# Remove images
function dri() { docker rmi $(docker images -q); }

# Docker Build
function db() { docker build -t="$1" .; }


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

eval "$(thefuck --alias)"

#Environment Checker
#alias xv='ruby ~/Documents/work_git/ApiChecker/api-checker.rb xv'
#alias health='ruby ~/Documents/work_git/ApiChecker/api-checker/api-checker.rb health'

function mcd() {
  mkdir -p "$1" && cd "$1" || exit;
}

function servedir(){
    sudo python -m SimpleHTTPServer 80
}

function cd() { builtin cd "$@"; ls; }

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export PATH=$PATH:/Users/richard.fortune/android-sdks/platform-tools/
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh
eval $(/usr/libexec/path_helper -s)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
