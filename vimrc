" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


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
map sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'


call plug#end()

colorscheme elflord
