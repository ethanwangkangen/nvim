-- core/keymaps.lua
vim.g.mapleader = " "
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)

