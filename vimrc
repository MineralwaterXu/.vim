let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap J 5j
noremap K 5k
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

map S :w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map { :split<CR>
map } :vsplit<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'


call plug#end()

colorscheme elflord
