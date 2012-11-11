#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -h -F'
#PS1='[\u@\h \W]\$ '
PS1='\t \d\n[\e[0;34m\u\e[0m@\e[1;34m\h \e[1;32m\W\e[0m]$'
