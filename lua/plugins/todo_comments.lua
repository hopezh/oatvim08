return {
    "folke/todo-comments.nvim",

    dependencies = { "nvim-lua/plenary.nvim" },

    keys = {
        -- {
        --     "<leader>xO",
        --     "<cmd>TodoLocList keywords=oat<cr>",
        --     desc = "show oat in this project",
        -- },
        {
            "<leader>zor",
            -- "<cmd>Trouble todo toggle<cr>",
            "<cmd>Trouble todo toggle keywords=o<cr>",
            desc = "show oat cmt in Trouble",
        },
        {
            "<leader>zot",
            -- "<cmd>TodoTelescope<cr>",
            "<cmd>TodoTelescope keywords=o<cr>",
            desc = "show oat cmt in Telescope",
        },
    },

    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below

        merge_keywords = true,

        keywords = {
            o = { icon = "", color = "#505050" }, -- use 'o' + ':' to activate the keyword
            -- o: this is a comment marked by "o"

            -- FIX = {
            --     icon = " ", -- icon used for the sign, and in search results
            --     color = "error", -- can be a hex color, or a named color (see below)
            --     alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
            --     -- signs = false, -- configure signs for some keywords individually
            -- },
            -- TODO = { icon = " ", color = "info" },
            -- HACK = { icon = " ", color = "warning" },
            -- WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
            -- PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
            -- NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
            -- TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
    },
}
