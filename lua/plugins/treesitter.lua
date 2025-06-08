-- treesitter.lua
--
-- Configures the nvim-treesitter plugin for advanced syntax highlighting, code folding, and indentation support in Neovim. Specifies languages to install and enables features like highlighting and indentation.
--
-- For more information, see:
--   https://github.com/nvim-treesitter/nvim-treesitter
--   :help nvim-treesitter
--
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
    auto_install = true,
    highlight = { enable = true, additional_vim_regex_highlighting = { 'ruby' } },
    indent = { enable = true, disable = { 'html' } },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end,
} 