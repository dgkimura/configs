#!/bin/bash

git clone https://github.com/dgkimura/configs.git
cd configs

cp .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cp .tmux.conf ~/.tmux.conf
