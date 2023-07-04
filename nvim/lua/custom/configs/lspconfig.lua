local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

require("lsp-format").setup{}

local lspconfig = require "lspconfig"

-- TS
lspconfig.tsserver.setup({
  on_attach = require("lsp-format").on_attach,
  capabilities = capabilities,
})

-- Tailwind
lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Prisma
lspconfig.prismals.setup({
  on_attach = require("lsp-format").on_attach,
  capabilities = capabilities,
})

-- C
lspconfig.clangd.setup({
  on_attach = require("lsp-format").on_attach,
  capabilities = capabilities,
})

-- Rust
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})
