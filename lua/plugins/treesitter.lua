return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			-- 选择需要高亮的语法
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"go",
				"html",
				"java",
				"latex",
				"lua",
				"markdown",
				"python",
				"vim",
				"typescript",
				"tsx",
				"xml",
				"javascript",
			},

			-- 启用高亮
			highlight = {
				enable = true,
			},

			-- 禁用彩色括号，原作者不再维护
			rainbow = {
				enable = false,
			},

			-- 启用缩进
			indent = {
				enable = true,
			},

			-- 禁用自动标签补齐
			-- 自 2024 年 5 月 28 日该方法已被原作者弃用
			autotag = {
				enable = false,
			},
		})
	end,
}
