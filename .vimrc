" Vim - configuration file
" Author David Kimura
"
" $ vim +PluginInstall +qall
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

packadd termdebug

syntax on

" search path of tags
set tags=./tags;/,tags;/

set shiftwidth=4 tabstop=4 noet
set number
set hlsearch

set autoindent
set list
set listchars=tab:>-

set noexpandtab
set backspace=2

nmap <leader>a :Ack! ""<Left>
nmap <leader>A :Ack! <C-r><C-w><CR>
" Use 'git grep' with ack.vim plugin
let g:ackprg = 'git grep --column --line-number'
