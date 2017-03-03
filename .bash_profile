# random aliases
alias v="vagrant"
alias gogr="cd ~/Code/ground/ground"

# git aliases
alias g="git"
alias gs="git status"
alias gr="git remote"
alias gc="git commit"
alias gca="git commit -a"
alias gps="git push"
alias gpl="git pull"
alias ga="git add"

# having fun with path variables
export JAVA_HOME="$(/usr/libexec/java_home)"
export SCALA_HOME=/usr/local/bin/scala
export PYTHONPATH=/Library/Python/2.7/site-packages

export PATH=$PATH:~/bin:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/Applications/Postgres.app/Contents/Versions/9.5/bin/
export PATH=$PATH:$SCALA_HOME/bin

export GOPATH="/Users/vikram/Code/go"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
