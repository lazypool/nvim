return {
	"jay-babu/mason-null-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup()
		require("mason-null-ls").setup({
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
			handlers = {
				isort = function()
					null_ls.register(null_ls.builtins.formatting.isort.with({
						extra_args = { "--no-sections", "--force-grid-wrap", "0", "--line-length", "120" },
					}))
				end,
				black = function()
					null_ls.register(null_ls.builtins.formatting.black.with({
						extra_args = { "--line-length", "120" },
					}))
				end,
			},
		})
	end,
	dependencies = {
		"mason-org/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	event = {
		"BufReadPre",
		"BufNewFile",
	},
}
