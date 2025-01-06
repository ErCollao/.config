return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      require('nvim-treesitter.configs').setup({
        highlight = {
          -- enable = true,
          -- additional_vim_regex_highlighting = false,
        },
        indent = {
          -- enable = true,
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
            },
          },
        },
        ensure_installed = {
          'ruby',
          'javascript',
          'html',
          'lua',
          'css',
          'scss',
          'json',
          'markdown',
        },
        playground = {
          enable = true,
          disable = {},
        }
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
  }
}
