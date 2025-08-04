-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-a>", "gg<S-v>G")
map("n", "<C-m", "<C-i>", opts)

-- Delete window
map("n", "wd", ":close<CR>", opts)

-- Split window
map("n", "wh", ":split<CR>", opts)
map("n", "wv", ":vsplit<CR>", opts)

-- Diagnostics
map("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Tabs
map("n", "te", ":tabedit<CR>", opts)
map("n", "<tab>", ":tabnext<CR>", opts)
map("n", "<S-tab>", ":tabprev<CR>", opts)
map("n", "tc", ":tabclose<CR>", opts)

map("n", "<C-c>", ":w !xclip -selection clipboard<CR><CR>", opts)
map("v", "<C-c>", ":w !xclip -selection clipboard<CR><CR>", opts)
map("n", "<C-v>", ":r !xclip -selection clipboard -o<CR>", opts)
map("v", "<C-v>", ":w !xclip -selection clipboard<CR><CR>", opts)

-- Buffer
map("n", "bd", ":bd<CR>", opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
