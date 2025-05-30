return {
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function ()
		  require("nvim-treesitter.configs").setup({
					ensure_installed = {
						"c", "lua", "vim", "vimdoc", "query",
						"elixir", "heex", "javascript", "html",
						"markdown",
					},
          sync_install = false,
          highlight = {
						enable = true,
						disable = { "latex" }
					},
          indent = { enable = true },
        })
    end
 }
