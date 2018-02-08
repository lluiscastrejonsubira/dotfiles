" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'davidhalter/jedi-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tmhedberg/SimpylFold'
Plug 'cjrh/vim-conda'
call plug#end()

"" General VIM ""
" Set syntax highlighting
syntax on

" Set improved mode
set nocompatible

" Establish autoindent automatically given a file extension
filetype plugin indent on

" Use better cmd-line completition
set wildmenu

" Make search only sensitive to capital letters
set ignorecase
set smartcase

" Make splits the regular way
set splitright
set splitbelow

" Activate autoindent
set autoindent

" Establish confirm changes dialog
set confirm

" Display cursor position
set ruler

" Always display the status line
set laststatus=2

" Display line numbers
set number

" Establish 4 space indentation
set shiftwidth=4
set softtabstop=4
set expandtab

" Set column limit
set colorcolumn=80

" Make backspace work properly in INSERT mode
set backspace=2

" Set colorscheme
colorscheme monokai

"" NerdTREE ""
" Start NERDTree
autocmd VimEnter * NERDTree
" Jump to the main window.
autocmd VimEnter * wincmd p

" Ignore .pyc files
let NERDTreeIgnore = ['\.pyc$']

"" Airline "" 
let g:airline_theme='minimalist'
