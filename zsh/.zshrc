# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Lets load up antigen and plugins
source ~/.config/zsh/antigen.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle HeroCC/LS_COLORS


antigen use oh-my-zsh
antigen bundle git
antigen bundle tmux
antigen bundle colored-man-pages
antigen bundle sudo


antigen theme crunch

antigen apply



## Variables
# Terminal colors
export CLICOLOR=1
export TERM="xterm-256color"

# History options
export HISTSIZE=1000000
export HISTCONTROL='ignoreboth'
export HISTIGNORE='&:ls:[bf]g:exit'
export HISTTIMEFORMAT='%b %d %H:%M:%S: '

# Other
export EDITOR=vim


## Configurations

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s histappend
set -o vi

## Aliases


## Other
complete -cf sudo

# vim:filetype=sh
