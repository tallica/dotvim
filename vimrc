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
set scrolloff=5
set updatecount=50
set laststatus=2
set novisualbell
set hidden
set pastetoggle=<F3>
set smartcase
set ttimeoutlen=50
set encoding=utf-8
set fileencodings=utf-8

"formatting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set smartindent
set copyindent
set cindent

"enable visible whitespace
set listchars=tab:»·,trail:·,precedes:<,extends:>
set list

syntax on
filetype on
filetype indent on
filetype plugin on

"tmp files
set directory=/var/tmp/vim

call pathogen#runtime_append_all_bundles()

"colorschemes
colorscheme railscasts

if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
endif

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

nmap ,o o<Esc><Up>
nmap ,O O<Esc><Down>

"SmoothPageScroll
let g:smooth_page_scroll = 1
"map <PageDown> :call SmoothPageScrollDown()<CR>
"map <PageUp>   :call SmoothPageScrollUp()<CR>
"let g:smooth_page_scroll_delay = 1

"buffer mappings
noremap <M-j> :bp<CR>
noremap <M-k> :bn<CR>
noremap <M><Tab> :e#<CR>
noremap <M-1> :1b<CR>
noremap <M-2> :2b<CR>
noremap <M-3> :3b<CR>
noremap <M-4> :4b<CR>
noremap <M-5> :5b<CR>
noremap <M-6> :6b<CR>
noremap <M-7> :7b<CR>
noremap <M-8> :8b<CR>
noremap <M-9> :9b<CR>
noremap <M-0> :10b<CR>

inoremap <M-j> <Esc>:bp<CR>
inoremap <M-k> <Esc>:bn<CR>
inoremap <M><Tab> <Esc>:e#<CR>
inoremap <M-1> <Esc>:1b<CR>
inoremap <M-2> <Esc>:2b<CR>
inoremap <M-3> <Esc>:3b<CR>
inoremap <M-4> <Esc>:4b<CR>
inoremap <M-5> <Esc>:5b<CR>
inoremap <M-6> <Esc>:6b<CR>
inoremap <M-7> <Esc>:7b<CR>
inoremap <M-8> <Esc>:8b<CR>
inoremap <M-9> <Esc>:9b<CR>
inoremap <M-0> <Esc>:10b<CR>
inoremap <M-w> <Esc>:w!<CR>i

"miniBufExplorer
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow = 1

let g:bufExplorerSortBy = "name"

autocmd BufRead,BufNew :call UMiniBufExplorer

noremap <leader>u  :TMiniBufExplorer<cr>
noremap <c-w><c-t> :TMiniBufExplorer<cr>

"Toggle whitespaces
noremap <F2> :set list!<cr>

"Supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionType = "context"

"taglist
let Tlist_Sort_Type = "order"
let Tlist_Show_One_File = 1

"Commandline mappings
cnoremap <c-a> <Home>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>
cnoremap <c-f> <Right>
cnoremap <c-b> <Left>
cnoremap <c-d> <Delete>

"Insert-mode mappings
noremap! <c-a> <Home>
noremap! <c-e> <End>
noremap! <c-p> <Up>
noremap! <c-n> <Down>
noremap! <c-f> <Right>
noremap! <c-b> <Left>

" Emacs style mappings
inoremap          <C-A> <C-O>^
cnoremap          <C-A> <Home>
" If at end of a line of spaces, delete back to the previous line.
" Otherwise, <Left>
inoremap <silent> <C-B> <C-R>=getline('.')=~'^\s*$'&&col('.')>strlen(getline('.'))?"0\<Lt>C-D>\<Lt>Esc>kJs":"\<Lt>Left>"<CR>
cnoremap          <C-B> <Left>
" If at end of line, decrease indent, else <Del>
inoremap <silent> <C-D> <C-R>=col('.')>strlen(getline('.'))?"\<Lt>C-D>":"\<Lt>Del>"<CR>
cnoremap          <C-D> <Del>
" If at end of line, fix indent, else <Right>
inoremap <silent> <C-F> <C-R>=col('.')>strlen(getline('.'))?"\<Lt>C-F>":"\<Lt>Right>"<CR>
cnoremap          <C-F> <Right>
inoremap          <C-E> <End>
cnoremap          <C-E> <End>
noremap!          <M-a> <C-O>(
map!              <M-b> <S-Left>
noremap!          <M-d> <C-O>dw
noremap!          <M-e> <C-O>)
map!              <M-f> <S-Right>
noremap!          <M-h> <C-W>
noremap           <M-l> guiww
noremap           <M-u> gUiww
noremap!          <M-l> <Esc>guiw`]a
noremap!          <M-u> <Esc>gUiw`]a
noremap!          <M-{> <C-O>{
noremap!          <M-}> <C-O>}

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

"Chapa
let g:chapa_default_mappings = 1

let loaded_matchparen = 1
