export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH:~/Projects/phabricator/arcanist/bin"
export SVN_SSH="ssh -i $HOME/.ssh/id_rsa-svn"
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

source /etc/bash_completion.d/git-prompt
PS1='[\[\033[33m\]@\h\[\033[00m\]][\[\033[01;34m\]\w\[\033[00m\]]$(__git_ps1 "[\[\e[01;33m\]%s]")\[\e[00m\]\$ '
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e\e[D": backward-word'
bind '"\e\e[C": forward-word'
bind "set completion-ignore-case on"

LS_FLAGS="--color=always"

alias ll="ls -lhG $LS_FLAGS"
alias la="ls -lahG $LS_FLAGS"
alias l="la $LS_FLAGS"
alias rm="rm -i"
alias less="less -x4" # sets default tab length to 4
alias stashrebase="git stash && git pull --rebase && git stash pop"
alias gst="git status"
alias gdf="git diff"
alias gds="git diff --staged"
alias gci="git commit -v"
alias gaa="git add -A"
alias gap="git add -p"
alias gpush="git push"
alias gfetch="git fetch"
alias grebase="git pull --rebase"
alias gpull="git pull"
alias gstash="git stash"
alias gpop="git stash pop"
alias ack="ack-grep"

function udiff ()
{
    diff -u $* | colordiff | less -R;
}

function reloadProfile ()
{
    source ~/.bash_profile
}
