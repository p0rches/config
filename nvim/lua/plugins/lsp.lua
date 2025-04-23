return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            }
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            local on_attach = function(client, bufnr)

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = "Go to definiton", buffer = bufnr, remap = false })
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { desc = "Display hover information", buffer = bufnr, remap = false })
                vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, { desc = "List symbols in the current workspace", buffer = bufnr, remap = false })
                vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { desc = "Show diagnostics in a floating window", buffer = bufnr, remap = false })
                vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, { desc = "Go to next diagnostic", buffer = bufnr, remap = false })
                vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, { desc = "Go to previous diagnostic", buffer = bufnr, remap = false })
                vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, { desc = "Open available code actions", buffer = bufnr, remap = false })
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, { desc = "List references to the current symbol", buffer = bufnr, remap = false })
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, { desc = "Rename the current file", buffer = bufnr, remap = false })
            end

            local options = {
                capabilities = capabilities,
                on_attach = on_attach
            }


            lspconfig["lua_ls"].setup( options )
            lspconfig["marksman"].setup( options )
            lspconfig["clangd"].setup( options )
            lspconfig["gopls"].setup( options )
            lspconfig["dockerls"].setup( options )

            vim.diagnostic.config({ virtual_text = true })
        end,
    }
}
