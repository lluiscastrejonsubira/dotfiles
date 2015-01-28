" Enable pathogen
call pathogen#infect()
call pathogen#helptags()

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

" Set solarized colorscheme
set background=dark
colorscheme solarized

" Map shift + h,j,k,l to navigate splits 
nmap <S-H> <C-W>h
nmap <S-J> <C-W>j
nmap <S-K> <C-W>k
nmap <S-L> <C-W>l


" ---PYTHON--- "

" --Jedi-vim options-- "

" Disable autocompletion on dot for jedi-vim
let g:jedi#popup_on_dot = 0
"
" -------------------- "

" --Python-mode options-- "

" Enable python-mode "
let g:pymode = 1

" Trim unused whitespaces on save
let g:pymode_trim_whitespaces = 1

" Setup default python-mode options
let g:pymode_options = 1

" Setup max line length
let g:pymoe_options_max_line_length = 79

" Color columns at max line length
let g:pymode_options_colorcolumn = 1

" Enable pymode indentation
let g:pymode_indent = 1

" Disable pymode folding (for the moment) 
let g:pymode_folding = 0

" Disable pymode-motion (for the moment)
let g:pymode_motion = 1

" Enable pymode documentation plugin
let g:pymode_doc = 1

" Bind key to show documentation for current word
let g:pymode_doc_bind = 'K'

" Disable run code script (for the moment) 
let g:pymode_run = 0

" Disable debugger (for the moment)
let g:pymode_breakpoint = 0

" Enable code checking
let g:pymode_lint = 1

" Check code when saving
let g:pymode_lint_on_write = 1

" Check code on the fly
let g:pymode_lint_on_fly = 1

" Disable rope script (I am using jedi-vim)
let g:pymode_rope = 0

" Enable pymode syntax
let g:pymode_syntax = 1
