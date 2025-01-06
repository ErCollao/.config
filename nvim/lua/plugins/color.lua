return {
  -- { "EdenEast/nightfox.nvim", lazy = false, priority = 1000 },
  -- { 'catppuccin/nvim', lazy = false, priority = 1000, },
  -- { 'navarasu/onedark.nvim', lazy = false, priority = 1000, },
  -- { "folke/tokyonight.nvim", lazy = false, priority = 1000, },
  -- { "shaunsingh/nord.nvim", lazy = false, priority = 1000, },
  -- { "AlexvZyl/nordic.nvim", lazy = false, priority = 1000, },
  {
    'rmehri01/onenord.nvim',
    config = function()
      vim.cmd.colorscheme 'onenord'
    end,
  },
}
