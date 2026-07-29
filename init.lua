vim.pack.add({
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/AlexvZyl/nordic.nvim",
	"https://github.com/saghen/blink.lib", 
	"https://github.com/Saghen/blink.cmp",
	"https://github.com/nvim-mini/mini.nvim"
})
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.cmd("aunmenu PopUp")
local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
	keymap = {
	["<CR>"] = {"accept", "fallback"},
	},
})
require('nordic').setup({
	transparent = {
	bg = true,
	float = true,
	}
})
require('nordic').load()
require('mini.pairs').setup()
require('mini.icons').setup()
require('mini.statusline').setup()
require('mini.tabline').setup()
require('mini.notify').setup()
require('mini.cursorword').setup()
require('mini.pick').setup()
vim.lsp.enable('rust_analyzer')
