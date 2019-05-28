" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
"
call plug#begin('~/.nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/echodoc.vim'

" Better folding
Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'

" Anaconda environments support
Plug 'cjrh/vim-conda'

" Python autocomplete
Plug 'davidhalter/jedi'
" Plug 'davidhalter/jedi-vim'
" Plug 'zchee/deoplete-jedi'
"
" Git support
Plug 'tpope/vim-fugitive'

" Comment shortcut
Plug 'tpope/vim-commentary'

" Surround words
Plug 'tpope/vim-surround'

" Better syntax
Plug 'sheerun/vim-polyglot'

" Vim Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" Colorschemes
Plug 'sonph/onehalf'
Plug 'joshdick/onedark.vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'KeitaNakamura/neodark.vim'
Plug 'NLKNguyen/papercolor-theme'

" LCN
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

"" General VIM 

" Set 24-bit colors 
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Set 256 colors

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
" set laststatus=2

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
set background=light
" colorscheme monokai
" colorscheme neodark
" colorscheme onehalfdark
colorscheme onedark
" colorscheme github
" colorscheme PaperColor

"" NerdTREE
" Start NERDTree
autocmd VimEnter * NERDTree
" Jump to the main window.
autocmd VimEnter * wincmd p

" Ignore .pyc files
let NERDTreeIgnore = ['\.pyc$']

"" Airline "" 
" let g:airline_theme='minimalist'
let g:airline_theme='onedark'
" let g:airline_theme="github"

" Python folds
let g:SimpylFold_fold_import = 0


"" Vim-conda
let g:conda_startup_msg_suppress = 1

"" Jedi-vim
"" let g:jedi#popup_on_dot = 0

"" Deoplete
let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

"" Language Client 
let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ }

nnoremap <C-m> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
