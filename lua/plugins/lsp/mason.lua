return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		-- LSP
		ensure_installed = {
			"lua_ls",         -- Lua
			"pyright",        -- Python
			"gopls",          -- Go
			"rust_analyzer",  -- Rust
			"ts_ls",          -- Typescript/Javascript
			"html",
			"cssls",
			"jsonls",
			"bashls",
			"clangd",         -- C/C++
			"vimls",
			"eslint"
		}
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✔",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			}
		},
		"neovim/nvim-lspconfig",
	}
}
