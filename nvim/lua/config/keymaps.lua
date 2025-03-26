local map = vim.keymap.set

-- buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Close current buffer" })

-- fzf
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "fzf: Find files in CWD" })
map("n", "<leader>fg", "<cmd>FzfLua grep<cr>", { desc = "fzf: Grep for a string in CWD" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "fzf: List open buffers" })
map("n", "<leader>fh", "<cmd>FzfLua oldfiles<cr>", { desc = "fzf: Show file history" })

-- lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Open Lazy UI" })

-- netrw
map("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Open explore (netrw)" })

-- toggle text wrapping
map("n", "<leader>w", "<cmd>set wrap!<cr>", { desc = "Toggle text wrapping" })
