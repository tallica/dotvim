" Vim color scheme
"
" Name:        railscast.vim
" Maintainer:  Josh O'Rourke <jorourke23@gmail.com> 
" License:     public domain
"
" A GUI Only port of the RailsCasts TextMate theme [1] to Vim.
" Some parts of this theme were borrowed from the well-documented Lucius theme [2].
" 
" [1] http://railscasts.com/about 
" [2] http://www.vim.org/scripts/script.php?script_id=2536

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "railscasts"

" Colors
"  0 #232323
"  1 #DA4939
"  2 #519F50
"  3 #BC9458
"  4 #3465A4
"  5 #75507B
"  6 #06989A
"  7 #9D9B96
"  8 #5A647E
"  9 #CC7833
" 10 #A5C261
" 11 #FFC66D
" 12 #6D9CBE
" 13 #AD7FA8
" 14 #34E2E2
" 15 #E6E0DB

hi Normal                    guifg=#E6E0DB ctermfg=15 guibg=#232323 ctermbg=0
hi Cursor                    guibg=#5A647E ctermfg=8
hi CursorLine                guibg=#333435
hi LineNr                    guifg=#9D9B96 ctermfg=7 guibg=#232323 ctermbg=0
hi Search                    guibg=#5A647E ctermbg=8
hi Visual                    guibg=#5A647E ctermbg=8

" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 ctermfg=10 gui=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE


"rubyComment
hi Comment                   guifg=#BC9458 ctermfg=3 gui=italic
hi Todo                      guifg=#BC9458 ctermfg=3 guibg=NONE gui=italic

"rubyPseudoVariable
"nil, self, symbols, etc
hi Constant                  guifg=#6D9CBE ctermfg=12

"rubyClass, rubyModule, rubyDefine
"def, end, include, etc
hi Define                    guifg=#CC7833 ctermfg=9

"rubyInterpolation
hi Delimiter                 guifg=#519F50 ctermfg=2

"rubyError, rubyInvalidVariable
hi Error                     guifg=#FFFFFF guibg=#990000

"rubyFunction
hi Function                  guifg=#FFC66D ctermfg=11 gui=NONE

"rubyIdentifier
"@var, @@var, $var, etc
hi Identifier                guifg=#AD7FA8 ctermfg=13 gui=NONE

"rubyInclude
"include, autoload, extend, load, require
hi Include                   guifg=#CC7833 ctermfg=9 gui=NONE

"rubyKeyword, rubyKeywordAsMethod
"alias, undef, super, yield, callcc, caller, lambda, proc
hi Keyword                   guifg=#CC7833 ctermfg=9

" same as define
hi Macro                     guifg=#CC7833 ctermfg=9 gui=NONE

"rubyInteger
hi Number                    guifg=#A5C261 ctermfg=10

" #if, #else, #endif
hi PreCondit                 guifg=#CC7833 ctermfg=9 gui=NONE

" generic preprocessor
hi PreProc                   guifg=#CC7833 ctermfg=9 gui=NONE

"rubyControl, rubyAccess, rubyEval
"case, begin, do, for, if unless, while, until else, etc.
hi Statement                 guifg=#CC7833 ctermfg=9 gui=NONE

"rubyString
hi String                    guifg=#A5C261 ctermfg=10

hi Title                     guifg=#FFFFFF

"rubyConstant
hi Type                      guifg=#DA4939 ctermfg=1 gui=NONE

hi DiffAdd                   guifg=#E6E1DC guibg=#144212
hi DiffDelete                guifg=#E6E1DC guibg=#660000

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi xmlTag                    guifg=#E8BF6A
hi xmlTagName                guifg=#E8BF6A
hi xmlEndTag                 guifg=#E8BF6A
