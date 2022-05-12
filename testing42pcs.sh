#!/bin/bash

#COLORS
BLUE='\033[1;34m'
RES='\033[0m'

#curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
cp ~/Desktop/Vim/custom.zsh-theme ~/.oh-my-zsh/themes
cp ~/Desktop/Vim/.zshrc ~
rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && echo 'export PATH=$HOME/.brew/bin:$PATH' >> $HOME/.zshrc && source $HOME/.zshrc && brew update
brew install pyenv
pyenv install 3.9.10
pyenv global 3.9.10
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
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
vim +PlugInstall +qall
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/./install.py
brew install ctags
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all -y
