call plug#begin()


"
Plug 'ekalinin/Dockerfile.vim'


"
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'severin-lemaignan/vim-minimap'
Plug 'ryanoasis/vim-devicons'
Plug 'reedes/vim-pencil'

"autocomplete
"Plug 'valloric/youcompleteme'


"
"Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'mitsuhiko/jinja2'
Plug 'glench/vim-jinja2-syntax'
Plug 'elzr/vim-json'


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
