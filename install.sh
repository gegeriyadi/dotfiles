#!/bin/bash

sudo apt install zsh powerline -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

git clone https://github.com/gegeriyadi/dotfiles.git
mv dotfiles .dotfiles
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/profile ~/.profile

# nvim init and coc settings
ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/coc-settings.json ~/.config/nvim/coc-settings.json

# nvim keymap
ln -s ~/.dotfiles/nvim/keymap.vim ~/.config/nvim/keymap.vim

# nvim plugin config
NVIM_PLUGINS_CONFIG_DIR=~/.config/nvim/plugins
mkdir -p ${NVIM_PLUGINS_CONFIG_DIR}
ln -s ~/.dotfiles/nvim/config-plugins/coc.vim ${NVIM_PLUGINS_CONFIG_DIR}/coc.vim
ln -s ~/.dotfiles/nvim/config-plugins/telescope.vim ${NVIM_PLUGINS_CONFIG_DIR}/telescope.vim
ln -s ~/.dotfiles/nvim/config-plugins/bufferline.vim ${NVIM_PLUGINS_CONFIG_DIR}/bufferline.vim

mkdir -p ~/.vim/after/ftplugin
ln -s ~/.dotfiles/vim/after/ftplugin/html.vim ~/.vim/after/ftplugin/html.vim
ln -s ~/.dotfiles/vim/after/ftplugin/php.vim ~/.vim/after/ftplugin/php.vim
ln -s ~/.dotfiles/vim/after/ftplugin/vue.vim ~/.vim/after/ftplugin/vue.vim
ln -s ~/.dotfiles/vim/after/ftplugin/css.vim ~/.vim/after/ftplugin/css.vim
ln -s ~/.dotfiles/vim/after/ftplugin/js.vim ~/.vim/after/ftplugin/js.vim
ln -s ~/.dotfiles/vim/after/ftplugin/blade.vim ~/.vim/after/ftplugin/blade.vim

# install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "dotfile installed!"
