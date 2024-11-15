#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

### Append #####################################################################
cat .bashrc >> ~/.bashrc

### Overwrite ##################################################################
cp -RT .config ~/.config   # fish
cp .tmux.conf ~/.tmux.conf # tmux
cp -RT .vim ~/.vim         # vim colors & plugins
cp .vimrc ~/.vimrc         # vim


# bash

# ranger?
# git?


rm -rfv $SCRIPT_DIR