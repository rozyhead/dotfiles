#!/bin/bash

cd $(dirname "$0")

ln -Fis "$PWD/.config" $HOME
ln -Fis "$PWD/.gitconfig" $HOME
ln -Fis "$PWD/.peco" $HOME
ln -Fis "$PWD/.tmux.conf" $HOME
ln -Fis "$PWD/.vim" $HOME
ln -Fis "$PWD/.vimrc" $HOME
