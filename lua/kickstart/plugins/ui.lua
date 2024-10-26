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

  -- filename
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("kanagawa.colors").setup({ theme = "dragon" })
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = colors.palette.sumiInk0, guifg = colors.palette.dragonRed },
            InclineNormalNC = { guifg = colors.palette.sumiInk0, guibg = colors.palette.dragonRed },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
}