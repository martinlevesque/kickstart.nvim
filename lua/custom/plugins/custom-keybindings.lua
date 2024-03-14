-- for clipboard: sudo apt install xclip

vim.keymap.set('v', '<C-c>', '"+y', { noremap = true })

local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('i', '<C-p>', "<Esc>:lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = '[F]ind in [F]iles' })
vim.keymap.set('i', '<C-f>', "<Esc>:lua require('telescope.builtin').live_grep()<CR>", { noremap = true })

vim.keymap.set('n', '<C-d>', '<cmd>Telescope dir live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-d>', '<Esc>:Telescope dir live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save' })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true, desc = 'Save' })

vim.keymap.set('v', '<C-x>', '"+x', { noremap = true })
vim.keymap.set('i', '<C-z>', '<C-o>u', { noremap = true })
vim.keymap.set('n', '<C-z>', 'u', { noremap = true })
vim.keymap.set('v', '<C-z>', 'u', { noremap = true })

return {}
