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
alias spotify="xdg-open https://open.spotify.com/"
alias discord="xdg-open https://discord.com/channels/@me"
alias slack="/snap/bin/slack"
alias youtube="xdg-open https://www.youtube.com/"
alias intra="xdg-open https://profile.intra.42.fr/"
alias github="xdg-open https://github.com/"
alias twitch="xdg-open https://www.twitch.tv/zerkaa"

function openWeb() {
   xdg-open "https://www."$1""
}
alias web="openWeb"
