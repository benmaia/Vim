#Install Oh-My-Zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Path to your oh-my-zsh installation.
export ZSH="/home/paijavai/.oh-my-zsh"

#Theme
ZSH_THEME="jbergantine"

#Plugins
plugins=(git web-search)

source $ZSH/oh-my-zsh.sh

#Alias
alias .="clear"
