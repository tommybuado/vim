let g:colors_name = "defaults"

if exists("syntax_on")
	syntax reset
endif

set background=dark
highlight clear

highlight StatusLine   ctermfg=15  ctermbg=NONE cterm=bold
highlight StatusLineNC ctermfg=239 ctermbg=NONE cterm=NONE
highlight VertSplit    ctermfg=239 ctermbg=NONE cterm=NONE

highlight Comment      ctermfg=14  ctermbg=NONE
highlight Todo         ctermfg=9   ctermbg=NONE
highlight NonText      ctermfg=239 ctermbg=NONE
highlight SpecialKey   ctermfg=239 ctermbg=NONE
