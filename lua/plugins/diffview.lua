return {
    "sindrets/diffview.nvim",
    version = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("diffview").setup()
    end,
}
