return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "lua",
        "c",
        "yaml",
        "bash"
			},
      highlight = { enable = true },
    })
  end
}
