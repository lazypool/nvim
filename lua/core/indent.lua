-- Python indent
vim.g.python_indent = {
    disable_parentheses_indenting = false,
    closed_paren_align_last_line = false,
    searchpair_timeout = 150,
    continue = 'shiftwidth()',
    open_paren = 'shiftwidth()',
    nested_paren = 'shiftwidth()',
}

-- LaTeX indent
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "tex", "latex" },
    callback = function()
        vim.opt_local.autoindent = false
        vim.opt_local.smartindent = false
        vim.opt_local.cindent = false
        vim.opt_local.indentexpr = ""
    end,
})
