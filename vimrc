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

"Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'

"style code
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'


Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'


"github
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'


Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'


call plug#end()

"vim-plug
"source %  -> reload file
"PlugInstall
"plugUpdate -> update plugin
"PlugClean -> delete

"PlugUpgrade -> upgrade itself


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

"hi Visual ctermfg=14 ctermbg=NONE cterm=bold,underline

syntax on

"set background=dark

"colorschemy
colo atom
"mau=dark
"gruvbox dogrun atom molokayo space-vim-dark darkblue torte sonokai peachpuff onedark OceanicNext

"mau=white
"github

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
"co silent se khong thong uao khi press </g>
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
map <leader>xvimrc :so ~/.vimrc<cr>


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
"------------------------------------------------------------------------------

"vim-easymotion
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1


function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())


" show marked lines, select marked jump to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" show marked words, select marked jump to word
map  <Leader>w <Plug>(easymotion-bcw)
nmap <Leader>W <Plug>(easymotion-overwin-w)

map <Leader>l <Plug>(easymotion-lineforward) "right cursor 1 line
map <Leader>j <Plug>(easymotion-j) "down cursor 1 column
map <Leader>k <Plug>(easymojtion-k) "up cursor 1 column
map <Leader>h <Plug>(easymotion-linebackward) "left cursor 1 line
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)


" search 
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"------------------------------------------------------------------------------
"
