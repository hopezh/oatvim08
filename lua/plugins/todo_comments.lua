return {
    "folke/todo-comments.nvim",

    dependencies = { "nvim-lua/plenary.nvim" },

    version = "*", -- ensure using the latest version

    optional = true,

    keys = {
        -- if using Telescope
        {
            "<leader>xo",
            "<cmd>TodoLocList toggle keywords=oo<cr>",
            desc = "show oat cmt in QuickFix",
        },
        {
            "<leader>zor",
            -- "<cmd>Trouble todo toggle<cr>",
            "<cmd>Trouble todo toggle keywords=oo<cr>",
            desc = "show oat cmt in Trouble",
        },
        {
            "<leader>zot",
            -- "<cmd>TodoTelescope<cr>",
            "<cmd>TodoTelescope keywords=oo<cr>",
            -- "<cmd>TodoTelescope keywords=oo cwd=false<cr>",
            -- "<cmd>TodoTelescope keywords=oo cwd=%:p:h<cr>",
            desc = "show oat cmt in Telescope",
        },

        -- -- if using fzf-lua from lazyvim v14 that replaces Telescope
        -- {
        --     "<leader>zof",
        --     "<cmd>TodoFzfLua keywords=oo<cr>",
        --     desc = "show oat cmt in FzfLua",
        -- },
        -- {
        --     "<leader>zot",
        --     "<cmd>TodoTrouble keywords=oo cwd=false<cr>",
        --     desc = "show oat cmt in Trouble",
        -- },
    },

    opts = {
        merge_keywords = true,
        keywords = {
            oo = { icon = "", color = "#505050" }, -- use '# oo:' to activate the keyword
            -- oo: this is a comment marked by "oo"
        },
    },
}
