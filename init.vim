set nu
set rnu
syntax on
set nohls
set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgray
set guicursor= 
set termguicolors
set background=light
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set scrolloff=3
set foldmethod=indent
set foldlevel=50  " Folds default opened untill level 50
set noshowmode
set scrolloff=8
set updatetime=100
set shortmess+=c

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'


Plug 'machakann/vim-highlightedyank'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'tomasr/molokai'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

filetype plugin on 
highlight Visual cterm=bold ctermbg=darkgray ctermfg=NONE
let mapleader = " "


nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>cs :CocSearch 
nnoremap <leader>pf :GFiles<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap \p  :Prettier<CR>
nnoremap \s  :%S/<C-R>=expand("<cword>")<CR>/
nnoremap <leader>rr :%S///g<Left><Left>

nnoremap <Leader><CR> :tabedit ~/.config/nvim/init.vim<CR>
nnoremap <Leader>\ :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <C-k> ddkPk<CR>
nnoremap <C-j> ddpk<CR>
nmap <leader>/ :Commentary<CR>

" noremap <silent> <C-S> :update<CR>
nnoremap <silent> <C-s> :update<CR>
" inoremap <silent> <C-S><C-O>:update<CR>

imap jj <Esc>
" vnoremap <silent> <C-S><C-C>:update<CR>

" nmap <leader>t :NERDTreeToggle<CR>
" " sync open file with NERDTree
" " " Check if NERDTree is open or active
" function! IsNERDTreeOpen()        
"   return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
" endfunction
 
" " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" " file, and we're not in vimdiff
" function! SyncTree()
"   if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
"     NERDTreeFind
"     wincmd p
"   endif
" endfunction

" " Highlight currently open buffer in NERDTree

" autocmd BufEnter * call SyncTree()


" nohighlight after search
" nmap <C-h> :noh<Enter>

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gF :GFiles<CR>

" for vim-go
let g:go_def_mapping_enabled = 0

" highlightedyank
let g:highlightedyank_highlight_duration = 500


colorscheme badwolf
" colorscheme gruvbox
" map <C-b> :NERDTreeToggle<CR>
"autocmd FileType apache setlocal commentstring=#\ %s
"
"
"
"let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
