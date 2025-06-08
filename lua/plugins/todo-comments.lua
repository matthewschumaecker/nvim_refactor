-- todo-comments.lua
--
-- Configures the todo-comments.nvim plugin to highlight and search for TODO, FIX, and similar comment keywords in your code. Integrates with plenary.nvim for enhanced functionality.
--
-- For more information, see:
--   https://github.com/folke/todo-comments.nvim
--
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },
} 