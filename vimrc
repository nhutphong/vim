call plug#begin()
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'severin-lemaignan/vim-minimap'

"autocomplete
Plug 'valloric/youcompleteme'

Plug 'honza/vim-snippets'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'

"colorschemy
Plug 'altercation/vim-colors-solarized'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'


Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
call plug#end()


"source %  -> reload file
"PlugInstall
"plugUpdate
"PlugClean -> delete
"PlugUpgrade


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

"colorschemy
colo molokai

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

"use spaces instead of tabs
set expandtab

set smarttab


" Display & format

set number
"set relativenumber
set textwidth=79

set wrapmargin=2

set showmatch


" Search

set hlsearch

set incsearch

set ignorecase

set smartcase

set ruler
set rulerformat=%l\:%c


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


"let mapleader='\'         =<leader>
let mapleader=';'
" . dot => repeat command truoc do

"map <silent> <leader>g :tabnew 
"co silent se khong thong bao khi press </g>
"map <keyname> :expresion
"khi press <keyname> run :expresion
"map <keyname> <CR>  "khi press <keyname> => press <Enter>
"
"
"<CR> or <Enter> or <Return> => <Enter>
"<BS> => <Backspace>
" map key
imap jj <Esc>

" 1 new tap se co nhieu windows
map <C-l> gt       "shortcut cho next tab
map <C-h> gT       "previous tab
map <C-n> :tabnew  "new tab

"p or shift+p paste vim in vim
";p paste  tu program khac vao vim
nnoremap <leader>p "+gP


"set colo ron trong file vimrc = :colo ron<cr> trong command vim
"set<space> = :
" set colo ron ===== :colo ron<cr>
nmap <leader>cgb :colo gruvbox<cr>


" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'



" NERDTree
autocmd VimEnter * NERDTree       "tự chạy NERDTree ngay sau khi vào Vim
autocmd VimEnter * wincmd p       "thêm màu mè cho code

