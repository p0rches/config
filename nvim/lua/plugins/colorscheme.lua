return {
	--"aliqyan-21/darkvoid.nvim",
  "ellisonleao/gruvbox.nvim",
  config = function ()
      require("gruvbox").setup({
          dim_inactive = false,
          transparent_mode = true,
          palette_overrides = {
              black = "#282828",
          }
      })
      vim.cmd("colorscheme gruvbox")
  end
}
