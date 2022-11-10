
set nocompatible              " required

" Helps force plugins to load correctly when it is turned back on below
filetype off

" For plug-ins to load correctly.
autocmd filetype plugin indent on

set shell=/usr/bin/zsh

set clipboard^=unnamed,unnamedplus
set mouse=a
set t_Co=256

syntax on

"size gvim
set columns=130
set lines=41

"add suggest code of zsh for vim
"use tab, ctrl p, ctrl n
set wildmenu
set wildmode=full


" Automatically wrap text that extends beyond the screen length.
set wrap
set linebreak
set showbreak=...
set nolist

" Indentation & Tabs
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

set foldmethod=indent

"use spaces instead of tabs
set expandtab
set smarttab

" textwidth=full screen
set textwidth=119
set wrapmargin=2
set formatoptions+=t

set whichwrap+=<,>,h,l

" textwidth+=1 add them color
set colorcolumn=+1


" color column for cursor chacracter
set cursorcolumn 

" color select text in visual mode
" cterm, gui =  bold italic underline reverse none.

set background=dark


if has("gui_running")
    " setup for gvim, trong block if else moi co effect
    colo srcery 
    
    " color cho comment
    hi Comment guifg=green

    " highlight visual mode
    hi visual gui=bold guibg=silver guifg=red
    "
    "highlight search
    hi Search guibg=yellow guifg=black

    "highlight column cursor of number
    hi LineNr guifg=yellow
    hi cursorlinenr guifg=aqua

    hi colorcolumn guibg=red
else
    " setup for vim=terminal
    "set background=dark
    colo oceanic_material

    hi Comment ctermfg=green

    hi visual cterm=bold ctermbg=darkblue ctermfg=red

    hi Search ctermbg=yellow ctermfg=black

    "
    hi LineNr ctermfg=yellow
    hi cursorlinenr ctermfg=aqua

    hi colorcolumn ctermbg=red
endif

" chu y khi co file .editorconfig se overrive no
au FileType python 
    \ setlocal tabstop=4
    \ softtabstop=4 
    \ shiftwidth=4
    \ textwidth=79
    \ fileformat=unix


" For Full stack development 'au' command
au FileType html,css,js
  \ setlocal ts=2 sw=2 sts=2 

"mau=dark colorscheme
"srcery darkblue desert evening  gruvbox dogrun atom molokayo space-vim-dark darkblue
"torte sonokai peachpuff onedark OceanicNext

"mau=white
"github


" display options
set showmode
set showcmd
set cursorline


" Display & format

set number
"set relativenumber


set showmatch


" Search
set hlsearch
set incsearch
set ignorecase
set smartcase


set ruler
set rulerformat=%l,%v


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
