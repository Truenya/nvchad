vim.opt_local.autoindent=true
vim.opt_local.smartindent=true

local autocmd = vim.api.nvim_create_autocmd

-- go: format and organize imports on save
autocmd('BufWritePre', {
  pattern = { '*.go' },
  callback = function()
    vim.lsp.buf.format({ async = true })

    for _, client in pairs(vim.lsp.get_clients()) do
      local params = vim.lsp.util.make_range_params(nil, client.offset_encoding)
      params.context = { only = { "source.organizeImports" } }

      local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 5000)
      for _, res in pairs(result or {}) do
        for _, r in pairs(res.result or {}) do
          if r.edit then
            vim.lsp.util.apply_workspace_edit(r.edit, client.offset_encoding)
          else
            vim.lsp.buf.execute_command(r.command)
          end
        end
      end
    end
  end
})
