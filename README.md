BASH
====

# directory colors

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias refresh="source ~/.bash_profile"
alias rubes="cd ~/git/ruby_tests/"
alias ls="ls -G -p"

alias mount='mount |column -t'
# handy short cuts #
alias h='history'
alias j='jobs -l'
alias h='history'
alias c='clear'
alias ..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias vi=vim

alias bi='bundle install'
alias bu='bundle update'
alias be="bundle exec"
alias bx="bundle exec"
alias bo="bundle open"
alias gib="gem install bundler --no-ri --no-rdoc"

#networking
alias header='curl -I'
alias wget='wget -c'

#monitoring
alias top='atop'


#Root and Sudo
alias root='sudo -i'
alias su='sudo -i'
