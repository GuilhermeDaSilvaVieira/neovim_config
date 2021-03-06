local set = vim.opt
local let = vim.g

set.backup = false
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.termguicolors = true
set.number = true
set.updatetime = 300
set.background = "dark"
set.smartindent = true
set.smartcase = true
set.cursorline = true
set.cmdheight = 2
set.ignorecase = true
set.showtabline = 2
set.showmode = false
set.undofile = true
set.timeoutlen = 1000

-- Everforest
let["everforest_background"] = "hard"

-- Tokyo night
let["tokyonight_style"] = "storm"

-- Markdown preview
let["mkdp_browser"] = "librewolf"

vim.cmd([[
colorscheme cobalt2
]])
