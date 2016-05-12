# If .bashrc.work exists, source it
if [ -r ~/.bashrc.work_specific ]; then
    source ~/.bashrc.work_specific
fi

# Env variables
export CSCOPE_DB="~/Documents/repo/cscope/cscope.out"

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Aliases
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias ll="ls -alF"
alias la="ls -A"
alias lltr="ls -ltr"
alias l="ls -CFl"
alias ks="ls"

alias cd..="cd .."
alias cd-="cd -"

alias p8="ping 8.8.8.8"

alias rm="rm -I"
alias mv="mv -i"
alias cp="cp -i"

alias f="find . -name"
alias v="vim"
alias c="cat"
alias e="echo"

alias du="du -hs * 2> /dev/zero  | sort -h"

alias gs="git status"
alias ga="git add"
alias gl="git log"
alias gg="git grep"

alias cscope="cscope -d -f $CSCOPE_DB"

alias matlabcli="matlab -nodisplay -nojvm"

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"' # Usage: sleep 10; alert

# Cosmetics
export PS1='\u@\h[\A]\[\e[1;95m\]$(parse_git_branch)\[\e[0m\] ${PWD#${PWD%/*/*}/} \$ '

# Functions
function parse_git_branch
{
    git branch --no-color 2>/dev/null | grep \* | sed "s/\* \(.*\)/ \1:/"
}

function close
{
    # Very aggressive, does the trick in extreme cases
    for PID in `pgrep "${1%.*}"`; do kill -n 9 ${PID} &> /dev/null & done
}

function gitd
{
    local git_location_file=/home/${USER}/.git
    echo "gitdir: /home/${USER}/dotfiles/.git" > "${git_location_file}"
    git "${@}"
    rm "${git_location_file}"
}

function ssht
{
    test -n "$1" && ssh -t "$1" "bash -l"
}

function stress
{
    if [ "${1:-}" = "stop" ]; then
        killall yes
    else
        local num_processes=${1:-1}
        for i in $(seq 1 ${num_processes}); do yes>/dev/zero& done
    fi
}

function g
{
    grep $@
}

# Misc settings from Ubuntu default .bashrc
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
