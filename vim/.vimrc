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


""" PYTHON """
" Highlight column overflow for python files
augroup vimrc_autocmds
      autocmd!
      autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
      autocmd FileType python match Excess /\%79v.*/
      autocmd FileType python set nowrap
augroup END

" Disable autocompletion on dot for jedi-vim
let g:jedi#popup_on_dot = 0
