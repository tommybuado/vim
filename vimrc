filetype indent plugin on
syntax on

set nocompatible
set noswapfile
set number
set nowrap
set backspace=indent,eol,start
set hidden
set re=1
set laststatus=2
set foldmethod=manual

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" tabs and spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab
set autoindent
set smartindent

" reveal hidden characters
set list! listchars=tab:›\ ,space:·,eol:¬

" undo files even if already close (until shutdown/restart)
set undodir=/tmp/vim-undo
set undofile

if !isdirectory("/tmp/vim-undo")
	call mkdir ("/tmp/vim-undo", "p", 0700)
endif

set viminfo+=n~/.vim/.viminfo

" colorscheme
colorscheme defaults

" netrw settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_keepdir = 0

" user-defined environment variables
let $RUNTIMEPATH=split(&runtimepath, ",")[0]
let $VIMRC="$HOME/.vim/vimrc"

" keybindings
let mapleader=","

noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

nmap <leader>l :set list!<CR>
nmap <leader>, :nohl <CR>

" navigate between errors quickly
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" plugins
let g:htl_css_templates = 1
let g:htl_all_templates = 1

let g:ale_linters = {
	\   "*": ["remove_trailing_lines", "trim_whitespace"],
	\   "go": ["gopls", "staticcheck"],
	\   "typescript": ["tsserver", "eslint"],
	\ }

let g:ale_lint_on_text_changed = "never"
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:ale_fixers = {
	\   "go": ["goimports"],
	\   "typescript": ["prettier"],
	\   "javascript": ["prettier"],
	\   "css": ["prettier"],
	\   "html": ["prettier"],
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
