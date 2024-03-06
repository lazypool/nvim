return {
	"christoomey/vim-tmux-navigator",
	config = function()
		-- 按键设置
		vim.keymap.set("n", "<leader>u", ":<C-u>TmuxNavigateUp<CR>") -- 移至上窗
		vim.keymap.set("n", "<leader>e", ":<C-u>TmuxNavigateDown<CR>") -- 移至下窗
		vim.keymap.set("n", "<leader>n", ":<C-u>TmuxNavigateLeft<CR>") -- 移至坐窗
		vim.keymap.set("n", "<leader>i", ":<C-u>TmuxNavigateRight<CR>") -- 移至右窗
	end,
}
