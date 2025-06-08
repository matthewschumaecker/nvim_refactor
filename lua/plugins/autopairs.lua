-- autopairs.lua
--
-- Configures nvim-autopairs, a plugin that automatically inserts matching brackets, quotes, and other paired characters while typing in Neovim.
--
-- For more information, see:
--   https://github.com/windwp/nvim-autopairs
--
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = true,
} 