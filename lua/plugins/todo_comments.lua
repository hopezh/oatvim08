return {
    "folke/todo-comments.nvim",

    dependencies = { "nvim-lua/plenary.nvim" },

    version = "*", -- ensure using the latest version

    keys = {
        -- {
        --     "<leader>xO",
        --     "<cmd>TodoLocList keywords=oat<cr>",
        --     desc = "show oat in this project",
        -- },

        -- {
        --     "<leader>zor",
        --     -- "<cmd>Trouble todo toggle<cr>",
        --     "<cmd>Trouble todo toggle keywords=o<cr>",
        --     desc = "show oat cmt in Trouble",
        -- },

        -- {
        --     "<leader>zot",
        --     -- "<cmd>TodoTelescope<cr>",
        --     "<cmd>TodoTelescope keywords=o<cr>",
        --     desc = "show oat cmt in Telescope",
        -- },

        -- From lazyvim v14 fzf-lua replaced telescope
        {
            "<leader>zof",
            "<cmd>TodoFzfLua keywords=oo<cr>",
            desc = "show oat cmt in FzfLua",
        },

        {
            "<leader>zot",
            "<cmd>TodoTrouble keywords=oo cwd=false<cr>",
            desc = "show oat cmt in Trouble",
        },
    },

    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below

        merge_keywords = true,

        keywords = {
            oo = { icon = "", color = "#505050" }, -- use '# oo:' to activate the keyword
            -- oo: this is a comment marked by "oo"

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
