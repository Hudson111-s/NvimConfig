vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { silent = true }

map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)
map("n", "<leader>x", "<cmd>wq<CR>", opts)
map("n", "<leader>a", "<cmd>wqa<CR>", opts)

map("n", "<C-j>", "5j", opts)
map("n", "<C-k>", "5k", opts)
map("n", "<C-h>", "5h", opts)
map("n", "<C-l>", "5l", opts)

map("n", "H", "^", opts)
map("n", "L", "$", opts)

map("i", "jj", "<Esc>", opts)
