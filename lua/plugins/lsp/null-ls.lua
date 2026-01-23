return {
	"jay-babu/mason-null-ls.nvim",
	opts = {
		ensure_installed = {
			"stylua", -- Lua
			"prettier",
			"black", -- Python
			"isort",
			"shfmt",
			"clang-format", -- C/C++
			"gofmt", -- Go
			"sql_formatter", -- SQL
			"eslint_d",
			"luacheck",
			"flake8",
			"shellcheck", -- Shell
			"hadolint", -- Dockerfile
			"yamllint",
			"jsonlint",
			"vint",
			"jq", -- JSON
			"yq", -- YAML
		},
		methods = {
			diagnostics = true,
			formatting = true,
			code_actions = true,
			completion = true,
			hover = true,
		},
		automatic_installation = false,
		handlers = {},
	},
	dependencies = {
		"mason-org/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	event = {
		"BufReadPre",
		"BufNewFile",
	},
}
