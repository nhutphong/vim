call plug#begin()
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
call plug#end()

autocmd vimenter * NERDTree

set shell=/usr/bin/zsh

syntax on
set textwidth=80
set number
set showcmd
set cursorline
