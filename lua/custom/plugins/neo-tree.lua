-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function() -- This is the function that runs, AFTER loading
    require('neo-tree').setup {
      filesystem = {
        -- whatever other options you have in your filesystem configuration
        window = {
          -- whatever other options you have in your window configuration for filesystem
          mappings = {
            ['<leftrelease>'] = 'open', -- This tells neo-tree to use the default filesystem open command on the release of the left mouse button
          },
        },
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          never_show = { '.git', '.idea', '__pycache__' },
        },
      },
    }
  end,
}
