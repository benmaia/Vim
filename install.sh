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

#YouCompleteMe INSTALL
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all -y

#NERD FONT INSTALL
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

#NORMINETTE
sudo apt-get install -y python3-launchpadlib
python3 -m pip install --upgrade pip setuptools
python3 -m pip install norminette
sudo cp -f /home/$(whoami)/Desktop/Vim/norminette.vim /home/$(whoami)/.vim/plugged/norminette-vim/compiler 

#INSTALL PLUG VIM PLUGINS
vim +PlugInstall +qall

#INSTALL VUNDLE PLUGINS
vim +PluginInstall +qall

#OH-MY-ZSH INSTALLATION
if [[ -f "~/.zshrc" ]]
then
	echo "You have ZSH Installed!"
else
	sudo apt install zsh -y
fi

if [[ -f "~/.oh-my-zsh" ]]
then
	echo "You have OH MY ZSH Installed!"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	sudo cp /home/$(whoami)/Desktop/Vim/.zshrc /home/$(whoami)
	chsh -s $(which zsh)
fi

#IMPLEMENT ZSH CHANGES
#sudo reboot
