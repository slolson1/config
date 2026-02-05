return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("verible")
      vim.lsp.enable("svlangserver")
      
      -- Add inline diagnostics
      vim.diagnostic.config({
        virtual_text = {
          prefix = function(diagnostic)
            local sev = diagnostic.severity
            if sev == vim.diagnostic.severity.ERROR then return "✘"
            elseif sev == vim.diagnostic.severity.WARN then return "▲"
            elseif sev == vim.diagnostic.severity.INFO then return "●"
            else return "◆" end
          end,
        },
      })

      -- Disable "pull" diagnostics for verible to avoid duplicates (Neovim issue #29927)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == "verible" then
            client.server_capabilities.diagnosticProvider = nil
          end
        end,
      })
    end,
  },
}

