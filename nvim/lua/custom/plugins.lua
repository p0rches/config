local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
    config = function (_)
      vim.g.crystal_auto_format = 1
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "tsserver",
        "tailwindcss",
        "prismals",
      },
    },
  },
  {
    "lukas-reineke/lsp-format.nvim",
    lazy = false
  }
}
return plugins
