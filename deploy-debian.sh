sudo apt-get update
sudo apt-get install -y wget
sudo apt-get install -y git
sudo apt-get install -y vim
sudo apt-get install -y tmux
sudo apt-get install -y zsh
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
cp .vimrc ~/
cp .tmux.conf ~/
cp .zshrc ~/
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
vim +PluginInstall +qall
chsh -s /bin/zsh
