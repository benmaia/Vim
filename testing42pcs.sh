#!/bin/bash

#COLORS
BLUE='\033[1;34m'
RES='\033[0m'

curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
brew install python3
brew install pip
brew install vim
brew install curl
brew install zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q
python3 -m pip install flake8
python3 -m pip install --upgrade pip setuptools
cp -f ~/Desktop/Vim/norminette.vim ~/.vim/plugged/norminette-vim/compiler 
vim +PlugInstall +qall
vim +PluginInstall +qall
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
cp ~/Desktop/Vim/.zshrc $HOME
cp ~/Desktop/Vim/custom.zsh-theme $HOME/.oh-my-zsh/themes
