#!/bin/bash

#COLORS
BLUE='\033[1;34m'
RES='\033[0m'

notify-send "Instalation started" 

echo -e "${BLUE}Updating and Upgrading${RES}"
#UPDATE && UPGRADE
sudo apt update
sudo apt upgrade -y

sudo apt install bat

echo -e "${BLUE}Installing Vim${RES}"
#VIM INSTALLATION
if [[ -f "/usr/bin/vim" ]]
then
	echo "You have Vim Installed!"
else
	sudo apt install vim -y
fi

echo -e "${BLUE}Installing Curl${RES}"
#CURL INSTALLATION
if [[ -f "/usr/bin/curl" ]]
then
	echo "You have Curl Installed!"
else
	sudo apt install curl -y
fi

echo -e "${BLUE}Installing Plug Vim${RES}"
#PLUG VIM INSTALL
if [[ -f "~/.vim/autoload/plug.vim" ]]
then
	echo "You have Plug Vim Installed!"
else
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo -e "${BLUE}Installing Vundle${RES}"
#VUNDLE INSTALL
if [[ -f "~/.vim/bundle/Vundle.vim" ]]
then
	echo "You have Vundle Installed!"
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

sudo cp /home/$(whoami)/Desktop/Vim/.vimrc /home/$(whoami)

echo -e "${BLUE}Installing YouCompleteMe${RES}"
#YouCompleteMe INSTALL
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt-get install -y python3-launchpadlib
sudo apt install mono-complete golang nodejs default-jdk npm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all -y

echo -e "${BLUE}Installing Nerd Font${RES}"
#NERD FONT INSTALL
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

echo -e "${BLUE}Installing Vim Fugitive${RES}"
#VIM FUGITIVE - Git on Vim
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q

echo -e "${BLUE}Installing Norminette${RES}"
#NORMINETTE
sudo apt-get install -y python3-launchpadlib
sudo apt install pip
python3 -m pip install flake8
python3 -m pip install --upgrade pip setuptools
python3 -m pip install norminette
sudo cp -f /home/$(whoami)/Desktop/Vim/norminette.vim /home/$(whoami)/.vim/plugged/norminette-vim/compiler 

echo -e "${BLUE}Installing Vim Fugitive${RES}"
#VIM FUGITIVE - GIT on VIM
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q

echo -e "${BLUE}Installing Vim Plugins${RES}"
#INSTALL PLUG VIM PLUGINS
vim +PlugInstall +qall

#INSTALL VUNDLE PLUGINS
vim +PluginInstall +qall

~/.vim/bundle/YouCompleteMe/./install.py

echo -e "${BLUE}Installing Oh-My-Zsh${RES}"
#OH-MY-ZSH INSTALLATION
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)

sudo cp /home/$(whoami)/Desktop/Vim/.zshrc /home/$(whoami)
sudo cp /home/$(whoami)/Desktop/Vim/custom.zsh-theme /home/$(whoami)/.oh-my-zsh/themes

echo -e "${BLUE}Reseting computer${RES}"

#IMPLEMENT ZSH CHANGES
notify-send "Instalation complete, please restart your computer" 
