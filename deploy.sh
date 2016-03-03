sudo apt-get update
sudo apt-get install git
sudo apt-get install vim
sudo apt-get install tmux
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/
cp .tmux.conf ~/
vim +PluginInstall +qall
