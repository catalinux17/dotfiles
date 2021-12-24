nnoremap <C-s> :update<CR>
nnoremap <leader>bp :bprev
nnoremap <leader>bn :bnext
nnoremap <leader>t :tabedit term://zsh<CR>A
tnoremap <Esc> <C-\><C-n>

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <leader>pv :Vex<CR>
imap jk <esc>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
