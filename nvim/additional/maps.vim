nnoremap <C-s> :update<CR>
nnoremap <leader>bp :bprev
nnoremap <leader>bn :bnext
nnoremap <leader>t :tabedit term://zsh<CR>A
tnoremap <Esc> <C-\><C-n>

nnoremap <leader>C :copen<CR>
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
nnoremap <leader>c :Commentary<CR>


nnoremap <leader>F :lua vim.lsp.buf.formatting()

"nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>P :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>p :lua require('telescope.builtin').grep_string()<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>f :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>bb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vrc :lua require('cata.telescope').search_vim()<CR>
nnoremap <leader>zsh :lua require('cata.telescope').search_zsh()<CR>
nnoremap <leader>dot :lua require('cata.telescope').search_dotfiles()<CR>
nnoremap <leader>cht :lua require('cata.telescope').search_cht()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
