-- autocmds.lua
--
-- This file sets up useful Neovim autocommands, such as highlighting on yank and showing diagnostics on CursorHold. Autocommands automate editor behavior based on events.
--
-- For more information, see:
--   :help autocmd
--   https://neovim.io/doc/user/autocmd.html

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
}) 