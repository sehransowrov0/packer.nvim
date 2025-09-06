-- LSP settings
local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- setup mason
mason.setup()
mason_lspconfig.setup {
  ensure_installed = { "tsserver", "html", "cssls" },
}

-- common capabilities for nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- manually setup servers
local servers = { "tsserver", "html", "cssls" }

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    capabilities = capabilities,
  }
end

