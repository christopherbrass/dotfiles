#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

### Append #####################################################################
cat .bashrc >> ~/.bashrc

### Overwrite ##################################################################
cp .vimrc ~/.vimrc         # vim
cp .tmux.conf ~/.tmux.conf # tmux
cp -RT .config ~/.config   # fish

### Git Bash Prompt
curl -fLo ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
### Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


### TODO #######################################################################

### ADD MORE CONFIGS ###
# make bash pretty like fish
# ranger? -set default editor
# git?
# i3
# vi/vim/nvim/vis/helix

# NixOS?


rm -rf $SCRIPT_DIR