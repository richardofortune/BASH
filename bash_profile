
# MacPorts Installer addition on 2012-09-03_at_14:28:14: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

  # Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

  # First try to load from a user install
  source "$HOME/.rvm/scripts/rvm"

elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

  # Then try to load from a root install
  source "/usr/local/rvm/scripts/rvm"

else

  printf "ERROR: An RVM installation was not found.\n"

fi

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
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias vi=vim
alias sweep='find ~ -type f \( -name '*.swp' -o -name 'wget.log' -o -name 'foobar*' -o -name '*~' -o -name '.netrwhist'  \) -delete'
alias rubes="cd ~/git/ruby_tests/"
alias ls="ls -G -p"

alias bi='bundle install'
alias bu='bundle update'
alias be='bundle exec'

alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
alias f='open -a Finder ./'                 
alias ~="cd ~" 

#networking
alias header='curl -I'
alias wget='wget -c'

#monitoring
#alias top='atop'
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


