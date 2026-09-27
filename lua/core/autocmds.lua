local fcitx5state = vim.fn.system("fcitx5-remote")

vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		fcitx5state = vim.fn.system("fcitx5-remote"):sub(1, 1)
		vim.fn.system("fcitx5-remote -c")
	end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
	callback = function()
		if fcitx5state == "2" then
			vim.fn.system("fcitx5-remote -o")
		end
	end,
})
