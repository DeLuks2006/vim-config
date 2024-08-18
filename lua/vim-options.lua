-- TABS, SPACING & CO. --
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

vim.wo.relativenumber = true
vim.opt.fillchars:append({ vert = ' ', horiz = ' ' })
vim.opt.fillchars = { eob = ' ' }
vim.api.nvim_set_keymap('t', '<C-t>', [[<C-\><C-n>]], { noremap = true, silent = true }) -- exit terminal mode
vim.api.nvim_set_keymap('n', '<C-b>', ':split | terminal<CR>', { noremap = true, silent = true }) -- open new terminal below
