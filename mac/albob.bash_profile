#!/bin/bash

# Set environment
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="~/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Resolve path and completion for git (necessitate to copy the files there first)
# . ~/bin/git-completion.bash
# . ~/bin/git-prompt.sh
# . ~/bin/git-lfs.bash_completion.sh

## History stuff (appends only unique entries, from all terms)
export HISTFILESIZE=2048
export HISTSIZE=2048
export PROMPT_COMMAND="history -a"
shopt -s histappend
export HISTIGNORE="&"
export HISTCONTROL="ignoreboth" # ignore both duplicates and commands leading with a white space

# Change the prompt to show git status
PS1='[\[\033[33m\]\u@\h\[\033[00m\]][\[\033[01;34m\]\w\[\033[00m\]]$(__git_ps1 "[\[\e[01;33m\]%s]")\[\e[00m\]\n\$ '

# Bind keyboard keys to behavior
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e\e[D": backward-word'
bind '"\e\e[C": forward-word'
bind "set completion-ignore-case on"

# Use Homebrew bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Set aliases
alias l="ls -lahG --color='always'"
alias rm="rm -i"
alias du="du -h"
alias less="less -x4" # sets default tab length to 4
alias gst="git status"
alias gdf="git diff"
alias gds="git diff --staged"
alias gci="git commit"
alias gciv="git commit -v"
alias gaa="git add -A"
alias gap="git add -p"
alias gpush="git push"
alias gfetch="git fetch"
alias grebase="git pull --rebase"
alias gpull="git pull"
alias gstash="git stash"
alias gpop="git stash pop"
alias gbr="git branch -la"

# Utility functions
function udiff ()
{
    diff -u $* | colordiff | less -R;
}

function reloadProfile ()
{
    . ~/.bash_profile
}
