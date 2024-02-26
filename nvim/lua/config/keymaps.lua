-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Obsidian
vim.keymap.set("n", "<leader>OO", ":ObsidianOpen<CR>", { desc = "Open in Obsidian" })
vim.keymap.set("n", "<leader>ON", ":ObsidianNew<CR>", { desc = "New md file in Obsidian vault" })
vim.keymap.set("n", "<leader>OT", ":ObsidianTemplate", { desc = "Insert Obsidian template" })
