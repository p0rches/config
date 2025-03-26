return {
  "nvim-lualine/lualine.nvim",
  config = function ()
    require("lualine").setup{
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "|" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statuseline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
    }
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" }
}
