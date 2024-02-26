return {
  "folke/noice.nvim",
  config = function()
    return require("noice").setup({
      cmdline = {
        view = "cmdline",
      },
    })
  end,
}
