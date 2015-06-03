" Set improved mode
set nocompatible

" Turn filetype off (required to enable Vundle)
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Include plugins here
" Powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Nerdtree
Bundle 'scrooloose/nerdtree'

" Python mode
Bundle 'klen/python-mode'

" Jedi VIM (python autocompleter)
Bundle 'davidhalter/jedi-vim'

" End plugins

call vundle#end()            " required
filetype plugin indent on    " required
" End of vundle configuration

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

" Make backspace work properly in INSERT mode
set backspace=2

" Set solarized colorscheme
" set background=dark
" colorscheme solarized

" Map shift + h,j,k,l to navigate splits 
nmap <S-H> <C-W>h
nmap <S-J> <C-W>j
nmap <S-K> <C-W>k
nmap <S-L> <C-W>l

" Enable matchit script (comes by default with vim)
source $VIMRUNTIME/macros/matchit.vim

"" END GENERAL VIM ""

"" PYTHON ""

" --Python-mode options-- "

" Enable python-mode "
let g:pymode = 1

" Trim unused whitespaces on save
" let g:pymode_trim_whitespaces = 1

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
let g:pymode_doc_bind = '<F3>'

" Disable run code script (for the moment) 
let g:pymode_run = 0

" Disable debugger (for the moment)
let g:pymode_breakpoint = 0

" Disable code checking (for the moment, is causing SEGFAULT)
let g:pymode_lint = 0

" Disable check code when saving
let g:pymode_lint_on_write = 0

" Check code on the fly
let g:pymode_lint_on_fly = 1

" Disable rope script (I am using jedi-vim)
let g:pymode_rope = 0

" Disable pymode syntax (for the moment)
let g:pymode_syntax = 0


"" MATLAB ""
" Enable mlint
" autocmd BufEnter *.m compiler mlint

"" NerdTree ""
" Map it to F2
map <F2> :NERDTreeToggle<CR>
