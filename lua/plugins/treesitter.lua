return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "p00f/nvim-ts-rainbow" },
  config = function()
    require "nvim-treesitter.configs".setup {
      -- 选择需要高亮的语法
      ensure_installed = {
        "bash", "c", "cpp", "css", "go",
        "html", "java", "javascript", "latex",
        "lua", "markdown", "python", "vim",
      },
    
      -- 启用高亮
      highlight = {
        enable = true,
      },

      -- 启用彩色括号
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      },

      -- 启用缩进
      indent = {
        enable = true,
      }
    }
  end
}
