return {
  { 'mountain-theme/vim' },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- theme = require('lualine.themes.owlet_charcoal')
    },
    config = function()
      require("lualine").setup {
        sections = {
          lualine_a = {
            {
              'mode',
              color = function()
                local hl_map = {
                  n = 'LualineModeNormal',
                  i = 'LualineModeInsert',
                  v = 'LualineModeVisual',
                  V = 'LualineModeVisual',
                  [''] = 'LualineModeVisual',
                  R = 'LualineModeReplace',
                  c = 'LualineModeCommand',
                }
                return { gui = 'bold', highlight = hl_map[vim.fn.mode()] or 'LualineModeNormal' }
              end
            }
          },
          -- other sections...
        }
      }
    end
  }
}
