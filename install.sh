#!/bin/bash

# COLORS
BLUE='\033[1;34m'
RES='\033[0m'

notify-send "Instalation started" 

# UPDATE && UPGRADE
echo -e "${BLUE}Updating and Upgrading${RES}"
sudo apt update
sudo apt upgrade -y

# INSTALL BAT (colors on fzf)
sudo apt install bat

# VIM INSTALLATION
echo -e "${BLUE}Installing Vim${RES}"
[ -f "/usr/bin/vim" ] || sudo apt install vim -y

# CURL INSTALLATION
echo -e "${BLUE}Installing Curl${RES}"
[ -f "/usr/bin/curl" ] || sudo apt install curl -y

# PLUG VIM INSTALL
echo -e "${BLUE}Installing Plug Vim${RES}"
[ -f "/home/$(whoami)/.vim/autoload/plug.vim" ] || curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# VUNDLE INSTALL
echo -e "${BLUE}Installing Vundle${RES}"
[ -d "/home/$(whoami)/.vim/bundle/Vundle.vim" ] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# VIMRC PROFILE
sudo cp /home/$(whoami)/Desktop/Vim/.vimrc /home/$(whoami)

# YouCompleteMe DOWNLOAD
echo -e "${BLUE}Installing YouCompleteMe${RES}"
[ -d "/home/$(whoami)/.vim/bundle/YouCompleteMe" ] || sudo apt install build-essential cmake vim-nox python3-dev || sudo apt-get install -y python3-launchpadlib || sudo apt install mono-complete golang nodejs default-jdk npm

# NERD FONT INSTALL
echo -e "${BLUE}Installing Nerd Font${RES}"
[ -f "~/.local/share/fonts/Droid Sans Mono for Powerline Nerd Font Complete.otf" ] || cd ~/.local/share/fonts || curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# VIM FUGITIVE - Git on Vim
echo -e "${BLUE}Installing Vim Fugitive${RES}"
[ -d "~/.vim/pack/tpope/start/fugitive" ] || mkdir -p ~/.vim/pack/tpope/start || cd ~/.vim/pack/tpope/start || git clone https://tpope.io/vim/fugitive.git || vim -u NONE -c "helptags fugitive/doc" -c q

# NORMINETTE
echo -e "${BLUE}Installing Norminette${RES}"
[ -f "/home/$(whoami)/.local/bin/norminette" ] || sudo apt-get install -y python3-launchpadlib || sudo apt install pip || python3 -m pip install flake8 || python3 -m pip install --upgrade pip setuptools || python3 -m pip install norminette || sudo cp -f /home/$(whoami)/Desktop/Vim/norminette.vim /home/$(whoami)/.vim/plugged/norminette-vim/compiler 

# INSTALL PLUG VIM PLUGINS
echo -e "${BLUE}Installing Vim Plugins${RES}"
vim +PlugInstall +qall

# INSTALL VUNDLE PLUGINS
vim +PluginInstall +qall

# YouCompleteMe INSTALL
[ -d "/home/$(whoami)/.vim/bundle/YouCompleteMe" ] || ~/.vim/bundle/YouCompleteMe/./install.py

# CTAGS INSTALL
[ -f "/usr/bin/ctags" ] || sudo apt-get install exuberant-ctags

# OH-MY-ZSH INSTALLATION
echo -e "${BLUE}Installing Oh-My-Zsh${RES}"
[ -f "/usr/bin/zsh" ] || sudo apt install zsh -y || chsh -s $(which zsh)
[ -d "/home/$(whoami)/.oh-my-zsh" ] || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# ZSH PROFILE & THEME
sudo cp /home/$(whoami)/Desktop/Vim/.zshrc /home/$(whoami)
sudo cp /home/$(whoami)/Desktop/Vim/custom.zsh-theme /home/$(whoami)/.oh-my-zsh/themes

notify-send "Instalation complete, please restart your computer" 
