return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        require("telescope").setup({
            defaults = {
                file_ignore_patterns = { "%.git/", "node_modules" },
                layout_strategy = "vertical",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        width = 0.8,
                        preview_width = 0.5,
                    },
                    vertical = {
                        width = 0.5,
                        height = 0.7,
                        preview_cutoff = 1,
                        prompt_position = "top",
                        preview_height = 0.4,
                        mirror = true,
                    },
                },
            },
        })

        -- Keybinding for Telescope file_browser
        local map = vim.api.nvim_set_keymap
        map("n", "<leader>fg", [[<cmd>Telescope file_browser hidden=true<CR>]], { noremap = true, silent = true })
        map("n", "<leader>ff", [[<cmd>Telescope find_files<cr>]], { noremap = true, silent = true })
        map("n", "<leader>fb", [[<cmd>Telescope buffers<CR>]], { noremap = true, silent = true })
        map("n", "<leader>fd", [[<cmd>Telescope diagnostics<CR>]], { noremap = true, silent = true })
    end,
}
