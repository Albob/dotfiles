#!/bin/bash

# Resolve path and completion for git (necessitate to copy the files there first)
. ~/bin/git-completion.bash
. ~/bin/git-prompt.sh

# Set environment
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="~/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export LC_ALL=C

# Change the prompt to show git status
PS1='[\[\033[33m\]@\h\[\033[00m\]][\[\033[01;34m\]\w\[\033[00m\]]$(__git_ps1 "[\[\e[01;33m\]%s]")\[\e[00m\]\$ '

# Bind keyboard keys to behavior
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e\e[D": backward-word'
bind '"\e\e[C": forward-word'
bind "set completion-ignore-case on"

# Use Homebrew bash completion
if [ $(which brew) ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi


# Set aliases
LS_FLAGS="-hG --color=always"
alias ll="ls -l $LS_FLAGS"
alias la="ls -la $LS_FLAGS"
alias l="la"
alias rm="rm -i"
alias less="less -x4" # sets default tab length to 4
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
# Utility functions

function udiff ()
{
    diff -u $* | colordiff | less -R;
}

function reloadProfile ()
{
    . ~/.bash_profile
}
