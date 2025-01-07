return {
  -- Add rspec awesomeness (run specs from neighbor pane)
  {
    'thoughtbot/vim-rspec',
    config = function()
      vim.keymap.set('n', '<Leader>f', ':call RunCurrentSpecFile()<CR>')
      vim.keymap.set('n', '<Leader>j', ':call RunNearestSpec()<CR>')
      vim.keymap.set('n', '<Leader>k', ':call RunLastSpec()<CR>')
      vim.keymap.set('n', '<Leader>h', ':call RunAllSpecs()<CR>')
      vim.g.rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
    end,
  },
  -- Allows for sending stuff to a neighbor tmux pane
  {
    'jgdavey/tslime.vim',
    config = function()
      vim.g.tslime_always_current_session = 1
      vim.g.tslime_always_current_window = 1
      vim.g.tslime_autoset_pane = 1
    end,
  }
}
