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
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-treesitter/nvim-treesitter"
    },
    opts = {
      workspaces = {
        {
          name = "brain",
          path = "~/Obsidian/Brain/",
          overrides = {
            notes_subdir = "000 Zettelkasten",
          }
        }
      }
    }
  }
}
return plugins
