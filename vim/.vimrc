" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2016 Jul 28
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim


if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

set autoindent		" always set autoindenting on

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif

set backspace=2
set nobackup
set nowritebackup
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set shiftround
set expandtab


set number
set numberwidth=5

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set mouse-=a

autocmd BufNewFile,BufRead *.zsh setlocal filetype=zsh


