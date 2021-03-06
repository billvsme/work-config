#!/bin/bash

sudo apt-get update
sudo apt-get install -y wget
sudo apt-get install -y autossh
sudo apt-get install -y git
sudo apt-get install -y vim
sudo apt-get install -y tmux
sudo apt-get install -y zsh

git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

cp config/.vimrc ~/
cp config/.tmux.conf ~/
cp config/.zshrc ~/
cp config/proxychains.conf ~/.proxychains/proxychains.conf

chsh -s /bin/zsh

vim +PluginInstall +qall
