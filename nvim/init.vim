
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

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'fatih/vim-go'

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
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim' " or other package manager


call plug#end()


set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu


let g:airline_theme='simple'


let mapleader = " "
nnoremap <Leader>\ :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader><Return> :e ~/.config/nvim/init.vim<CR>


source $HOME/.config/nvim/additional/sets.vim
source $HOME/.config/nvim/additional/treesitter.vim
source $HOME/.config/nvim/additional/telescope.vim
source $HOME/.config/nvim/additional/maps.vim
