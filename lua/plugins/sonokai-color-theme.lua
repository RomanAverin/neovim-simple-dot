return {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.sonokai_enable_italic = 1
        vim.g.sonokai_better_performance = 1
        --vim.g.sonokai_disable_terminal_colors = 1
        vim.cmd.colorscheme("sonokai")
        -- Patch color palette for selections
        -- https://github.com/sainnhe/sonokai/issues/105
        local configuration = vim.fn["sonokai#get_configuration"]()
        local palette = vim.fn["sonokai#get_palette"](configuration.style, configuration.colors_override)
        vim.fn["sonokai#highlight"]("Visual", palette.none, palette.grey_dim)
        vim.fn["sonokai#highlight"]("IncSearch", palette.bg0, palette.yellow)
        vim.fn["sonokai#highlight"]("Search", palette.none, palette.diff_yellow)
    end,
}
