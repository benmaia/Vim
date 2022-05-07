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

<p> The content of the script that will be downloaded and installed is: </p>
<ul>
  <li>Update and Upgrade of the system</li>
  <li>Vim</li>
  <li>Curl </li>
  <li>Plug Vim <a href="https://github.com/junegunn/vim-plug" target="_blank">here</a></li>
  <li>42 Header <a href="https://github.com/42Paris/42header" target="_blank">here</a></li>
  <li>42 Norminette V3 <a href="https://github.com/42School/norminette" target="_blank">here</a></li>
  <li>Vim-Norminette <a href="https://github.com/alexandregv/norminette-vim" target="_blank">here</a></li>
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
</ul>

<h2 id="Sc">Shortcuts</h2>
<p> Feel free to change the shortcuts, but this are some of that come configure and I think they are pretty usefull!</p>
<ul>
  <li> CTRL B - Open Nerd Tree </li>
  <ul>
    <li> SHIFT c - to change root to the selected folder </li>
    <li> SHIFT u - to go one dir back </li>
    <li> t - open the file in another tab</li>
    <li> s - open the file and split the screen verticaly</li>
    <li> i - open the file and split the screen horizontaly</li>
    <li> m - opens a menu to add, delete, move, copy, etc a file</li>
    <li> ? to opens a menu with all the commands possible </li>
  </ul>
  <li> CTRL W + left/right - to move through windows</li>
  <li> CTRL left/right - to move through tabs</li>
  <li> CTRL l - to close a window</li>
  <li> CTRL a - to install plugins in plug vim</li>
  <li> CTRL n - to use norminette</li>
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
  <li> :%s/wrong word/word to replace/g - it replaces all the wrong words to the word to replace in the file </li>
</ul>
<p> Like I said, I'm still learning new commands, if you know other ones that are really usefull please tell me, I want to incorporate them!</p>

<h2 id="Man">Manually Instalation</h2>

<p> You will need vim, and curl instaled</p>

To install the Oh-My-Zsh run
<code>sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"</code>
Copy the .zshrc file to your root dir and reset the terminal.

<p> Now you need to install <a href="https://github.com/junegunn/vim-plug" target="_blank">Plug Vim</a> and <a href="https://github.com/VundleVim/Vundle.vim" target="_blank">Vundle</a></p>

Install norminette v3 <a href="https://github.com/42School/norminette" target="_blank">here</a> and 42 header 42 Header <a href="https://github.com/42Paris/42header" target="_blank">here</a>

To install de Vim Plugins, copy the file .vimrc to your root dir.

Then open .vimrc and press <code>Ctrl + a</code>.

After that, run <code>:PluginInstall</code>.

Then Reset save the changes and exit vim.

Copy the norminette.vim file to /home/$(whoami)/.vim/plugged/norminette-vim/compile.
<code> sudo cp -f /home/$(whoami)/Desktop/Vim/norminette-vim /home/$(whoami)/.vim/plugged/norminette-vim/compile</code>

The Auto-complete and the Icons for NEERTree need a bit more of work, just follow this instructions:

Auto-complete: https://github.com/ycm-core/YouCompleteMe#linux-64-bit

Icons: https://github.com/ryanoasis/nerd-fonts#font-installation

Next time you open vim, the plugins will all be instaled! Enjoy!
