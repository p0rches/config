vim.g.mapleader = " "

vim.keymap.set("n", "<leader>x", ":bd<CR>", {desc="Close buffer"})

vim.keymap.set("n", "<leader>P", ":Explore<CR>", {desc="Open netrw"})

vim.keymap.set("n", "<leader>OO", ":ObsidianOpen<CR>", {desc="Open in Obsidian"})
vim.keymap.set("n", "<leader>ON", ":ObsidianNew<CR>", {desc="New md file in Obsidian vault"})
vim.keymap.set("n", "<leader>OT", ":ObsidianTemplate", {desc="Insert Obsidian template"})

vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", {})
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", {})
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", {})
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", {})

vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, {desc="Format current file"})
