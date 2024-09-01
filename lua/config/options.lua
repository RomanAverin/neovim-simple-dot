-- Set indentation options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-- vim.opt.softtabstop =  4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- Uncomment the lines below if you want to enable autoindent and smartindent
-- vim.opt.autoindent = true
vim.opt.smartindent = true

-- Enable .editconfig
vim.g.editorconfig = true

-- Define normal mode mappings
-- Make sure to use 'n' for normal mode mappings
-- Autoindent after pasting
vim.api.nvim_set_keymap("n", "p", "p=`]", { noremap = true })
vim.api.nvim_set_keymap("n", "P", "P=`]", { noremap = true })

-- Current line chages
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.number = true

-- Leadar key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Diagnostics config

vim.diagnostic.config({
    virtual_text = {
        source = "if_many", -- Or "if_many"
        prefix = "●", -- Could be '■', '▎', 'x'
    },
    update_in_insert = true,
    underline = true,
    -- severity = {
    --     min = vim.diagnostic.severity.HINT,
    -- },
    severity_sort = true,
    float = {
        close_events = {
            "BufLeave",
            "CursorMoved",
            "InsertEnter",
            "FocusLost",
        },
        underline = true,
        border = "rounded",
        severity_sort = true,
        -- format = function(diagnostic)
        -- 	return string.format("%s\n%s: %s", diagnostic.message, diagnostic.source, diagnostic.code)
        -- end,
        -- format = function(diagnostic)
        --     if diagnostic.source == "rustc" and diagnostic.user_data.lsp.data ~= nil then
        --         return diagnostic.user_data.lsp.data.rendered.message
        --     else
        --         return diagnostic.message
        --     end
        -- end,
    },
})

-- Show line diagnostics automatically in hover window
-- vim.o.updatetime = 1000
-- vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
-- vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]])
