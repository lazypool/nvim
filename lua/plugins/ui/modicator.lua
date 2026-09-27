return {
	"mawkler/modicator.nvim",
	dependencies = { "folke/tokyonight.nvim" },
	init = function()
		vim.o.cursorline = true
		vim.o.number = true
		vim.o.termguicolors = true
	end,
	opts = {
		show_warnings = false,
		highlights = {
			defaults = {
				bold = true,
				italic = true,
			},
			use_cursorline_background = true,
		},
		integration = {
			lualine = {
				enabled = true,
				mode_section = nil,
				highlight = "bg",
			},
		},
	},
}
