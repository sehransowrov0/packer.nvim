-- LSP settings
local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- setup mason
mason.setup()
mason_lspconfig.setup {
  ensure_installed = { "ts_ls", "html", "cssls" },
}

-- add cmp capabilities
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- setup servers
local servers = { "ts_ls", "html", "cssls" }

local navic = require("nvim-navic")

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentSymbolProvider then
    navic.attach(client, bufnr)
  end
end

require("lspconfig").ts_ls.setup({
  on_attach = on_attach,
})


for _, server in ipairs(servers) do
  lspconfig[server].setup {
    capabilities = capabilities,
  }
end

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

