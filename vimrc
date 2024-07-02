filetype indent plugin on
syntax on
colorscheme defaults

let g:is_posix = 1

set nocompatible
set hidden
set noswapfile
set nowrap
set wildmenu
set confirm
set backspace=indent,eol,start
set notimeout ttimeout ttimeoutlen=200
set laststatus=2
set pastetoggle=<F11>

set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>

inoremap kj <ESC>
vnoremap kj <ESC>

let mapleader = ","

set incsearch
set hlsearch
set ignorecase
set smartcase

nmap <leader>, :nohl<CR>

set list! listchars=tab:›\ ,eol:¬,space:·
nmap <leader>l :set list!<CR>

nmap <leader>gs :Git<CR>
nmap <leader>p :Git push<CR>
nmap <leader>P :Git pull<CR>
