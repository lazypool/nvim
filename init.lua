-- 默认路径 ~/.local/share/nvim/lazy/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

-- 载入 lazy.nvim
vim.opt.rtp:prepend(lazypath)

-- 配置
require("core.options")
require("core.keymaps")

-- 插件
require("lazy").setup({
	{ import = "plugins.ui" },
	{ import = "plugins.editor" },
	{ import = "plugins.tools" },
	{ import = "plugins.lsp" },
})

-- treesitter
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"python",
		"c",
		"cpp",
		"cu",
		"html",
		"javascript",
		"typescript",
		"css",
		"lua",
		"go",
	},
	callback = function()
		vim.treesitter.start()
	end,
})

-- Python indent
vim.g.python_indent = {
    disable_parentheses_indenting = false,
    closed_paren_align_last_line = false,
    searchpair_timeout = 150,
    continue = 'shiftwidth()',
    open_paren = 'shiftwidth()',
    nested_paren = 'shiftwidth()',
}
