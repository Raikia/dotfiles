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

antigen apply


source ~/.config/zsh/raikia_theme.zsh-theme
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


## Aliases
alias ei3='vim ~/.config/i3/config'
alias ..='cd ..'
alias mkdir='mkdir -pv'
alias rm='rm -I --preserve-root '
alias mv='mv -i '
alias cp='cp -i '
alias ln='ln -i '
alias chown='chown --preserve-root '
alias chmod='chmod --preserve-root '
alias chgrp='chgrp --preserve-root '
alias fhere='find . -iname '



## Other


## Functions
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf ../$1    ;;
          *.tar.gz)    tar xvzf ../$1    ;;
          *.tar.xz)    tar xvJf ../$1    ;;
          *.lzma)      unlzma ../$1      ;;
          *.bz2)       bunzip2 ../$1     ;;
          *.rar)       unrar x -ad ../$1 ;;
          *.gz)        gunzip ../$1      ;;
          *.tar)       tar xvf ../$1     ;;
          *.tbz2)      tar xvjf ../$1    ;;
          *.tgz)       tar xvzf ../$1    ;;
          *.zip)       unzip ../$1       ;;
          *.Z)         uncompress ../$1  ;;
          *.7z)        7z x ../$1        ;;
          *.xz)        unxz ../$1        ;;
          *.exe)       cabextract ../$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}


# vim:filetype=sh
