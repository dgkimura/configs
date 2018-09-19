#!/bin/bash

git clone https://github.com/dgkimura/configs.git
cd configs

cp .vimrc ~/.vimrc
vim +PluginInstall +qall

cp .tmux.conf ~/.tmux.conf
