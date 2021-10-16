local M = {}
M.search_vim = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/dotfiles/nvim/",
    })
end

M.search_zsh = function()
    require("telescope.builtin").find_files({
        hidden = true,
        prompt_title = "< Zsh >",
        cwd = "$HOME/dotfiles/zsh",
    })
end

return M
