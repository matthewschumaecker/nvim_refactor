-- gitsigns.lua
--
-- Configures gitsigns.nvim, a plugin that shows Git changes (additions, deletions, modifications) in the sign column of Neovim. Customizes the symbols for each change type.
--
-- For more information, see:
--   https://github.com/lewis6991/gitsigns.nvim
--
return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
} 