vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.showbreak = "↪"
vim.opt.listchars = { nbsp = '…', trail = '…', tab = '››' }
vim.opt.scrolloff = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.errorbells = false
vim.opt.visualbell = false

vim.opt.linebreak = true

vim.opt.cursorline = true

-- -- OBSOLETE DEFAULTS?
-- -- For old redraws, let's only activate it if there's an actual problem
-- vim.opt.lazyredraw = true
-- -- Seems like this _is_ the actual behavior, which means we should probably get rid of it
vim.opt.splitbelow = true
vim.opt.splitright = true
