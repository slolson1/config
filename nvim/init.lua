vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

-- Override for Makefiles
vim.api.nvim_create_augroup("makefile_indent", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "makefile_indent",
  pattern = "make",
  callback = function()
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 8
    vim.opt_local.shiftwidth = 8
    vim.opt_local.softtabstop = 0
  end,
})

-- Extend copy/paste to system
vim.api.nvim_set_option("clipboard", "unnamedplus")

-- Lazy plug-in manager
require("config.lazy")

