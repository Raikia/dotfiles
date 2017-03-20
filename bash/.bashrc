#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Terminal Colors
export CLICOLOR=1
export TERM="xterm-256color"

# Bash History Options
export HISTSIZE=1000000
export HISTCONTROL='ignoreboth'
export HISTIGNORE='&:ls:[bf]g:exit'
export HISTTIMEFORMAT='%b %d %H:%M:%S: '

set -o vi

export EDITOR=vim
shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s histappend


if [ -x /usr/bin/dircolors ]; then
	test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
	alias ls="ls --color=auto"
	alias grep="grep --color=auto"
	alias fgrep="fgrep --color=auto"
	alias egrep="egrep --color=auto"
fi

complete -cf sudo



PS1='[\u@\h \W]\$ '
