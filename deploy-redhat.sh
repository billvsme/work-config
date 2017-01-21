#!/bin/bash

sudo yum -y install epel-release
sudo yum -y install wget
sudo yum -y install autossh
sudo yum -y install git
sudo yum -y install vim
sudo yum -y install tmux
sudo yum -y install zsh

git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

cp config/.vimrc ~/
cp config/.tmux.conf ~/
cp config/.zshrc ~/
cp config/proxychains.conf ~/.proxychains/proxychains.conf

chsh -s /bin/zsh

vim +PluginInstall +qall
