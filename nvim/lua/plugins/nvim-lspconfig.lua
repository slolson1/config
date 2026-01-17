return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable('verible')
      vim.lsp.enable('svlangserver')
    end,
  },
}

