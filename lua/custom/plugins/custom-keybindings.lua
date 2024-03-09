-- for clipboard: sudo apt install xclip

local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<C-f>', builtin.live_grep, { desc = '[F]ind in [F]iles' })

vim.keymap.set('n', '<C-d>', '<cmd>Telescope dir live_grep<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save' })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true, desc = 'Save' })

return {}
