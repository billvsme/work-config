#!/bin/bash
sudo yum -y install epel-release
sudo yum -y install wget
sudo yum -y install git
sudo yum -y install vim
sudo yum -y install tmux
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
cp .vimrc ~/
cp .tmux.conf ~/
cp .zshrc ~/
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
vim +PluginInstall +qall
