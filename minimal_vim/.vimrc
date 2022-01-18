
set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'

" Fancy start screen
Plug 'mhinz/vim-startify'


" Appearance
Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'
Plug 'ayu-theme/ayu-vim' " or other package manager


call plug#end()


set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu


let g:airline_theme='simple'


let mapleader = " " 


source $HOME/.config/nvim/additional/sets.vim
source $HOME/.config/nvim/additional/maps.vim
