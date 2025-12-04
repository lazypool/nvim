-- 默认 ~/.local/share/nvim/lazy/lazy.nvim
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

-- 导入 lazy.nvim
vim.opt.rtp:prepend(lazypath)

-- 本地配置
require("core.options")
require("core.keymaps")

-- 设置插件
require("lazy").setup({
	{ import = "plugins.ui" },
	{ import = "plugins.editor" },
	{ import = "plugins.tools" },
	{ import = "plugins.lsp" },
})
