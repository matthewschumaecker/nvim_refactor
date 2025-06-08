-- prettier.lua
--
-- Configures prettier.nvim, a plugin for integrating the Prettier code formatter with Neovim. Sets up supported filetypes and key mappings for formatting.
--
-- For more information, see:
--   https://github.com/MunifTanjim/prettier.nvim
--   https://prettier.io/
--
return {
  'MunifTanjim/prettier.nvim',
  dependencies = { 'jose-elias-alvarez/null-ls.nvim' },
  config = function()
    require('prettier').setup {
      bin = 'prettier',
      filetypes = {
        'css',
        'html',
        'javascript',
        'json',
        'less',
        'markdown',
        'scss',
        'typescript',
        'yaml',
        'vue',
        'go',
      },
    }
    vim.keymap.set('n', '<Leader>p', ':Prettier<CR>', { noremap = true, silent = true })
  end,
} 