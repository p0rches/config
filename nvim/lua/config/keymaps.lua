-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Obsidian
vim.keymap.set("n", "<leader>OO", ":ObsidianOpen<CR>", { desc = "Open in Obsidian" })
vim.keymap.set("n", "<leader>ON", ":ObsidianNew", { desc = "New md file in Obsidian vault" })
vim.keymap.set("n", "<leader>OT", ":ObsidianTemplate", { desc = "Insert Obsidian template" })

-- Jupyter_ascending
vim.keymap.set("n", "<leader>JE", ":call jupyter_ascending#execute()<CR>", { desc = "Execute current Jupyter cell" })
vim.keymap.set("n", "<leader>JA", ":call jupyter_ascending#execute_all()<CR>", { desc = "Execute all Jupyter cells" })
vim.keymap.set("n", "<leader>JR", ":call jupyter_ascending#restart()<CR>", { desc = "Restart the Jupyter kernel" })
