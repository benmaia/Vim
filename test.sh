#!/bin/bash

#UPDATE && UPGRADE
sudo apt update
sudo apt upgrade -y

#GIT INSTALLATION
if [[ -f "/usr/bin/git" ]]
then
	echo "You have Git Installed!"
else
	sudo apt install git
fi

#VIM INSTALLATION
if [[ -f "/usr/bin/vim" ]]
then
	echo "You have Vim Installed!"
else
	sudo apt install vim
fi

#CURL INSTALLATION
if [[ -f "/usr/bin/curl" ]]
then
	echo "You have Curl Installed!"
else
	sudo apt istall curl
fi

#OH-MY-ZSH INSTALLATION
if [[ -f "/usr/bin/zsh" ]]
then
	echo "You have Oh-My-Zsh Installed!"
else
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
fi

#PLUG VIM INSTALL
if [[ -f "~/.vim/autoload" ]]
then
	echo "You have Plug Vim Installed!"
else
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -ydd
fi

#VUNDLE INSTALL
if [[ -f "~/.vim/bundle" ]]
then
	echo "You have Vundle Installed!"
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

#INSTALL PLUG VIM PLUGINS
vim +PlugInstall +qall

#INSTALL VUNDLE PLUGINS
vim +PluginInstall +qall

#YouCompleteMe INSTALL
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

#NERD FONT INSTALL
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

