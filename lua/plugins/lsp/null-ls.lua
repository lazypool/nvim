return {
	"jay-babu/mason-null-ls.nvim",
	opts = {
		ensure_installed = {},
		methods = {},
		automatic_installation = false,
		handlers = nil,
	},
	dependencies = {
		"mason-org/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	event = {
		"BufReadPre",
		"BufNewFile"
	}
}
