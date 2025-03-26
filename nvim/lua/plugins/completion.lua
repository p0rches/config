return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "L3MON4D3/LuaSnip",
    },

    version = "1.*",
    opts = {
        keymap = {
            preset = "default"
        },
        snippets = {
            preset = "luasnip"
        },
        appearance = {
            nerd_font_variant = "mono"
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        fuzzy = {
            implementation = "prefer_rust_with_warning"
        }
    },
    opts_extend = { "sources.default" }
}
