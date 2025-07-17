-- colors/owlet_charcoal.lua
-- Proper colorscheme file for Owlet Charcoal VSCode theme in Neovim

-- Core palette from Owlet Charcoal
local palette = {
  bg      = "NONE",
  fg      = "#B0B0B0",
  black   = "#111111",
  gray    = "#444444",
  red     = "#BF4A4A",
  green   = "#6FAA60",
  yellow  = "#CCAA66",
  blue    = "#6699CC",
  magenta = "#B066B0",
  cyan    = "#66CCCC",
  white   = "#D0D0D0",
  comment = "#444444",
  accent  = "#CC9966",
}


local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Colorscheme setup
local function load()
  -- Base editor colors
  set_hl("Normal", { fg = palette.fg, bg = palette.bg })
  set_hl("NormalNC", { fg = palette.fg, bg = palette.bg })
  set_hl("Visual", { bg = palette.gray })
  set_hl("CursorLine", { bg = palette.black })
  set_hl("CursorColumn", { bg = palette.black })
  set_hl("LineNr", { fg = palette.comment })
  set_hl("CursorLineNr", { fg = palette.white, bold = true })
  set_hl("Comment", { fg = palette.comment, italic = true })
  set_hl("Folded", { fg = palette.comment, bg = palette.bg })

  -- Syntax highlighting (Treesitter-compatible)
  set_hl("Identifier", { fg = palette.fg })
  set_hl("Function", { fg = palette.blue })
  set_hl("Statement", { fg = palette.magenta })
  set_hl("Keyword", { fg = palette.magenta, italic = true })
  set_hl("Type", { fg = palette.yellow })
  set_hl("String", { fg = palette.green })
  set_hl("Number", { fg = palette.cyan })
  set_hl("Constant", { fg = palette.cyan })

  -- Treesitter specific highlights
  set_hl("@function", { fg = palette.blue })
  set_hl("@variable", { fg = palette.fg })
  set_hl("@keyword", { fg = palette.magenta, italic = true })
  set_hl("@string", { fg = palette.green })
  set_hl("@number", { fg = palette.cyan })
  set_hl("@comment", { fg = palette.comment, italic = true })
  set_hl("@type", { fg = palette.yellow })
  set_hl("@constant", { fg = palette.cyan })
  set_hl("@field", { fg = palette.white })
  set_hl("@property", { fg = palette.white })

  -- Diagnostics (LSP)
  set_hl("DiagnosticError", { fg = palette.red })
  set_hl("DiagnosticWarn", { fg = palette.yellow })
  set_hl("DiagnosticInfo", { fg = palette.blue })
  set_hl("DiagnosticHint", { fg = palette.cyan })

  -- Lualine backgrounds
  set_hl("StatusLine", { fg = palette.white, bg = palette.black })
  set_hl("StatusLineNC", { fg = palette.comment, bg = palette.bg })
  set_hl("StatusLineSeparator", { fg = palette.accent, bg = palette.black })
  set_hl("StatusLineTerm", { fg = palette.white, bg = palette.black })

  -- Mode-based Lualine coloring (requires Lualine config to use these)
  set_hl("LualineModeNormal", { fg = palette.black, bg = palette.magenta })
  set_hl("LualineModeInsert", { fg = palette.black, bg = palette.blue })
  set_hl("LualineModeVisual", { fg = palette.black, bg = palette.green })
  set_hl("LualineModeReplace", { fg = palette.black, bg = palette.red })
  set_hl("LualineModeCommand", { fg = palette.black, bg = palette.yellow })

  -- Popup menu
  set_hl("Pmenu", { fg = palette.white, bg = palette.black })
  set_hl("PmenuSel", { fg = palette.black, bg = palette.accent })

  -- Telescope
  set_hl("TelescopeNormal", { fg = palette.fg, bg = palette.bg })
  set_hl("TelescopeBorder", { fg = palette.gray, bg = palette.bg })
  set_hl("TelescopePromptNormal", { fg = palette.fg, bg = palette.bg })
  set_hl("TelescopePromptBorder", { fg = palette.gray, bg = palette.bg })
  set_hl("TelescopePromptTitle", { fg = palette.black, bg = palette.accent })
  set_hl("TelescopeResultsTitle", { fg = palette.black, bg = palette.blue })
  set_hl("TelescopePreviewTitle", { fg = palette.black, bg = palette.green })
  set_hl("TelescopeSelection", { fg = palette.white, bg = palette.gray })
  set_hl("TelescopeMatching", { fg = palette.accent, bold = true })

  -- BufferLine support
  set_hl("BufferLineFill", { bg = palette.bg })
  set_hl("BufferLineBackground", { fg = palette.gray, bg = palette.bg })
  set_hl("BufferLineBufferSelected", { fg = palette.white, bg = palette.bg, bold = true })
  set_hl("BufferLineBufferVisible", { fg = palette.fg, bg = palette.bg })

  set_hl("BufferLineModified", { fg = palette.accent, bg = palette.bg })
  set_hl("BufferLineModifiedVisible", { fg = palette.accent, bg = palette.bg })
  set_hl("BufferLineModifiedSelected", { fg = palette.accent, bg = palette.bg })

  set_hl("BufferLineCloseButton", { fg = palette.comment, bg = palette.bg })
  set_hl("BufferLineCloseButtonSelected", { fg = palette.red, bg = palette.bg })

  set_hl("BufferLineSeparator", { fg = palette.black, bg = palette.bg })
  set_hl("BufferLineSeparatorSelected", { fg = palette.black, bg = palette.bg })

  set_hl("BufferLineTabSelected", { fg = palette.white, bg = palette.gray })
  set_hl("BufferLineTab", { fg = palette.gray, bg = palette.black })
  set_hl("BufferLineTabClose", { fg = palette.red, bg = palette.black })

  set_hl("BufferLineIndicatorSelected", { fg = palette.accent, bg = palette.bg })
end

load()

vim.g.colors_name = "owlet_charcoal"
