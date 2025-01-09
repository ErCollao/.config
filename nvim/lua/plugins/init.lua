return {
  -- Just general Rails awesomeness
  { 'tpope/vim-rails' },
  -- Adds gs (go surround) and cs (change surround) to modify
  --   surrounding parentheses, tags, etc
  { 'tpope/vim-surround' },
  -- Integrates git into vim
  { 'tpope/vim-fugitive' },
  -- Lets plugins (e.g. vim surround) repeat with the . command
  { 'tpope/vim-repeat' },
  -- Configuration for netrw that works
  { 'tpope/vim-vinegar' },
  -- Use tmux motions to move around panes
  {
    'christoomey/vim-tmux-navigator',
    priority = 1000,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  { 'jremmen/vim-ripgrep' },
}
