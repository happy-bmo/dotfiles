-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jk", "<ESC>")

map("n", "<C-a>", "gg<S-v>G")
map("n", "<C-m", "<C-i>", opts)

-- Delete window
map("n", "wd", ":close<CR>", opts)

-- Split window
map("n", "wh", ":split<CR>", opts)
map("n", "wv", ":vsplit<CR>", opts)

-- Diagnostics
map("n", "<C-j>", vim.diagnostic.goto_next, opts)

-- Tabs
map("n", "te", ":tabedit<CR>", opts)
map("n", "<tab>", ":tabnext<CR>", opts)
map("n", "<S-tab>", ":tabprev<CR>", opts)
map("n", "tc", ":tabclose<CR>", opts)

-- Buffer
map("n", "bd", ":bd<CR>", opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
