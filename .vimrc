"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Auto-complete
"Install YouCompleteMe https://github.com/ycm-core/YouCompleteMe#linux-64-bit
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

"Plug Vim
call plug#begin()

"NERDtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons' "Install Font https://github.com/ryanoasis/nerd-fonts#font-installation

"Colorscheme
Plug 'sainnhe/sonokai'

"Auto-comment
Plug 'preservim/nerdcommenter'

"Airline
Plug 'vim-airline/vim-airline'

call plug#end()
map <c-a> :PlugInstall<cr>

"NERDTree
autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"Syntax color
syntax on

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"Colorscheme
if has('termguicolors')
	set termguicolors
endif
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
colorscheme sonokai

"Auto-comments
filetype plugin on
map cc <Plug>NERDCommenterInvert


"Identation
set autoindent
set smartindent

"Cmd History
set history=5000

"Line Nbr
set number

"Cursor line
set cursorline

"Activate mouse
set mouse=a

"Share download between Vim and GUI
set clipboard=unnamedplus

"Fold with identation
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

"Set encoding
set encoding=UTF-8

"Make and run
nnoremap <C-m> :make; ./build/bin/minishell<cr>
