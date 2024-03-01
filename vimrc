" user-defined environments
let $RUNTIMEPATH=split(&runtimepath, ",")[0]
let $VIMRC="$HOME/.vim/vimrc"

" general settings
filetype indent plugin on
syntax on

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
