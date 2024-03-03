highlight clear

if exists("syntax_on")
	syntax reset
endif

set background=dark
let g:colors_name="defaults"

highlight Normal         guibg=NONE   ctermbg=NONE
highlight Comment        ctermfg=245  ctermbg=NONE
highlight Todo           ctermfg=9    ctermbg=NONE cterm=bold

highlight StatusLine     ctermfg=15   ctermbg=NONE cterm=bold
highlight StatusLineNC   ctermfg=7    ctermbg=NONE cterm=NONE
highlight VertSplit      ctermfg=8    ctermbg=NONE cterm=NONE
highlight LineNr         ctermfg=240  ctermbg=NONE
highlight NonText        ctermfg=240  ctermbg=NONE
highlight SpecialKey     ctermfg=240  ctermbg=NONE

highlight ErrorMsg       ctermfg=9    ctermbg=NONE cterm=bold
highlight WarningMsg     ctermfg=11   ctermbg=NONE cterm=bold

highlight Pmenu          ctermfg=15   ctermbg=236
highlight PmenuSel       ctermfg=0    ctermbg=11

highlight clear CursorLine
highlight CursorLine     ctermfg=NONE ctermbg=236  cterm=NONE

highlight ColorColumn    ctermfg=15   ctermbg=240
call matchadd("ColorColumn", "\\%81v", 100)

" vim-ale plugin highlights
highlight SignColumn     guibg=NONE   ctermbg=NONE
highlight ALEWarningSign ctermfg=11   ctermbg=NONE
highlight ALEErrorSign   ctermfg=9    ctermbg=NONE
