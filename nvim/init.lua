-- Maintain legacy vim colorscheme
vim.cmd.colorscheme("vim")
vim.opt.termguicolors = false

-- Restore neovim error message colors
vim.api.nvim_set_hl(0, "ErrorMsg", { ctermfg = 9, ctermbg = "NONE" })

-- Set auto-complete menu colors
vim.api.nvim_set_hl(0, "Pmenu", { ctermbg = bg, ctermfg = fg })
vim.api.nvim_set_hl(0, "PmenuSel", { ctermbg = 238, ctermfg = fg })
vim.api.nvim_set_hl(0, "PmenuSbar", { ctermbg = 238 })
vim.api.nvim_set_hl(0, "PmenuThumb", { ctermbg = 7 })

-- Global defaults for SystemVerilog
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

-- Extend copy/paste to system
vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Lazy plug-in manager
require("config.lazy")

