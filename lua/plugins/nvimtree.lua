-- nvimtree.lua
--
-- Configures the nvim-tree.lua plugin, providing a file explorer sidebar for Neovim. Sets up dependencies and key mappings for toggling the tree view.
--
-- For more information, see:
--   https://github.com/nvim-tree/nvim-tree.lua
--
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup()
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
} 