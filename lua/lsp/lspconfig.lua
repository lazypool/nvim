return {
	"neovim/nvim-lspconfig",
	dependencies = { "hrsh7th/cmp-nvim-lsp" },
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.pyright.setup({
			capabilities = capabilities,
			settings = {
				pyright = {
					reportGeneralTypeIssues = false,
					reportUnknownArgumentType = false,
				},
			},
		})

		lspconfig.clangd.setup({
			capabilities = capabilities,
		})

		lspconfig.gopls.setup({
			capabilities = capabilities,
		})

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})

		lspconfig.ts_ls.setup({
			capabilities = capabilities,
		})
	end,
}
