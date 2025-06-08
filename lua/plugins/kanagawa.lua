-- kanagawa.lua
--
-- Configures the kanagawa.nvim colorscheme plugin for Neovim, setting it as the default colorscheme with high priority.
--
-- For more information, see:
--   https://github.com/rebelot/kanagawa.nvim
--
return {
  'rebelot/kanagawa.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'kanagawa'
  end,
} 