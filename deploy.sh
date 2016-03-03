sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y vim
sudo apt-get install -y tmux
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
cp .vimrc ~/
cp .tmux.conf ~/
vim +PluginInstall +qall
