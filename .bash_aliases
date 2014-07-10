alias serve="python -m SimpleHTTPServer"

#important folders
alias codebase="cd ~/Dropbox/Code"
alias study="cd ~/Desktop/Study"

#Aptitude
alias au="sudo apt-get update"
alias ai="sudo apt-get install "$1""

#Git commands
alias gs="git status"
alias ga="git add -A ."
alias gc="git commit -m "$1""
alias gac="git add -A . && git commit -m $1"
alias gp="git push "$1" "$2""
alias gpo="git push origin "$1""
alias gcp="git commit -m "$1" && git push"
alias gpu="git pull"
alias gco="git checkout "$1""
