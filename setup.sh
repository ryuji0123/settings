#!/bin/sh
mkdir -p ~/.git ~/.vim
cp ./git/.gitconfig ~/.git/
cp ./tmux/.tmux.conf ~/
cp ./vim/.vimrc ~/
cp ./zsh/.zshrc ~/
cd ./vim/
./setup_vim.sh
