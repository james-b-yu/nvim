vim.g.mapleader = " "
-- use system clipboard for all yanks and pastes
vim.opt.clipboard = "unnamedplus"
-- normal deletes and changes go to the black hole, i.e. do not overwrite the clipboard
local opts = { noremap = true, silent = true }
vim.keymap.set({'n', 'v'}, 'd', '"_d', opts)
vim.keymap.set({'n', 'v'}, 'c', '"_c', opts)
vim.keymap.set({'n', 'v'}, 'x', '"_x', opts)
-- explicit cut to system clipboard if desired
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d', opts)
vim.keymap.set({'n', 'v'}, '<leader>c', '"+c', opts)
vim.keymap.set({'n', 'v'}, '<leader>x', '"+x', opts)
-- save file with Ctrl+S
vim.keymap.set('n', '<C-s>', ':w<CR><enter>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a<enter>', { noremap = true, silent = true })
vim.keymap.set('v', '<C-s>', ':w<CR><enter>', { noremap = true, silent = true })
