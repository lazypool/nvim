return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"diff",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"python",
			"go",
			"rust",
			"javascript",
			"typescript",
			"html",
			"css",
			"json",
			"markdown",
			"markdown_inline",
		},
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			disable = {
				"latex",
			},
		},
	},
	build = ":TSUpdate",
	lazy = false,
}
