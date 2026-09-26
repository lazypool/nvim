vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 通用模式 ---------- --
-- 光标移动
keymap.set("", "u", "k") -- 上移
keymap.set("", "e", "j") -- 下移
keymap.set("", "n", "h") -- 左移
keymap.set("", "i", "l") -- 右移

-- 高级光标移动
keymap.set("", "U", "5k") -- 上移五行
keymap.set("", "E", "5j") -- 下移五行
keymap.set("", "N", "8h") -- 左移八列
keymap.set("", "I", "8l") -- 右移八列
keymap.set("", "<A-n>", "0") -- 移至行首
keymap.set("", "<A-i>", "$") -- 移至行尾

-- 插入
keymap.set("", "k", "i") -- 正常插入
keymap.set("", "K", "I") -- 行首插入

-- 删键
keymap.set("", "s", "<Cmd>normal! <CR>") -- s 键无效
keymap.set("", "r", "<Cmd>normal! <CR>") -- r 键无效

-- ---------- 视觉模式 ---------- --
-- 单行或多行移动
keymap.set("v", "<A-u>", "<Cmd>m '<-2<CR>gv=gv") -- 上移
keymap.set("v", "<A-e>", "<Cmd>m '>+1<CR>gv=gv") -- 下移

keymap.set("v", "K", "I") -- 在全部选中行首插入

-- ---------- 正常模式 ---------- --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 垂直分窗
keymap.set("n", "<leader>sh", "<C-w>s") -- 水平分窗

-- 中文字符计数
keymap.set("n", "zn", "<Cmd>%s/[\\u4E00-\\u9FCC]//gn<CR>")

-- 其他
keymap.set("n", "l", "u") -- 撤销
keymap.set("n", "j", "<C-r>") -- 恢复
keymap.set("n", "S", "<Cmd>w<CR>") -- 保存
keymap.set("n", "Q", "<Cmd>q<CR>") -- 退出
keymap.set("n", "<leader><CR>", "<Cmd>nohl<CR>") -- 取消高亮

-- ---------- 选择模式 ---------- --
-- 覆写通用模式的部分按键
keymap.set("s", "u", "u") -- 按 u 输入 u
keymap.set("s", "e", "e") -- 按 e 输入 e
keymap.set("s", "n", "n") -- 按 n 输入 n
keymap.set("s", "i", "i") -- 按 i 输入 i
keymap.set("s", "U", "U") -- 按 U 输入 U
keymap.set("s", "E", "E") -- 按 E 输入 E
keymap.set("s", "N", "N") -- 按 N 输入 N
keymap.set("s", "I", "I") -- 按 I 输入 I
keymap.set("s", "k", "k") -- 按 k 输入 k
keymap.set("s", "K", "K") -- 按 K 输入 K
keymap.set("s", "s", "s") -- 按 s 输入 s
keymap.set("s", "r", "r") -- 按 r 输入 r

-- ---------- 插件 ---------- --
-- Navigator 按键设置
keymap.set("n", "<leader>u", "<Cmd>TmuxNavigateUp<CR>") -- 移至上窗
keymap.set("n", "<leader>e", "<Cmd>TmuxNavigateDown<CR>") -- 移至下窗
keymap.set("n", "<leader>n", "<Cmd>TmuxNavigateLeft<CR>") -- 移至左窗
keymap.set("n", "<leader>i", "<Cmd>TmuxNavigateRight<CR>") -- 移至右窗
keymap.set("n", "<leader>o", "<Cmd>TmuxNavigatePrevious<CR>") -- 移至之前窗口

-- Telescope 按键设置
keymap.set("n", "<leader>ff", "<Cmd>Telescope find_files<CR>") -- 查找文件
keymap.set("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>") -- 查找关键词
keymap.set("n", "<leader>fb", "<Cmd>Telescope buffers<CR>") -- 查找缓冲区
keymap.set("n", "<leader>fh", "<Cmd>Telescope help_tags<CR>") -- 查找帮助

-- Buffers 按键设置
keymap.set("n", "<C-i>", "<Cmd>bnext<CR>") -- 下一个缓冲区
keymap.set("n", "<C-n>", "<Cmd>bprevious<CR>") -- 上一个缓冲区
keymap.set("n", "<C-e>", "<Cmd>bdelete<CR>") -- 删除一个缓冲区

-- NvimTree 按键设置
keymap.set("n", "<leader>tt", "<Cmd>NvimTreeToggle<CR>") -- 开启/关闭文档树
