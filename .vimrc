"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Auto-complete
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

"Plug Vim
call plug#begin()

"NERDtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

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

"Fzf search
nnoremap <C-f> :Files<cr>

"Set encoding
set encoding=utf-8
scriptencoding utf-8

"Change Vim root
nnoremap <C-r> :cd %:p:h<CR>:pwd<CR>

"Show white spaces
set list
set listchars=eol:^,tab:\|\ ,trail:\ ,space:·,extends:>,precedes:<

"Identation
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2

"Cmd History
set history=5000

"Line Nbr
set number

"Cursor line
"set cursorline

"Activate mouse
set mouse=a

"Share download between Vim and GUI
set clipboard=unnamedplus

"Fold with identation
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

"Handle Vim
nnoremap <C-l> :q!<cr>

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

" Update a buffer's contents on focus if it changed outside of Vim.
au FocusGained,BufEnter * :checktime

"Syntax color
syntax on

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"Colorscheme
set t_Co=256
if has('+termguicolors')
		let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
endif
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
colorscheme sonokai
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE

"Auto-comments
filetype plugin on
map cc <Plug>NERDCommenterInvert

"Alias on Vim
command! -nargs=+ Sub call Sub(<f-args>)
function! Sub( ... )
		execute printf('%%substitute/\<%s\>/%s/g', a:1, a:2)
endfunction

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
let g:syntastic_check_on_open = 0

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 0

" Skip check when closing
let g:syntastic_check_on_wq = 1

"let g:ale_enabled 
"let g:ale_set_signs = 0
set signcolumn=no
set noro
