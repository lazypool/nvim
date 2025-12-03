return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
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
					"latex"
				}
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm"
				}
			}
		})
	end
 }
