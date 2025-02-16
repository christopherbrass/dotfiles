#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

### Append #####################################################################
cat .bashrc >> ~/.bashrc

### Overwrite ##################################################################
cp .vimrc ~/.vimrc         # vim
cp .tmux.conf ~/.tmux.conf # tmux
cp -RT .config ~/.config   # fish, helix, nvim

### Git Bash Prompt ############################################################
curl -fLo ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

### Install vim-plug (vi & vim & nvim) ##############################################
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo \n | vi -c "PlugInstall|qa!"
echo \n | vim -c "PlugInstall|qa!"
echo \n | nvim -c "PlugInstall|qa!"

### TODO #######################################################################

### ADD MORE CONFIGS ###
# TODO: fish git prompt won't show *+%
# TODO: ranger won't show file previews

# git?
# i3
# vi/vim/nvim/VIS/helix
# 

# NixOS?

### Change Default Shell #######################################################
chsh -s $(which fish)

### Delete This Repository When Finished #######################################
rm -rf $SCRIPT_DIR
