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

map("n", "<A-h>", ":tabprevious<CR>", opts)
map("n", "<A-l>", ":tabnext<CR>", opts)

map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)

map("n", "<A-n>", ":bnext<CR>", opts)
map("n", "<A-p>", ":bprevious<CR>", opts)
map("n", "<leader>bd", ":bd<CR>", opts)

map("i", "jj", "<Esc>", opts)
