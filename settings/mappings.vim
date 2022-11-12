"------------------------------------------------------------------------------
" #map #noremap #hotkey

"let mapleader='\'         =<leader>
let mapleader=';'
noremap \ ;

inoremap jj <Esc>

" moving around in command mode
 cnoremap <C-h> <left>
 cnoremap <C-j> <down>
 cnoremap <C-k> <up>
 cnoremap <C-l> <right>

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

" tagbar, autorun
autocmd FileType python,go,javascript,vue,sh,markdown,vim TagbarOpen

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
