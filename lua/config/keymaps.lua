-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- use "jk" to ESC -------------------------------------------------------------
vim.keymap.set("c", "jk", "<ESC>") -- command-line mode
vim.keymap.set("i", "jk", "<ESC>") -- insert mode
vim.keymap.set("o", "jk", "<ESC>") -- operator pending mode
vim.keymap.set("s", "jk", "<ESC>") -- select mode
vim.keymap.set("v", "jk", "<ESC>") -- visual & select mode
vim.keymap.set("x", "jk", "<ESC>") -- visual mode

-- switch btw terimal and editor when using toggleterm -------------------------
-- function _G.set_terminal_keymaps()
--     local opts = { buffer = 0 }
--     vim.keymap.set("t", "<esc>", [[<F3><C-n>]], opts)
--     vim.keymap.set("t", "jk", [[<F3><C-n>]], opts)
--     vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
--     vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
--     vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
--     vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
--     vim.keymap.set("t", "<C-w>", [[<F3><C-n><C-w>]], opts)
-- end
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
-- vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")
