local options = {
  ensure_installed = { "lua", "prisma", "tsx", "typescript", "python", "vim", "vimdoc" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true, disable = { 'python' } },
}

return options
