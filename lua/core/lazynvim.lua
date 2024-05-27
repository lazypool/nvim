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

-- 导入全部插件
vim.opt.rtp:prepend(lazypath)
-- require("lazy").setup({
--   -- 基础插件
--   require "plugins.autopairs", -- 自动括号
--   require "plugins.bufferline", -- 显示缓冲区文件
--   require "plugins.comment", -- 快速注释
--   require "plugins.gitsigns", -- git 标记
--   require "plugins.indent-blankline", -- 缩进对齐线
--   require "plugins.lualine", -- 状态栏
--   require "plugins.nvim-tree", -- 文档树
--   require "plugins.telescope", -- 文件搜素
--   require "plugins.tmux-navigator", -- 分窗口跳转
--   require "plugins.tokyonight", -- 主题配色
--   require "plugins.treesitter", -- 语法树
--
--   -- LSP 相关插件
--   require "lsp.lspconfig", -- LSP 配置
--   require "lsp.mason-lspconfig", -- Mason 管理器
--   require "lsp.nvim-cmp", -- 自动补全设置
-- })

require("lazy").setup({
	{ import = "plugins" },
	{ import = "lsp" },
})
