#!/bin/bash
git clone https://github.com/gegeriyadi/dotfiles
mv dotfiles .dotfiles
cd .dotfiles
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/profile ~/.profile
echo "dotfile installed!"
