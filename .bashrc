#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='\[\n\[\e[32m\][\u@\h \w]\$\[\e[m\] '

# for prompt you have to cancel out every little command, otherwise issues occur withold commands showing when scrolling through
