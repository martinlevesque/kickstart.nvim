-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'mfussenegger/nvim-dap',
  config = function()
    local dap = require 'dap'
    local dapUi = require 'dapui'

    vim.keymap.set('n', '<F5>', function()
      dapUi.open()
      dap.continue()
    end)

    vim.keymap.set('n', '<leader>dt', function()
      dapUi.close()
      dap.terminate()
    end, { desc = 'Debug Terminate' })

    vim.keymap.set('n', '<leader>dr', function()
      dapUi.open()
      dap.continue()
    end, { desc = 'Debug Run' })

    vim.keymap.set('n', '<leader>dc', function()
      dap.repl.open({}, 'vsplit')
    end, { desc = 'Debug Console' })

    vim.keymap.set('n', '<leader>db', function()
      require('dap').toggle_breakpoint()
    end, { desc = 'Debug Toggle Breakpoint' })
  end,
}
