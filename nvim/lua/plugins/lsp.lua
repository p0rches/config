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
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig["lua_ls"].setup({ capabilities = capabilities })
            lspconfig["marksman"].setup({ capabilities = capabilities })
            lspconfig["clangd"].setup({ capabilities = capabilities })
        end,
    }
}
