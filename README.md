# Vim
<p>My Vim and ZSH settings with the plugins I use everyday. Feel free to try them!<p>
  
<img src="https://cdn.discordapp.com/attachments/461563270411714561/972534481128939591/ezgif-4-3d379d3cf7.gif" width="1000" height="450">
  
<h2> Index </h2>
<p><a href="#Instalation">
  Instalation
</a></p>
<p><a href="#Plugins">
  Plugins
</a></p>
<p><a href="#Sc">
  Shortcuts
</a></p>
<p><a href="#Man">
  Manually Instalation
</a></p>

<h2 id="Instalation">Instalation</h2>

```bash
git -C ~/Desktop clone https://github.com/benmaia/Vim.git
```

```bash
cd ~/Desktop/Vim && ./install.sh
```

<p> The <code>./install.sh</code> will install all the vim plugins, zsh and set zsh as default shell and then reboot the system!</p>

<h2 id="Plugins">Plugins</h2>
<p> If you want to unistall some plugins you just need to edit the ~/.vimrc file and remove the plugins in there!</p>
<p> The content of the script that will be downloaded and installed is: </p>
<ul>
  <li>Update and Upgrade of the system</li>
  <li>Vim</li>
  <li>Curl </li>
  <li>Plug Vim <a href="https://github.com/junegunn/vim-plug" target="_blank">here</a></li>
  <li>42 Header <a href="https://github.com/42Paris/42header" target="_blank">here</a></li>
  <li>42 Norminette V3 <a href="https://github.com/42School/norminette" target="_blank">here</a></li>
  <li>Vim-Norminette <a href="https://github.com/alexandregv/norminette-vim" target="_blank">here</a></li>
  <li>FZF <a href="https://github.com/junegunn/fzf.vim" target="_blank">here</a></li>
  <li>Vim Fugitive <a href="https://github.com/tpope/vim-fugitiveset" target="_blank">here</a></li>
  <li>Tagbar <a href="https://github.com/preservim/tagbar" target="_blank">here</a></li>
  <li>NERDTree <a href="https://github.com/preservim/nerdtree" target="_blank">here</a></li>
  <li>NERDTree Git <a href="https://github.com/Xuyuanp/nerdtree-git-plugin" target="_blank">here</a></li>
  <li>Vim Devicons <a href="https://github.com/ryanoasis/vim-devicons" target="_blank">here</a></li>
  <li>Colorscheme Sonokai <a href="https://github.com/sainnhe/sonokai" target="_blank">here</a></li>
  <li>NERD Commenter <a href="https://github.com/preservim/nerdcommenter" target="_blank">here</a></li>
  <li>Vim Airline <a href="https://github.com/vim-airline/vim-airline" target="_blank">here</a></li>
  <li>Vundle <a href="https://github.com/VundleVim/Vundle.vim" target="_blank">here</a></li>
  <li>YouCompleteMe <a href="https://github.com/ycm-core/YouCompleteMe" target="_blank">here</a></li>
  <li>Python3, mono-complete, golang, nodejs, default-jdk and npm <a href="https://github.com/ycm-core/YouCompleteMe#linux-64-bit" target="_blank">here</a></li></li>
  <li>Nerd Font <a href="https://github.com/ryanoasis/nerd-fonts" target="_blank">here</a></li>
  <li>Oh-My-Zsh <a href="https://ohmyz.sh/" target="_blank">here</a></li>
  <li>Git Auto Fetch <a href="https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-auto-fetch" target="_blank">here</a></li>
</ul>

<h2 id="Sc">Shortcuts</h2>
<p> This are some shortcuts to use inside VIM. Feel free to change the shortcuts, but this are some of that come configure and I think they are pretty usefull!</p>
<ul>
  <li> CTRL b - Open Nerd Tree </li>
  <ul>
    <li> SHIFT c - to change root to the selected folder </li>
    <li> SHIFT u - to go one dir back </li>
    <li> t - open the file in another tab</li>
    <li> s - open the file and split the screen verticaly</li>
    <li> i - open the file and split the screen horizontaly</li>
    <li> m - opens a menu to add, delete, move, copy, etc a file</li>
    <li> ? to opens a menu with all the commands possible </li>
  </ul>
  <li> CTRL w + left/right - to move through windows</li>
  <li> CTRL left/right - to move through tabs</li>
  <li> CTRL t - open a menu with all the functions in the file</li>
  <li> CTRL l - to close a window</li>
  <li> CTRL a - to install plugins in plug vim</li>
  <li> CTRL n - to use norminette</li>
  <li> :Sub [word] [replace] - it replaces all the [word] in the file to the [replace], case sensitive, and only replace an entire word, and not fractions, ex: <code>:Sub Hello Hi</code></li>
  <li> :Git [command] - does evey command git inside vim, check <a href="https://github.com/tpope/vim-fugitiveset" target="_blank">here</a></li>
</ul>
<p> Other VIM commands that alreayd com configure that are really usefull, I'm still learning new ones!</p>
<ul>
  <li> SHIFT v - select an entire line and you can select more then 1 line</li>
  <li> CTRL v - selects the place you have your cursor in multiple rows, so you can write once, and appear in all lines selected at the same position </li>
  <li> vap - selects all the paragraph</li>
  <li> y - yarn or copy </li>
  <li> p - paste </li>
  <li> dd - deletes all the line, and copies it </li>
  <li> dap - deletes all the paragraph and copies it </li>
</ul>
<ul>
<p> Inside FZF Search, the commands are different </p>
  <li> CTRL f - to open FZF </li>
  <li> CTRL t - to open the file in a new tab</li>
  <li> CTRL v - to open a file in vertical split</li>
  <li> CTRL x - to open a file in horizontal split</li>
  <li> ENTER - to open on the current window </li>
</ul>
<p> Like I said, I'm still learning new commands, if you know other ones that are really usefull please tell me, I want to incorporate them!</p>
<p> I also have some alias to be use on TERMINAL in the <code>.zshrc</code> that I use a lot and I think you will to!</p>
<ul>
  <li> . - cleans the terminal </li>
  <li> web [any website] - open that website ex: <code>web github.com/benmaia/Vim</code> </li>
  <li> google [your question] - opens a google page with your doubt ex: <code>google how to cook </code> </li>
  <li> github - opens github </li>
  <li> discord - opens discord </li>
  <li> slack -opens slack </li>
  <li> youtube - opens youtube </li>
  <li> twitch - opens twitch </li>
  <li> spotify - opens spotify </li>
  <li> intra - opens 42 intra </li>
</ul>
<p> The Git Auto Fetch plugin in Oh My Zsh, like the name says, it will fetch the repo you are in, so you'll never run to a git push --force, or problems with repo not being updated, you will still need to git pull tho! Don't forget! </p>
<p> Feel free to add yours, and enjoy it!</p>

<h2 id="Man">Manually Instalation</h2>

<p> You will need vim, and curl instaled</p>

<p> If you prefer to install manually, you can go to <a href="https://github.com/benmaia/Vim/edit/master/README.md#plugins">Plugins</a> and click in the "here" links, that will take you to the original repository of the plugin and have the instructions in how to install and use it!</p>
