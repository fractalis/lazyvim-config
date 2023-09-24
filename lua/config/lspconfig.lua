local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
  return
end

local protocol = require("vim.lsp.protocol")

--[[ local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.formatting_seq_sync()
      end,
    })
  end
end
--]]

nvim_lsp.denols.setup({
  root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
})

-- TypeScript
nvim_lsp.tsserver.setup({
  --  on_attach = on_attach,
  root_dir = nvim_lsp.util.root_pattern("package.json"),
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
})
