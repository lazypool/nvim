local function keymaps(bufnr)
	-- 按键映射提示文字
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- 按键映射
	local api = require("nvim-tree.api")
	-- 文档树
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("帮助"))
	vim.keymap.set("n", "q", api.tree.close, opts("退出"))
	vim.keymap.set("n", "<C-]>", api.tree.change_root_to_node, opts("将根目录改为所指节点"))
	vim.keymap.set("n", "-", api.tree.change_root_to_parent, opts("将根目录改为父文件夹"))
	vim.keymap.set("n", "E", api.tree.expand_all, opts("展开全部文件夹"))
	vim.keymap.set("n", "W", api.tree.collapse_all, opts("折叠全部文件夹"))
	vim.keymap.set("n", "R", api.tree.reload, opts("更新文档树"))
	vim.keymap.set("n", "S", api.tree.search_node, opts("搜索文档树"))
	vim.keymap.set("n", "B", api.tree.toggle_no_buffer_filter, opts("仅显示未在缓冲区的文件"))
	vim.keymap.set("n", "C", api.tree.toggle_git_clean_filter, opts("仅显示无 git 标记的文件"))
	vim.keymap.set("n", "I", api.tree.toggle_gitignore_filter, opts("仅显示被 git 忽略的文件"))
	vim.keymap.set("n", "N", api.tree.toggle_hidden_filter, opts("仅显示点文件"))
	vim.keymap.set("n", "H", api.tree.toggle_custom_filter, opts("仅显示隐藏文件"))

	-- 文件系统
	vim.keymap.set("n", "r", api.fs.rename, opts("重命名:带后缀"))
	vim.keymap.set("n", "<C-r>", api.fs.rename_basename, opts("重命名:无后缀"))
	vim.keymap.set("n", "l", api.fs.rename_full, opts("改路径:带文件名"))
	vim.keymap.set("n", "<C-l>", api.fs.rename_sub, opts("改路径:无文件名"))
	vim.keymap.set("n", "a", api.fs.create, opts("添加"))
	vim.keymap.set("n", "c", api.fs.copy.node, opts("复制"))
	vim.keymap.set("n", "d", api.fs.remove, opts("删除"))
	vim.keymap.set("n", "D", api.fs.trash, opts("回收"))
	vim.keymap.set("n", "p", api.fs.paste, opts("粘贴"))
	vim.keymap.set("n", "x", api.fs.cut, opts("剪切"))
	vim.keymap.set("n", "y", api.fs.copy.filename, opts("复制文件名"))
	vim.keymap.set("n", "Y", api.fs.copy.relative_path, opts("复制相对路径"))
	vim.keymap.set("n", "gy", api.fs.copy.absolute_path, opts("复制绝对路径"))

	-- 节点
	vim.keymap.set("n", "<C-k>", api.node.show_info_popup, opts("显示文件信息"))
	vim.keymap.set("n", "<Tab>", api.node.open.preview_no_picker, opts("展开/关闭文件夹、预览文件"))
	vim.keymap.set("n", "<CR>", api.node.open.edit, opts("展开/关闭文件夹、打开文件"))
	vim.keymap.set("n", "o", api.node.open.edit, opts("展开/关闭文件夹、打开文件"))
	vim.keymap.set("n", "<C-v>", api.node.open.vertical, opts("打开文件:垂直分窗"))
	vim.keymap.set("n", "<C-h>", api.node.open.horizontal, opts("打开文件:水平分窗"))
	vim.keymap.set("n", "<BS>", api.node.navigate.parent_close, opts("关闭文件夹"))
	vim.keymap.set("n", "<", api.node.navigate.sibling.prev, opts("移至上个同级节点"))
	vim.keymap.set("n", ">", api.node.navigate.sibling.next, opts("移至下个同级节点"))
	vim.keymap.set("n", "[c", api.node.navigate.git.prev, opts("移至上个有 git 标记的节点"))
	vim.keymap.set("n", "]c", api.node.navigate.git.next, opts("移至下个有 git 标记的节点"))
	vim.keymap.set("n", "[e", api.node.navigate.diagnostics.prev, opts("移至上个诊断节点"))
	vim.keymap.set("n", "]e", api.node.navigate.diagnostics.next, opts("移至下个诊断节点"))
	vim.keymap.set("n", "K", api.node.navigate.sibling.first, opts("移至首位同级节点"))
	vim.keymap.set("n", "J", api.node.navigate.sibling.last, opts("移至末位同级节点"))
	vim.keymap.set("n", ".", api.node.run.cmd, opts("运行单行命令"))
	vim.keymap.set("n", "s", api.node.run.system, opts("运行预设命令"))

	-- 过滤器
	vim.keymap.set("n", "F", api.live_filter.clear, opts("清空过滤"))
	vim.keymap.set("n", "f", api.live_filter.start, opts("进行过滤"))

	-- 标记
	vim.keymap.set("n", "m", api.marks.toggle, opts("标记/取消标记"))
	vim.keymap.set("n", "bd", api.marks.bulk.delete, opts("删除标记文件"))
	vim.keymap.set("n", "bt", api.marks.bulk.trash, opts("回收标记文件"))
	vim.keymap.set("n", "bmv", api.marks.bulk.move, opts("移动标记文件"))
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- 设置开启/关闭文档树的按键
		vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")

		-- 启用文档树
		require("nvim-tree").setup({
			-- 应用按键映射
			on_attach = keymaps,
			-- 修改图标和文档名之间的填充
			renderer = { icons = { padding = " " } },
		})
	end,
}
