return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-context",
        opts = { -- NOTE: if you are fine with default you can remove opts here
            -- ...your options here...
        },
    },
    main = "nvim-treesitter.configs",
    opts = {
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
        },
    },
}
