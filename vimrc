call plug#begin()
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'severin-lemaignan/vim-minimap'

"autocomplete
Plug 'valloric/youcompleteme'
Plug 'govim/govim'


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
call plug#end()


"source %  -> reload file
"PlugInstall
"plugUpdate
"PlugClean -> delete
"PlugUpgrade


set shell=/usr/bin/zsh

"size gvim
set columns=130
set lines=42

" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.


" For plug-ins to load correctly.
autocmd FileType plugin indent on

" Automatically wrap text that extends beyond the screen length.
set wrap
set linebreak
set nolist
set textwidth=79
"set formatoptions+=a

set colorcolumn=+1
hi ColorColumn guibg=#2d2d2d ctermbg=246

syntax on

"colorschemy
colo darkblue

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

"open file config
nmap <leader>vimrc :e ~/.vim/vimrc<cr>
nmap <leader>zshrc :e ~/.zshrc<cr>
nmap <leader>bashrc :e ~/.bashrc<cr>

"reload file source file_name
map <leader>runvimrc :so ~/.vimrc<cr>


"colo ron trong file vimrc = :colo ron<cr> trong command vim
"set<space> = :
"colo ron ===== :colo ron<cr>
nmap <leader>cgb :colo gruvbox<cr>


"-----------------------------------------------------------------------------


" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'



" NERDTree
autocmd VimEnter * NERDTree       "tự chạy NERDTree ngay sau khi vào Vim
autocmd VimEnter * wincmd p       "thêm màu mè cho code


"vim-easymotion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1


" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

