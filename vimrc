filetype off

call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

syntax on
filetype on
filetype indent on
filetype plugin on

set nocompatible
set backspace=indent,eol,start
set nobackup
set number
set nowrap
set history=50
set showcmd
set incsearch
set nohlsearch
set ruler
set scrolloff=5
set sidescrolloff=3
set laststatus=2
set novisualbell
set hidden
set pastetoggle=<F3>
set smartcase
set ignorecase
set ttimeoutlen=50
set encoding=utf-8
set fileencodings=utf-8
set ttyfast
set wildmenu
set wildmode=full
set wildignore+=*.o,.git

"formatting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set smartindent
set autoindent
set copyindent
set cindent

"enable visible whitespace
set listchars=tab:»·,trail:·,precedes:<,extends:>
set list

"tmp files
set directory=/var/tmp/vim

"colorschemes
colorscheme railscasts

if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
endif

"C
autocmd FileType c set tabstop=4
autocmd FileType c set shiftwidth=4

"php
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
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

"css
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

"javascript
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

let mapleader=","

"buffer mappings
noremap <leader><tab> :e#<CR>

"Commandline mappings
cnoremap <c-a> <Home>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>
cnoremap <c-f> <Right>
cnoremap <c-b> <Left>
cnoremap <c-d> <Delete>

"Insert-mode mappings
inoremap <c-a> <Home>
inoremap <c-e> <End>

"Toggle whitespaces
noremap <F2> :set list!<cr>

"SmoothPageScroll
let g:smooth_page_scroll = 1
"map <PageDown> :call SmoothPageScrollDown()<CR>
"map <PageUp>   :call SmoothPageScrollUp()<CR>
"let g:smooth_page_scroll_delay = 1

"miniBufExplorer
let loaded_minibufexplorer = 1
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplorerMoreThanOne = 0
"let g:miniBufExplModSelTarget = 0
"let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplVSplit = 25
"let g:miniBufExplSplitBelow = 1
"autocmd BufRead,BufNew :call UMiniBufExplorer
"noremap <leader>u  :TMiniBufExplorer<cr>
"noremap <c-w><c-t> :TMiniBufExplorer<cr>

"Supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionType = "context"

"taglist
let Tlist_Sort_Type = "order"
let Tlist_Show_One_File = 1

"Chapa
let g:chapa_default_mappings = 1

"Disable matching parenthesis highlighting
let loaded_matchparen = 1

"FUNCTIONS

"FixWhitespace
"https://github.com/bronson/vim-trailing-whitespace
function! s:FixWhitespace(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/\s\+$//'
    call setpos('.', l:save_cursor)
endfunction

" Run :FixWhitespace to remove end of line white space.
command! -range=% FixWhitespace call <SID>FixWhitespace(<line1>,<line2>)
