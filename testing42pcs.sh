#!/bin/bash

#COLORS
BLUE='\033[1;34m'
RES='\033[0m'

#Install Oh-My-Zsh
#curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	#Setting the plugins, alias && theme
cp ~/Desktop/Vim/custom.zsh-theme ~/.oh-my-zsh/themes
cp ~/Desktop/Vim/.zshrc ~

#Disable Norminette export (42macs don't need them)
filename=".zshrc"
read -p 'export PATH="$HOME/.local/bin:$PATH"' search
read -p "" replace
if [[ $search != "" && $replace != "o" ]]; then
sed -i "s/$search/$replace/" $filename
fi

#Setting Vim Up
cp ~/Desktop/Vim/.vimrc ~

	#Disable the PATH to norm (42macs can't set a new path)
read -p "let g:syntastic_c_norminette_exec = 'norminette'" search
read -p "" replace
if [[ $search != "" && $replace != "o" ]]; then
sed -i "s/$search/$replace/" $filename
fi

#Install Homebrew
rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew && echo 'export PATH=$HOME/.brew/bin:$PATH' >> $HOME/.zshrc && source $HOME/.zshrc && brew update
brew tap homebrew/cask

	#Install Nerd Font
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

	#Install Python 3.9 & setting as default
brew install pyenv
pyenv install 3.9.10
pyenv global 3.9.10
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

	#Installing pip
brew install pip

#Install Plug Vim - Vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Install Vundler - Vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Install Vim Fugitive - Git commands on Vim
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q

#Install YCM
python3 -m pip install flake8
python3 -m pip install --upgrade pip setuptools
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all -y

#Install Plugins from Vim plugins manager
vim +PlugInstall +qall
vim +PluginInstall +qall

#Finishing set YCM
~/.vim/bundle/YouCompleteMe/./install.py

#Install ctags for TagBar
brew install ctags
