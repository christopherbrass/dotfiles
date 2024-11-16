#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

### Append #####################################################################
cat .bashrc >> ~/.bashrc

### Overwrite ##################################################################
cp .vimrc ~/.vimrc         # vim
cp .tmux.conf ~/.tmux.conf # tmux
cp -RT .config ~/.config   # fish

### Install vim-plug ###########################################################
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# bash

# ranger?
# git?


rm -rf $SCRIPT_DIR