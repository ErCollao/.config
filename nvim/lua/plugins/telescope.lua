return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })

    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = 'Telescope registers' })

    vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, { desc = 'Telescope LSP definition(s)' })
    vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, { desc = 'Telescope LSP implementation(s)' })

    vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope Git status' })
    vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Telescope Git branches' })

    vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = 'Telescope treesitter' })
  end,
}
