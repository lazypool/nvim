return {
	"alvan/vim-closetag",
	init = function()
		vim.g.closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml,*.jsx,*.tsx,*.vue,*.svelte"
		vim.g.closetag_filetypes = "html,xhtml,phtml,xml,javascriptreact,typescriptreact,vue,svelte"
	end,
}
