-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- Insert empty line and return to original line
vim.keymap.set("n", "<leader>o", "o<ESC>k", { silent = true })
vim.keymap.set("n", "<leader>O", "O<ESC>j", { silent = true })

-- Centre screen on <C-d> and <C-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })

-- Centre screen on cycling through search
vim.keymap.set("n", "n", "nzz", { silent = true })
vim.keymap.set("n", "N", "Nzz", { silent = true })

local ls = require("luasnip")

vim.keymap.set({ "i", "s" }, "<C-e>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })
