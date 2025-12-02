return {
	"williamboman/mason.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim"
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				}
			}
		})

		-- 管理 LSP
		require("mason-lspconfig").setup({
			-- 选择需要启动的 lsp 服务器的语言
			ensure_installed = {
				"lua_ls",          -- Lua
				"pyright",         -- Python
				"gopls",           -- Go
				"rust_analyzer",   -- Rust
				"ts_ls",           -- Typescript/Javascript
				"html",
				"cssls",
				"jsonls",
				"bashls",
				"clangd"           -- C/C++
			}
		})

		-- 管理其他开发工具
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- 代码格式化
				"prettier",        -- JS/TS/HTML/CSS 等
				"stylua",          -- Lua
				"black",           -- Python
				"isort",           -- Python import 排序
				-- 代码检查
				"eslint_d",        -- Javascript/Typescript
				"pylint",          -- Python
			}
		})
	end
}
