-- html.lua
--
-- Sets HTML-specific indentation options using an autocmd. Adjusts tab and indent settings for HTML files in Neovim.
--
-- For more information, see:
--   :help autocmd
--   :help filetype-plugin
--
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'html',
  callback = function()
    vim.bo.expandtab = true
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.smartindent = false
    vim.bo.autoindent = false
    vim.bo.cindent = false
  end,
}) 