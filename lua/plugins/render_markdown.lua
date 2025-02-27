return {
    "MeanderingProgrammer/render-markdown.nvim",

    -- dependencies = {
    --   "nvim-treesitter/nvim-treesitter",
    --   "nvim-tree/nvim-web-devicons",
    -- },

    -- opts = {
    --   file_types = { "markdown", "quarto" },
    --   code = { above = "", below = "" },
    -- },

    config = function()
        require("render-markdown").setup({
            file_types = { "markdown", "quarto" },
            code = { above = "", below = "" },
        })
    end,
}
