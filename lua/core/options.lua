local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 禁用鼠标
opt.mouse = ""

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口在右或下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
