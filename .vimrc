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

"Tagbar
Plug 'preservim/tagbar'

"42 Header
Plug '42Paris/42header'

"Norminette
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'

"Fzf search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


call plug#end()
map <c-a> :PlugInstall<cr>

"NERDTree
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>
map <C-Left> <C-w>h
map <C-Right> <C-w>l
map <C-Up> <C-w>k
map <C-Down> <C-w>j

"Move lines
nnoremap <M-Up> :m-2<CR>
nnoremap <M-Down> :m+<CR>
vnoremap <M-Up> :m '<-2<CR>gv=gv
vnoremap <M-Down> :m '>+1<CR>gv=gv

"Tagbar
nmap <C-t> :TagbarToggle<CR>

"Idk
"let g:ale_enabled 
"let g:ale_set_signs = 0
"set signcolumn=no
set tabstop=3
set noro

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime
"set signcolumn=number

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

"42 Header
nnoremap <F5> :Stdheader<cr>
let g:user42 = 'bmiguel-'
let g:mail42 = 'bmiguel-@student.42.fr'

"Norminette
nnoremap <C-n> :Norminette<cr>
" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = 'norminette'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 1

" Skip check when closing
let g:syntastic_check_on_wq = 0

"Fzf search
nnoremap <C-f> :Files<cr>

"set termguicolors
"colorscheme bat

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

"Handle Vim
nnoremap <C-l> :q!<cr>

"Make and run
"nnoremap <C-m> :make; ./build/bin/minishell<cr>

"Alias on Vim
command! -nargs=+ Sub call Sub(<f-args>)
function! Sub( ... )
    execute printf('%%substitute/\<%s\>/%s/g', a:1, a:2)
endfunction
