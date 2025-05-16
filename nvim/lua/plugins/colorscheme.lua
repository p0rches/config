return {
	--"aliqyan-21/darkvoid.nvim",
    --"ellisonleao/gruvbox.nvim",
    --config = function ()
    --    require("gruvbox").setup({
    --        dim_inactive = false,
    --        transparent_mode = true,
    --        palette_overrides = {
    --            black = "#282828",
    --        }
    --    })
    --    vim.cmd("colorscheme gruvbox")
    --end
    --"AlexvZyl/nordic.nvim",
    --lazy = false,
    --priority = 1000,
    --config = function()
    --    require("nordic").setup({
    --        transparent = {
    --            bg = true,
    --        }
    --    })
    --    require("nordic").load()
    --end
    --"p00f/alabaster.nvim",
    "alexxGmZ/e-ink.nvim",
    priority = 1000,
    config = function ()
        require("e-ink").setup()
        vim.cmd.colorscheme "e-ink"
        vim.opt.background = "dark"
    end
}
