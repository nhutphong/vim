call plug#begin()


"
Plug 'ekalinin/Dockerfile.vim'


"
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'severin-lemaignan/vim-minimap'
Plug 'ryanoasis/vim-devicons'

"autocomplete
"Plug 'valloric/youcompleteme'


"
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'mitsuhiko/jinja2'
Plug 'glench/vim-jinja2-syntax'


"snippet
Plug 'sirver/ultisnips'
Plug 'ervandew/supertab'


" auto complete quotes parens brackets
Plug 'raimondi/delimitmate'


"add text-object delete,change text in (),{}, ...
Plug 'wellle/targets.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'


"title case
Plug 'christoomey/vim-titlecase'


"
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'


" searching files
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'


"colorscheme
Plug 'altercation/vim-colors-solarized'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'
Plug 'kabbamine/vcoolor.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ajmwagar/vim-deus'
Plug 'srcery-colors/srcery-vim'
Plug 'fedepujol/nv-themes'
Plug 'dracula/vim', { 'as': 'dracula' }


" color indent line
Plug 'yggdroot/indentline'


"Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'


"style code
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'


"
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'


" search buffer and jump to character, words , line, lines, ... 
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'


"multi cursor
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}


"github
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'


" aligning text
Plug 'godlygeek/tabular'


Plug 'christoomey/vim-tmux-navigator'


" macros store name
Plug 'vim-scripts/marvim'

" marks
Plug 'kshenoy/vim-signature'

" undo redo
Plug 'mbbill/undotree'

call plug#end()


"vim-plug
":source %          reload file
":PlugInstall       install
":plugUpdate        update plugin
":PlugClean         delete

"PlugUpgrade    -> upgrade itself

set nocompatible              " required

" Helps force plugins to load correctly when it is turned back on below
filetype off

" For plug-ins to load correctly.
autocmd filetype plugin indent on

"set encoding=utf-8
set fileencoding=utf-8
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


"------------------------------------------------------------------------------
" #map #noremap #hotkey

"let mapleader='\'         =<leader>
let mapleader=';'
noremap \ ;

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
map <C-h> gT       "previous tab
map <C-l> gt       "next tab
map <C-n> :tabnew<cr>  "new tab

"p or shift+p paste vim in vim
";p paste  tu program khac vao vim
"nnoremap <leader>p "+gP

" Buffer Navigation
nnoremap gbl :ls                  " list buffers
nnoremap <silent> [b :bp<CR>      " previous buffer
nnoremap <silent> ]b :bn<CR>      " next buffer

nnoremap <silent> [B :bfirst<CR>     " first buffer
nnoremap <silent> ]B :blast<CR>      " last buffer

"open file config
nmap <leader>vimrc :e ~/.vim/vimrc<cr>
nmap <leader>zshrc :e ~/.zshrc<cr>
nmap <leader>bashrc :e ~/.bashrc<cr>
nmap <leader>tmuxconf :e ~/.tmux/.tmux.conf.local<cr>

nnoremap <F5> :UndotreeToggle<CR>
nnoremap <F10> :NERDTree<CR>
nmap <F8> :TagbarToggle<CR>

"reload file source file_name
nmap <leader>loadvim :so ~/.vim/vimrc<cr>

"colo ron trong file vimrc = :colo ron<cr> trong command vim
"set<space> = :
"colo ron ===== :colo ron<cr>


"------------------------------------hotkey end------------------------------------------


" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"------------------------------------------------------------------------------

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
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion


" search then jump to
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

"ultisnips
" phai map to <C-j> tranh xung dot youcompleteme
let g:UltiSnipsExpandTrigger="<C-j>" 

let g:UltiSnipsJumpBackwardTrigger="<S-tab>"        "up
let g:UltiSnipsJumpForwardTrigger="<tab>"           "down

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"------------------------------------------------------------------------------

" indentline
" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Background (Vim, GVim)
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'

"------------------------------------------------------------------------------

" tmux
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

"------------------------------------------------------------------------------
"gitgutter
highlight GitGutterAdd    guifg=#009900 ctermfg=green
highlight GitGutterChange guifg=#bbbb00 ctermfg=yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=red

"------------------------------------------------------------------------------
"title case
let g:titlecase_map_keys = 0

nmap <leader>gz  <Plug>Titlecase
vmap <leader>gz  <Plug>Titlecase
nmap <leader>gzz <Plug>TitlecaseLine
