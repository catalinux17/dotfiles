-- Treesitter interface
return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    -- 'nvim-treesitter/playground',
  }
}
