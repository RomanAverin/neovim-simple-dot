return {
    "nvimdev/lspsaga.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter", -- optional
        "nvim-tree/nvim-web-devicons", -- optional
    },
    ft = { "typescript", "javascript", "lua", "rust" },
    config = function()
        require("lspsaga").setup({
            ui = {
                theme = "round",
                border = "rounded",
                title = true,
            },
            diagnostic = {
                show_code_action = true,
                show_source = true,
                jump_num_shortcut = true,
                keys = {
                    quit = { "<Esc>", "q" },
                },
            },
            lightbulb = {
                enable = false,
            },
        })
    end,
}
