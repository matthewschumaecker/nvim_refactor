-- mini.lua
--
-- Configures the mini.nvim plugin suite, enabling features like enhanced statusline and surround editing. Adjusts settings to use icons if a Nerd Font is available.
--
-- For more information, see:
--   https://github.com/echasnovski/mini.nvim
--
return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.surround').setup()
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
    statusline.section_location = function()
      return '%2l:%-2v'
    end
  end,
} 