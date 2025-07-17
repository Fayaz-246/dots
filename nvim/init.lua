vim.cmd("colorscheme owlet_charcoal")

require('config.options')
require('config.keybinds')
require('config.lazy')


-- Optional: apply transparency
local function enable_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
  vim.cmd('hi Directory guibg=NONE')
  vim.cmd('hi SignColumn guibg=NONE')
end

enable_transparency()
