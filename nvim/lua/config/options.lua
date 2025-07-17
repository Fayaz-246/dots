vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.termguicolors = true

-- Better netrw visuals
vim.g.netrw_banner = 0       -- disable banner
vim.g.netrw_liststyle = 3    -- tree-style view (like NERDTree)
vim.g.netrw_browse_split = 0 -- open files in same window
vim.g.netrw_altv = 1         -- open splits to the right
vim.g.netrw_winsize = 25     -- window size

vim.opt.scrolloff = 4        -- no extra lines below cursor
vim.opt.virtualedit = "none" -- disallow cursor past end-of-line

-- Enables smart and automatic indenting
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cindent = false -- Optional, useful only for C-style

-- Use spaces instead of tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
