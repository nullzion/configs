#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias emacs='emacs -nw'
alias ls='ls --color=auto -h -F'
#PS1='[\u@\h \W]\$ '
source ~/.git-prompt.sh
PS1='[\e[0;34m\u\e[0m@\e[1;34m\h\e[0m:\e[1;32m\W\e[0;31m$(__git_ps1 "(%s)")\e[0m]$ '
