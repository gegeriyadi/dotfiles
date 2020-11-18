#!/bin/bash

git clone https://github.com/gegeriyadi/dotfiles.git
mv dotfiles .dotfiles
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/profile ~/.profile
mkdir -p ~/.vim/after/ftplugin
ln -s ~/.dotfiles/vim/after/ftplugin/html.vim ~/.vim/after/ftplugin/html.vim
ln -s ~/.dotfiles/vim/after/ftplugin/php.vim ~/.vim/after/ftplugin/php.vim
ln -s ~/.dotfiles/vim/after/ftplugin/vue.vim ~/.vim/after/ftplugin/vue.vim
ln -s ~/.dotfiles/vim/after/ftplugin/css.vim ~/.vim/after/ftplugin/css.vim
ln -s ~/.dotfiles/vim/after/ftplugin/js.vim ~/.vim/after/ftplugin/js.vim
ln -s ~/.dotfiles/vim/after/ftplugin/blade.vim ~/.vim/after/ftplugin/blade.vim

echo "dotfile installed!"
