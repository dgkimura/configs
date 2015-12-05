" Vim - configuration file
" Author David Kimura

set number
set hlsearch
set expandtab
set tabstop=4
syntax on

" search path of tags
set tags=./tags;/,tags;/

" command to rebuild tags
nmap ,t :!(cd '%:p:h';ctags *)&
