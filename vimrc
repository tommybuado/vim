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
