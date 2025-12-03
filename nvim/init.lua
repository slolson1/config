-- Maintain legacy vim colorscheme
vim.cmd.colorscheme("vim")
vim.opt.termguicolors = false

-- Global defaults for SystemVerilog
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

-- Extend copy/paste to system
vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Lazy plug-in manager
require("config.lazy")

