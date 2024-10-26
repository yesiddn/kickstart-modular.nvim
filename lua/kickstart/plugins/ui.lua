return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom',
        config = {
          week_header = {
            enable = true,
          },
          center = {
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Find File',
              group = 'Label',
              action = 'Telescope find_files',
              key = 'f',
            },
            {
              icon = ' ',
              icon_hl = '@function',
              desc = 'File Browser',
              group = 'Label',
              action = 'Telescope file_browser',
              key = 'b',
            },
            {
              icon = ' ',
              icon_hl = '@function',
              desc = 'Find Word',
              group = 'Label',
              action = 'Telescope live_grep',
              key = 'w',
            },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Find History',
              group = 'Label',
              action = 'Telescope oldfiles',
              key = 'h',
            },
          },
          footer = {}
        }
      }
    end
  },
}