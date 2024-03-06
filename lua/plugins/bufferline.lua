return {
	"akinsho/bufferline.nvim",
	config = function()
		-- 按键设置
		vim.keymap.set("n", "<C-i>", ":bnext<CR>")
		vim.keymap.set("n", "<C-n>", ":bprevious<CR>")
		vim.keymap.set("n", "<C-e>", ":bdelete<CR>")

		require("bufferline").setup({
			options = {
				-- 使用 nvim 内置 lsp
				diagnostics = "nvim_lsp",

				-- 左侧让出 nvim-tree 的位置
				offsets = {
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "left",
				},
			},
		})
	end,
}
