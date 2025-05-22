return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- mason 配置
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- mason-lspconfig 配置
		require("mason-lspconfig").setup({
			-- 选择需要启动的 lsp 服务器的语言
			ensure_installed = {
				"bashls",
				"clangd",
				"cssls",
				"gopls",
				"html",
				"jdtls",
				"ts_ls",
				"texlab",
				"lua_ls",
				"marksman",
				"pyright",
				"vimls",
			},
		})

		-- 第三方工具
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
