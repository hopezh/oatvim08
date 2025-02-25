-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.autoindent = true
opt.background = "dark"
opt.colorcolumn = "80" -- highlight the 80th column, nil when virt-column.nvim is used
opt.list = false
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 4
opt.showtabline = 2 -- always show tab header
opt.signcolumn = "yes:3" -- always show signcolumn, max width=3
opt.smartindent = true
opt.smarttab = true
opt.softtabstop = 4
opt.tabstop = 4
opt.termguicolors = true
opt.title = true -- use current buffer name for window title
opt.undofile = false -- stop unlimited undo to even changes made in previous session

-- blinking cursor -------------------------------------------------------------
opt.guicursor =
    "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- no swap file ----------------------------------------------------------------
vim.cmd("set noswapfile")

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
vim.scriptencoding = "utf-8"

-- stop auto format on save ----------------------------------------------------
-- vim.g.autoformat = false -- globally
-- vim.b.autoformat = false -- buffer-local

-- LazyVim automatically configures lazygit: -----------------------------------
--  * theme, based on the active colorscheme.
--  * editorPreset to nvim-remote
--  * enables nerd font icons
-- Set to false to disable.
vim.g.lazygit_config = false

-- -- [!!! conflict with Mac OS] make toggleterm work with powershell ----------------------------------------
-- -- ref: https://github.com/akinsho/toggleterm.nvim/wiki/Tips-and-Tricks#using-toggleterm-with-powershell
-- local powershell_options = {
--     shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
--     shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
--     shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
--     shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
--     shellquote = "",
--     shellxquote = "",
-- }
--
-- for option, value in pairs(powershell_options) do
--     vim.opt[option] = value
-- end
