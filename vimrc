set nocompatible
set backspace=indent,eol,start
set nobackup
set number
set nowrap
set history=32
set showcmd
set incsearch
set nohlsearch
set ruler
set scrolloff=10
set updatecount=50
set laststatus=2
set novisualbell
set hidden
set ofu=syntaxcomplete#Complete

"formatting
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent
set cindent

"enable visible whitespace
set listchars=tab:»·,trail:·,precedes:<,extends:>
set list

filetype plugin on
filetype plugin indent on
syntax on

"tmp files
set directory=/var/tmp/vim

call pathogen#runtime_append_all_bundles()

"colorschemes
colorscheme railscasts

if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
endif

"php
autocmd FileType php let php_sql_query = 1
autocmd FileType php let php_htmlInStrings = 1
autocmd FileType php let php_noShortTags = 1
autocmd FileType php let php_folding = 0

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1

nmap ,o o<Esc><Up>
nmap ,O O<Esc><Down>

"SmoothPageScroll
map <PageDown> :call SmoothPageScrollDown()<CR>
map <PageUp>   :call SmoothPageScrollUp()<CR>
let g:smooth_page_scroll_delay = 1

"buffer mappings
noremap <Esc>j :bp<CR>
noremap <Esc>k :bn<CR>
noremap <Esc><Tab> :e#<CR>
noremap <Esc>1 :1b<CR>
noremap <Esc>2 :2b<CR>
noremap <Esc>3 :3b<CR>
noremap <Esc>4 :4b<CR>
noremap <Esc>5 :5b<CR>
noremap <Esc>6 :6b<CR>
noremap <Esc>7 :7b<CR>
noremap <Esc>8 :8b<CR>
noremap <Esc>9 :9b<CR>
noremap <Esc>0 :10b<CR>

inoremap <Esc>j <Esc>:bp<CR>
inoremap <Esc>k <Esc>:bn<CR>
inoremap <Esc><Tab> <Esc>:e#<CR>
inoremap <Esc>1 <Esc>:1b<CR>
inoremap <Esc>2 <Esc>:2b<CR>
inoremap <Esc>3 <Esc>:3b<CR>
inoremap <Esc>3 <Esc>:3b<CR>
inoremap <Esc>4 <Esc>:4b<CR>
inoremap <Esc>5 <Esc>:5b<CR>
inoremap <Esc>6 <Esc>:6b<CR>
inoremap <Esc>7 <Esc>:7b<CR>
inoremap <Esc>8 <Esc>:8b<CR>
inoremap <Esc>9 <Esc>:9b<CR>
inoremap <Esc>0 <Esc>:10b<CR>

"miniBufExplorer
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow = 1

noremap <c-w><c-t> :TMiniBufExplorer<cr>
