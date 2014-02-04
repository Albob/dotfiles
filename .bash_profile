export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH:~/Projects/phabricator/arcanist/bin"
export SVN_SSH="ssh -i $HOME/.ssh/id_rsa-svn"
export WASH_DIR="/Users/alexisprettysimple/Projects/Washington"

PS1='\[\033[33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e\e[D": backward-word'
bind '"\e\e[C": forward-word'
bind "set completion-ignore-case on"

LS_FLAGS=""

if [ $(uname) = "Linux" ]; then
    LS_FLAGS="--color=always"
else
    if [ $(which brew) ]; then
        if [ -f $(brew --prefix)/etc/bash_completion ]; then
            . $(brew --prefix)/etc/bash_completion
        fi
    fi
fi

alias ll="ls -lhG $LS_FLAGS"
alias la="ls -lahG $LS_FLAGS"
alias l="la $LS_FLAGS"
alias rm="rm -i"
alias less="less -x4" # sets default tab length to 4

function udiff ()
{
    diff -u $* | colordiff | less -R;
}
