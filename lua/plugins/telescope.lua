-- telescope.lua
--
-- Configures telescope.nvim, a highly extendable fuzzy finder over lists for Neovim. Sets up file and text search key mappings and dependencies.
--
-- For more information, see:
--   https://github.com/nvim-telescope/telescope.nvim
--   :help telescope
--
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind [G]rep' })
  end,
} 