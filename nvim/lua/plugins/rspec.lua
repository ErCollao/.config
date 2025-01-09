return {
  -- Add rspec awesomeness (run specs from neighbor pane)
  {
    'thoughtbot/vim-rspec',
    config = function()
      vim.keymap.set('n', '<Leader>jf', -- Test file
        ':call RunCurrentSpecFile()<CR>')
      vim.keymap.set('n', '<Leader>jj', -- Current line
        ':call RunNearestSpec()<CR>')
      vim.keymap.set('n', '<Leader>jk', -- Repeat
        ':call RunLastSpec()<CR>')
      vim.keymap.set('n', '<Leader>ja', -- Test all
        ':call RunAllSpecs()<CR>')
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
