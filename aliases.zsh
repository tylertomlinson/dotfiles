# ALIASES #

# --------- #
# directory #
# --------- #

alias cdp="cd ~/personal"
alias cdcrucial="cd ~/personal/crucial_resources"
alias cdsm="cd ~/SummaryMedical"
alias cdsmd="cd ~/SummaryMedical/demo2"
alias cdplay="cd ~/playground"
alias ..="cd .."
alias cl="clear"

# --- #
# git #
# --- #

alias glp="git log --pretty=oneline"             # oneline logs
alias gl="git log --all --graph --decorate"      # detailed log
alias gb="git browse"
alias gd="git diff"
alias gs="git status"
alias ga="git add ."
alias undolast="reset --soft HEAD^"
alias gc="git checkout"
alias pm="git pull origin master"
alias com="git checkout master"
alias remote="git remote -v"         # show remotes
alias browse="git browse"            # open repo on github
alias gcb="git checkout -b"          # create and checkout to new branch

# removes local branches that have been merged into master
alias clean="git branch --merged master | ag -v '\* master' | xargs -n 1 git branch -d"

# Initialise a git repo in the current folder adding all of its contents to an initial commit.
alias initial="!git init && git add . && git commit -m \"initial commit\""

cobm() {
  git checkout master && pull && git checkout -b "$1"
}

function gcm() {
  args=$@
  git commit -m "$args"
}

# ----- #
# rails #
# ----- #

alias install="bundle install"
alias test="bundle exec rspec"
alias be="bundle exec"
alias seed="bundle exec rake db:reset"
alias drop="bundle exec rake db:drop"
alias migrate="bundle exec rake db:migrate"
alias load="bundle exec rake db:schema:load"
alias server="bundle exec rails s"

# ------ #
# heroku #
# ------ #

alias setupheroku="heroku run rake db:setup"        # migrate & seed
