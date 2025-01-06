-- Make the spacebar the leader key
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

vim.keymap.set("n", "<leader><CR>", ":noh<CR>")

-- Search and replace in the whole document
vim.keymap.set("n", "<leader>s", ":%s/<C-r><C-w>//g<Left><Left>")

-- Activate spellcheck
vim.keymap.set("n", "<leader>a", ":set spell!<CR>")
vim.keymap.set("n", "<leader>u", "1z=")

-- Easier navigation on searches
vim.keymap.set("n", "<C-n>", ":cnext")
vim.keymap.set("n", "<C-p>", ":cprevious")

-- Repeat the last macro (instead of going into Ex mode)
vim.keymap.set("n", "QQ", "@@")

-- Always center search on result
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Search shortcut
vim.keymap.set("n", "<leader>/", ":Rg<Space>")

-- Clipboard
-- Using Vim pnemonics
vim.keymap.set("n", "<leader>y", "\"*y")
vim.keymap.set("n", "<leader>p", "\"*p")
-- Using system mnemonics (why not)
vim.keymap.set("n", "<leader>c", "\"*y")
vim.keymap.set("n", "<leader>v", "\"*p")
-- All (only vim mnemonics)
vim.keymap.set("n", "<leader>Y", "gg\"*yG")

-- Run specs
-- PENDING

-- Per language
-- PENDING
