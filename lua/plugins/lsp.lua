-- lsp.lua
--
-- Configures nvim-lspconfig and related plugins for Language Server Protocol (LSP) support in Neovim. Sets up automatic server installation, capabilities, and integration with completion plugins.
--
-- For more information, see:
--   https://github.com/neovim/nvim-lspconfig
--   :help lsp
--
return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    local lspconfig = require 'lspconfig'
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            completion = { callSnippet = 'Replace' },
          },
        },
      },
      gopls = {},
    }

    require('mason').setup()
    require('mason-tool-installer').setup {
      ensure_installed = vim.tbl_keys(servers),
    }

    require('mason-lspconfig').setup {
      handlers = {
        function(server)
          lspconfig[server].setup {
            capabilities = capabilities,
            settings = servers[server],
          }
        end,
      },
    }
  end,
} 