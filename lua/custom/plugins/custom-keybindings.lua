-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = '[S]earch [F]iles' })
return {}
