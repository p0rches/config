return { 
  "rose-pine/neovim", 
  lazy = false,
  name = "rose-pine", 
  priority = 1000 ,
  config = function()
    return vim.cmd.colorscheme "rose-pine"
  end
}
