#!/bin/bash

#COLORS
BLUE='\033[1;34m'
RES='\033[0m'

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install python3
brew install pip
brew install vim
brew install curl
brew install zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/Desktop/Vim/.vimrc ~/
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all -y
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q
python3 -m pip install flake8
python3 -m pip install --upgrade pip setuptools
python3 -m pip install norminette
cp -f ~/Desktop/Vim/norminette.vim ~/.vim/plugged/norminette-vim/compiler 
vim +PlugInstall +qall
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/./install.py
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
~/Desktop/Vim/.zshrc /home/$(whoami)
~/Desktop/Vim/custom.zsh-theme /home/$(whoami)/.oh-my-zsh/themes
#IMPLEMENT ZSH CHANGES
sudo reboot
