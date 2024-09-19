-- Indenting
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.opt.number = true

-- Mappings

-- General
vim.g.mapleader = " "

-- Navigation in Insert Mode
vim.keymap.set('i', '<C-h>', '<Left>', { desc = "Move left" })
vim.keymap.set('i', '<C-j>', '<Down>', { desc = "Move down" })
vim.keymap.set('i', '<C-k>', '<Up>', { desc = "Move up" })
vim.keymap.set('i', '<C-l>', '<Right>', { desc = "Move right" })
