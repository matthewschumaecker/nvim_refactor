-- toggleterm.lua
--
-- Configures toggleterm.nvim, a plugin for managing integrated terminal windows in Neovim. Sets up key mappings and terminal direction.
--
-- For more information, see:
--   https://github.com/akinsho/toggleterm.nvim
--
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      direction = 'horizontal',
    }
  end,
} 