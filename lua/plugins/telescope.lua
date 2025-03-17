return {
    "nvim-telescope/telescope.nvim",

    keys = {
        {
            "<leader>ma",
            "<cmd>Telescope vim_bookmarks all<cr>",
            desc = "Show all bookmarks in Telescope",
        },
        {
            "<leader>mc",
            "<cmd>Telescope vim_bookmarks current_file<cr>",
            desc = "Show bookmarks in current file in Telescope",
        },
    },

    opts = {
        -- change some default options
        defaults = {
            layout_strategy = "horizontal",
            layout_config = {
                prompt_position = "top",
                -- preview_width = 100, -- fix width of preview window
            },
            sorting_strategy = "ascending",
            winblend = 0,
        },

        pickers = {
            find_files = { hidden = true }, -- show hidden files in search
        },
    },

    config = function(_, opts)
        require("telescope").setup(opts)
        require("telescope").load_extension("vim_bookmarks")
    end,
}
