vim.g.mapleader = " "

local keymap = vim.keymap

--- ---------- 基础 ---------- --
-- 光标移动
keymap.set("", "u", "k", { nowait = true }) -- 上
keymap.set("", "e", "j", { nowait = true }) -- 下
keymap.set("", "n", "h", { nowait = true }) -- 左
keymap.set("", "i", "l", { nowait = true }) -- 右

-- 快速移动
keymap.set("", "U", "5k")
keymap.set("", "E", "5j")
keymap.set("", "N", "8h")
keymap.set("", "I", "8l")
keymap.set("", "<A-n>", "0") -- 至行首
keymap.set("", "<A-i>", "$") -- 至行尾

-- 插入
keymap.set("", "k", "i")
keymap.set("", "K", "I")

-- 删键
keymap.set("", "s", "<Nop>")
keymap.set("", "r", "<Nop>")

-- Select 模式下按键覆写
keymap.set("s", "u", "u")
keymap.set("s", "e", "e")
keymap.set("s", "n", "n")
keymap.set("s", "i", "i")
keymap.set("s", "U", "U")
keymap.set("s", "E", "E")
keymap.set("s", "N", "N")
keymap.set("s", "I", "I")
keymap.set("s", "k", "k")
keymap.set("s", "K", "K")
keymap.set("s", "s", "s")
keymap.set("s", "r", "r")

--- ---------- 功能 ---------- --
-- Normal 功能
keymap.set("n", "l", "u") -- 撤销
keymap.set("n", "j", "<C-r>") -- 恢复
keymap.set("n", "S", "<Cmd>w<CR>") -- 保存
keymap.set("n", "Q", "<Cmd>q<CR>") -- 退出
keymap.set("n", "<leader><CR>", "<Cmd>nohl<CR>")
keymap.set("n", "<leader>sv", "<C-w>v") -- 左右分屏
keymap.set("n", "<leader>sh", "<C-w>s") -- 上下分屏
keymap.set("n", "=", "nzz") -- 下一个匹配
keymap.set("n", "-", "Nzz") -- 上一个匹配
keymap.set("n", "zn", "<Cmd>%s/[\\u4E00-\\u9FCC]//gn<CR>") -- 统计字数

-- Visual 功能
keymap.set("v", "K", "I") -- 多行行首插入

--- ---------- 插件 ---------- --
-- TmuxNavigator
keymap.set("n", "<leader>u", "<Cmd>TmuxNavigateUp<CR>")
keymap.set("n", "<leader>e", "<Cmd>TmuxNavigateDown<CR>")
keymap.set("n", "<leader>n", "<Cmd>TmuxNavigateLeft<CR>")
keymap.set("n", "<leader>i", "<Cmd>TmuxNavigateRight<CR>")
keymap.set("n", "<leader>o", "<Cmd>TmuxNavigatePrevious<CR>")

-- Telescope
keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fb", "<Cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<Cmd>Telescope help_tags<CR>")

-- Buffers
keymap.set("n", "<C-i>", "<Cmd>bnext<CR>")
keymap.set("n", "<C-n>", "<Cmd>bprevious<CR>")
keymap.set("n", "<C-e>", "<Cmd>bdelete<CR>")

-- NvimTree
keymap.set("n", "<leader>tt", "<Cmd>NvimTreeToggle<CR>")
