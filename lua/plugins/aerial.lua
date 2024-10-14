return {
    "stevearc/aerial.nvim",

    opts = {
        backends = { "treesitter", "lsp", "markdown", "asciidoc", "man", "quarto" },
        layout = {
            default_direction = "float",
            -- max_width = { 40, 0.2 },
            max_width = 100,
            placement = "edge",
            resize_to_content = true,
        },

        float = {
            relative = "editor",
        },
    },
}
