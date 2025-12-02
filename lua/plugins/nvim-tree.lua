local function keymaps(bufnr)
	-- 按键映射提示文字
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- 按键映射
	local api = require("nvim-tree.api")
	-- 文档树
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("显示/隐藏帮助面板"))
	vim.keymap.set("n", "q", api.tree.close, opts("关闭文件树"))
	vim.keymap.set("n", "<C-]>", api.tree.change_root_to_node, opts("将当前目录设为根目录"))
	vim.keymap.set("n", "-", api.tree.change_root_to_parent, opts("返回上级目录"))
	vim.keymap.set("n", "E", api.tree.expand_all, opts("展开所有目录"))
	vim.keymap.set("n", "W", api.tree.collapse_all, opts("折叠所有目录"))
	vim.keymap.set("n", "R", api.tree.reload, opts("刷新文档树"))
	vim.keymap.set("n", "S", api.tree.search_node, opts("搜索文件"))

	-- 显示过滤
	vim.keymap.set("n", "B", api.tree.toggle_no_buffer_filter, opts("切换缓冲区文件过滤"))
	vim.keymap.set("n", "C", api.tree.toggle_git_clean_filter, opts("切换Git未修改文件"))
	vim.keymap.set("n", "I", api.tree.toggle_gitignore_filter, opts("切换Git忽略文件"))
	vim.keymap.set("n", "N", api.tree.toggle_hidden_filter, opts("切换点文件显示"))
	vim.keymap.set("n", "H", api.tree.toggle_custom_filter, opts("切换自定义过滤"))

	-- 文件操作
	vim.keymap.set("n", "r", api.fs.rename, opts("重命名文件"))
	vim.keymap.set("n", "<C-r>", api.fs.rename_basename, opts("仅重命名文件名（不含后缀）"))
	vim.keymap.set("n", "l", api.fs.rename_full, opts("修改完整路径"))
	vim.keymap.set("n", "<C-l>", api.fs.rename_sub, opts("修改父目录路径"))
	vim.keymap.set("n", "a", api.fs.create, opts("新建文件/目录"))
	vim.keymap.set("n", "c", api.fs.copy.node, opts("复制"))
	vim.keymap.set("n", "d", api.fs.remove, opts("删除"))
	vim.keymap.set("n", "D", api.fs.trash, opts("移动到回收站"))
	vim.keymap.set("n", "p", api.fs.paste, opts("粘贴"))
	vim.keymap.set("n", "x", api.fs.cut, opts("剪切"))

	--- 路径操作
	vim.keymap.set("n", "y", api.fs.copy.filename, opts("复制文件名"))
	vim.keymap.set("n", "Y", api.fs.copy.relative_path, opts("复制相对路径"))
	vim.keymap.set("n", "gy", api.fs.copy.absolute_path, opts("复制绝对路径"))

	-- 节点导航
	vim.keymap.set("n", "<C-k>", api.node.show_info_popup, opts("显示文件信息"))
	vim.keymap.set("n", "<Tab>", api.node.open.preview_no_picker, opts("预览文件"))
	vim.keymap.set("n", "<CR>", api.node.open.edit, opts("打开文件/切换目录展开"))
	vim.keymap.set("n", "o", api.node.open.edit, opts("打开文件/切换目录展开"))
	vim.keymap.set("n", "<C-v>", api.node.open.vertical, opts("垂直分屏打开"))
	vim.keymap.set("n", "<C-h>", api.node.open.horizontal, opts("水平分屏打开"))
	vim.keymap.set("n", "<BS>", api.node.navigate.parent_close, opts("关闭父目录并返回"))

	-- 同级导航
	vim.keymap.set("n", "<", api.node.navigate.sibling.prev, opts("上一个同级节点"))
	vim.keymap.set("n", ">", api.node.navigate.sibling.next, opts("下一个同级节点"))
	vim.keymap.set("n", "K", api.node.navigate.sibling.first, opts("第一个同级节点"))
	vim.keymap.set("n", "J", api.node.navigate.sibling.last, opts("最后一个同级节点"))

	-- Git/诊断导航
	vim.keymap.set("n", "[c", api.node.navigate.git.prev, opts("上一个Git修改"))
	vim.keymap.set("n", "]c", api.node.navigate.git.next, opts("下一个Git修改"))
	vim.keymap.set("n", "[e", api.node.navigate.diagnostics.prev, opts("上一个诊断问题"))
	vim.keymap.set("n", "]e", api.node.navigate.diagnostics.next, opts("下一个诊断问题"))

	-- 运行命令
	vim.keymap.set("n", ".", api.node.run.cmd, opts("运行Vim命令"))
	vim.keymap.set("n", "s", api.node.run.system, opts("运行系统命令"))

	-- 实时过滤
	vim.keymap.set("n", "F", api.live_filter.clear, opts("清空过滤"))
	vim.keymap.set("n", "f", api.live_filter.start, opts("开始实时过滤"))

	-- 标记操作
	vim.keymap.set("n", "m", api.marks.toggle, opts("标记/取消标记"))
	vim.keymap.set("n", "bd", api.marks.bulk.delete, opts("批量删除标记文件"))
	vim.keymap.set("n", "bt", api.marks.bulk.trash, opts("批量移动到回收站"))
	vim.keymap.set("n", "bmv", api.marks.bulk.move, opts("批量移动标记文件"))
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- 设置开启/关闭文档树的按键
		vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")

		-- 启用文档树
		require("nvim-tree").setup({
			-- 自定义过滤
			filters = {
				custom ={
					"^\\.git$",
					"^\\.cache$",
					"node_modules",
					"__pycache__",
				}
			},
			-- 应用按键映射
			on_attach = keymaps,
			-- 修改图标和文档名之间的填充
			renderer = { icons = { padding = " " } }
		})
	end
}
