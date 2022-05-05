# Vim
<p>My Vim and ZSH settings with the plugins I use everyday. Feel free to try them!<p>

<h2> Index </h2>
<p><a href="#Instalation">
  Instalation
</a></p>
<p><a href="#Plugins">
  Plugins
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

<h2 id="Man">Manually Instalation</h2>

<p> You will need vim, and curl instaled</p>

To install the Oh-My-Zsh run
<code>sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"</code>
Copy the .zshrc file to your root dir and reset the terminal.

<p> Now you need to install <a href="https://github.com/junegunn/vim-plug" target="_blank">Plug Vim</a> and <a href="https://github.com/VundleVim/Vundle.vim" target="_blank">Vundle</a></p>

To install de Vim Plugins, copy the file .vimrc to your root dir.

Then open .vimrc and press <code>Ctrl + a</code>.

After that, run <code>:PluginInstall</code>.

Then Reset save the changes and exit vim.

The Auto-complete and the Icons for NEERTree need a bit more of work, just follow this instructions:

Auto-complete: https://github.com/ycm-core/YouCompleteMe#linux-64-bit

Icons: https://github.com/ryanoasis/nerd-fonts#font-installation

Next time you open vim, the plugins will all be instaled! Enjoy!
