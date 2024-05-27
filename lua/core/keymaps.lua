vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 通用模式 ---------- --
-- 光标移动
keymap.set("", "u", "k") -- 上移
keymap.set("", "e", "j") -- 下移
keymap.set("", "n", "h") -- 左移
keymap.set("", "i", "l") -- 右移

-- 删键
keymap.set("", "s", ":<CR>") -- s 键无效
keymap.set("", "r", ":<CR>") -- r 键无效

-- ---------- 视觉模式 ---------- --
-- 单行或多行移动
keymap.set("v", "U", ":m '<-2<CR>gv=gv") -- 上移
keymap.set("v", "E", ":m '>+1<CR>gv=gv") -- 下移

keymap.set("v", "K", "I") -- 在全部选中行首插入

-- ---------- 正常模式 ---------- --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 垂直分窗
keymap.set("n", "<leader>sh", "<C-w>s") -- 水平分窗

-- 插入
keymap.set("n", "k", "i") -- 正常插入
keymap.set("n", "K", "I") -- 行首插入

-- 高级光标移动
keymap.set("n", "U", "5k") -- 上移五行
keymap.set("n", "E", "5j") -- 下移五行
keymap.set("n", "N", "0") -- 移至行首
keymap.set("n", "I", "$") -- 移至行尾

-- 中文字符计数
keymap.set("n", "gn", ":%s/[\\u4E00-\\u9FCC]//gn<CR>")

-- 其他
keymap.set("n", "l", "u") -- 撤销
keymap.set("n", "j", "<C-r>") -- 恢复
keymap.set("n", "S", ":w<CR>") -- 保存
keymap.set("n", "Q", ":q<CR>") -- 退出
keymap.set("n", "<leader><CR>", ":nohl<CR>") -- 取消高亮
