-- init.lua
--
-- Bootstraps and configures lazy.nvim, a modern plugin manager for Neovim. Handles plugin installation, setup, and UI customization. Imports plugin configurations from this directory.
--
-- For more information, see:
--   https://github.com/folke/lazy.nvim
--
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { import = 'plugins.toggleterm' },
  { import = 'plugins.telescope' },
  { import = 'plugins.autopairs' },
  { import = 'plugins.gitsigns' },
  { import = 'plugins.prettier' },
  { import = 'plugins.lsp' },
  { import = 'plugins.conform' },
  { import = 'plugins.cmp' },
  { import = 'plugins.nvimtree' },
  { import = 'plugins.kanagawa' },
  { import = 'plugins.todo-comments' },
  { import = 'plugins.mini' },
  { import = 'plugins.treesitter' },
  'tpope/vim-sleuth',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
}) 