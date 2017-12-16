alias b='cd ..'
alias bb='cd ../..'
alias bbb='cd ../../..'
alias bbbb='cd ../../../..'
alias bbbbb='cd ../../../../..'

alias bmc='_bmc(){ eval "bookmark$1=$(pwd)";}; _bmc'
alias bmg='_bmg(){ cd $(eval "echo \$bookmark$1");}; _bmg'

alias clr='clear'

alias d='/usr/local/bin/discard'

alias les='vim -R'

alias mkcd='_mkcd(){ mkdir $1; cd $1;}; _mkcd'

alias mv='mv -n'
alias mvf='mv -f'
alias rm='echo Deprecated; #'

alias sl='ls'

alias cdread='cd ~/Courses/Reading'
alias cdcode='cd ~/Code'
alias cdgt='cd $GOPATH/src/code.gitea.io/gitea'

alias ?='echo $?' 
