call plug#begin()
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
call plug#end()

autocmd vimenter * NERDTree

set shell=/usr/bin/zsh

" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" For plug-ins to load correctly.
filetype plugin indent on

" Automatically wrap text that extends beyond the screen length.
set wrap

syntax on
set number

"colorschemy
colo peachpuff

" display options
set showmode
set showcmd

set cursorline

" Encoding
set encoding=utf-8


" Indentation & Tabs

set autoindent

set smartindent

set tabstop=4

set shiftwidth=4

set expandtab

set smarttab


" Display & format

set number

set textwidth=80

set wrapmargin=2

set showmatch


" Search

set hlsearch

set incsearch

set ignorecase

set smartcase


" Browse & Scroll

set scrolloff=5
set laststatus=2
" Speed up scrolling in Vim
set ttyfast


" Spell
"set spell spelllang=en_us


" Miscellaneous

set nobackup

set noswapfile

set autochdir

set undofile

set visualbell

set errorbells


" map key
imap jj <Esc>


" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


