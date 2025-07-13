vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

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
