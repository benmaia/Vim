#!/bin/bash

#UPDATE && UPGRADE
sudo apt update
sudo apt upgrade -y

#VIM INSTALLATION
if [[ -f "/usr/bin/vim" ]]
then
	echo "You have Vim Installed!"
else
	sudo apt install vim -y
fi

#CURL INSTALLATION
if [[ -f "/usr/bin/curl" ]]
then
	echo "You have Curl Installed!"
else
	sudo apt install curl -y
fi

#OH-MY-ZSH INSTALLATION
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -ydd

#PLUG VIM INSTALL
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#VUNDLE INSTALL
if [[ -f "~/.vim/bundle" ]]
then
	echo "You have Vundle Installed!"
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

sudo cp /home/$(whoami)/Desktop/Vim/.vimrc /home/$(whoami)
sudo cp /home/$(whoami)/Desktop/Vim/.zshrc /home/$(whoami)

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

