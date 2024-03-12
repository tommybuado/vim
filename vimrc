" user-defined environments
let $RUNTIMEPATH=split(&runtimepath, ",")[0]
let $VIMRC="$HOME/.vim/vimrc"

" general settings
filetype indent plugin on
syntax on

" use new regex engine
set re=0

set nocompatible
set noswapfile
set number
set nowrap
set backspace=indent,eol,start
set laststatus=2

" folding
set foldmethod=manual

" searching
set hlsearch
set incsearch
set smartcase

" tabs and spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab
set smartindent

" show hidden characters
set list listchars=tab:›\ ,space:·,eol:¬

" undo settings
if !isdirectory("/tmp/vim-undo")
	call mkdir ("/tmp/vim-undo", "p", 0700)
endif

set undodir=/tmp/vim-undo
set undofile

" viminfo
set viminfo+=n~/.vim/.viminfo

" colorscheme
colorscheme defaults

" netrw settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_keepdir = 0

" keybindings
let mapleader=","

noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

inoremap jk <ESC>
cnoremap jk <ESC>

nmap <leader>l :set list!<CR>
nmap <leader>, :nohl<CR>

nmap J :+10<CR>
nmap K :-10<CR>

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

nmap gd :ALEGoToDefinition<CR>
nmap gr :ALEFindReferences<CR>

" vim-ale plugin settings
let g:ale_linters = {
	\   "*": ["remove_trailing_lines", "trim_whitespace"],
	\   "go": ["gopls", "staticcheck"],
	\   "typescript": ["tsserver", "eslint"],
	\ }

let g:ale_lint_on_text_changed = "never"
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:ale_fixers = {
	\   "javascript": ["prettier"],
	\   "typescript": ["prettier"],
	\   "css": ["prettier"],
	\   "html": ["prettier"],
	\   "go": ["goimports"],
	\ }

let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1

let g:ale_sign_error = ""
let g:ale_sign_warning = ""

let g:ale_echo_msg_error_str = "E"
let g:ale_echo_msg_warning_str = "W"
let g:ale_echo_msg_format = "[%linter%] %s [%severity%]"

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

let g:ale_set_balloons = 1
let g:ale_completion_enabled = 1

" lit-html plugin settings
let g:htl_all_templates = 1
let g:htl_css_templates = 1
