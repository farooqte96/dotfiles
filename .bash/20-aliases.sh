alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"' # Usage: sleep 10; alert
alias c="cat"
alias cd..="cd .."
alias cd-="cd -"
alias cp="cp -i"
alias cscope="cscope -d -f $CSCOPE_DB"
alias du="du -hs * 2> /dev/zero  | sort -h"
alias e="echo"
alias f="find . -name"
alias g="git"
alias ga="git add"
alias gam="git status | grep modified: | cut -d : -f 2 | xargs -n 1 git add"
alias gb="git branch"
alias gc="git checkout"
alias gci="git commit"
alias gca="git commit --amend"
alias gd="git diff"
alias gdt="git difftool -y"
alias gg="git grep -n"
alias gga="git branch -a | tr -d \* | sed '/->/d' | xargs git grep"
alias gl="git log"
alias gpr="git pull --rebase"
alias gprom="git pull --rebase origin master"
alias gp="git push"
alias gr="git reset"
alias grd="git status | grep deleted: | cut -d : -f 2 | xargs -n 1 git rm"
alias gre="git rebase"
alias grei="git rebase --interactive"
alias gs="git status"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias rgrep="grep -R"
alias kb="setxkbmap"
alias ls="ls --color -F"
alias ll="ls -ahlF"
alias la="ls -A"
alias lltr="ls -ltr"
alias l="ls -CFl"
alias ks="ls"
alias matlabcli="matlab -nodisplay -nojvm"
alias mv="mv -i"
alias p8="ping 8.8.8.8"
alias rm="rm -I"
alias sag="sudo apt-get"
alias sagi="sudo apt-get install"
alias speedtest="wget -O /dev/null http://speedtest.tele2.net/10GB.zip"
alias v="vim"
alias :q="exit"
alias :e="vim"
