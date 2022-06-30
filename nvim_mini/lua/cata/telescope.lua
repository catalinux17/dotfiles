local M = {}
M.search_vim = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/dotfiles/nvim_mini/",
    })
end

M.search_zsh = function()
    require("telescope.builtin").find_files({
        hidden = true,
        prompt_title = "< Zsh >",
        cwd = "$HOME/dotfiles/shell",
    })
end

M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        hidden = true,
        prompt_title = "< dotfiles >",
        cwd = "$HOME/dotfiles",
    })
end

M.search_cht = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Cht.sh >",
        cwd = "$HOME/dotfiles/cht/",
    })
end
return M

