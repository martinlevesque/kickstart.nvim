-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'wfxr/minimap.vim',
  init = function()
    vim.cmd 'let g:minimap_width = 10'
    vim.cmd 'let g:minimap_auto_start = 1'
    vim.cmd 'let g:minimap_auto_start_win_enter = 1'
  end,
}
