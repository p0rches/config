return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {desc="Find files"})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {desc="Live grep"})
      vim.keymap.set("n", "<leader>fz", builtin.current_buffer_fuzzy_find, {desc="Find in current buffer"})
      vim.keymap.set("n", "<leader>fh", builtin.highlights, {desc="Find highlights for current buffer"})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extension = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              --opts
            }
          }
        }
      })

      require("telescope").load_extension("ui-select")
    end
  }
}
