. ~/bin/git-completion.bash
. ~/bin/git-prompt.sh

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH:~/Projects/phabricator/arcanist/bin"
export SVN_SSH="ssh -i $HOME/.ssh/id_rsa-svn"
export WASH_DIR="/Users/alexisprettysimple/Projects/Washington"
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export LC_ALL=C

PS1='[\[\033[33m\]@\h\[\033[00m\]][\[\033[01;34m\]\w\[\033[00m\]]$(__git_ps1 "[\[\e[01;33m\]%s]")\[\e[00m\]\$ '
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e\e[D": backward-word'
bind '"\e\e[C": forward-word'
bind "set completion-ignore-case on"

if [ $(which brew) ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

alias ll="ls -lhG"
alias la="ls -lahG"
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

function udiff ()
{
    diff -u $* | colordiff | less -R;
}

function reloadProfile ()
{
    source ~/.bash_profile
}
