set nocompatible
set backspace=indent,eol,start
set nobackup
set number
set nowrap
set history=32
set ruler
set showcmd
set incsearch
set nohlsearch
set ruler
set scrolloff=10
set updatecount=50
set laststatus=2
set novisualbell
set ofu=syntaxcomplete#Complete

"formatting
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent
set cindent

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
