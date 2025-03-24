return {
    "folke/todo-comments.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "ibhagwan/fzf-lua",
    },

    version = "*", -- ensure using the latest version

    optional = true,

    keys = {
        -- -- if using Telescope
        -- {
        --     "<leader>xo",
        --     "<cmd>TodoLocList toggle keywords=oo<cr>",
        --     desc = "show oat cmt in QuickFix",
        -- },
        -- {
        --     "<leader>zor",
        --     -- "<cmd>Trouble todo toggle<cr>",
        --     "<cmd>Trouble todo toggle keywords=oo<cr>",
        --     desc = "show oat cmt in Trouble",
        -- },
        -- {
        --     "<leader>zot",
        --     -- "<cmd>TodoTelescope<cr>",
        --     "<cmd>TodoTelescope keywords=oo<cr>",
        --     -- "<cmd>TodoTelescope keywords=oo cwd=false<cr>",
        --     -- "<cmd>TodoTelescope keywords=oo cwd=%:p:h<cr>",
        --     desc = "show oat cmt in Telescope",
        -- },

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
        },
    },

    -- === show custom todo "oo" in current buffer only ===

    -- -- option 1: if using telescope instead of fzf
    -- config = function(_, opts)
    --     require("todo-comments").setup(opts)
    --     vim.keymap.set("n", "<leader>st", function()
    --         require("telescope.builtin").grep_string({
    --             search = "oo|TODO|HACK|WARN|PERF|NOTE|FIX",
    --             file_ignore_patterns = {},
    --             only_sort_text = true,
    --             path_display = { "smart" },
    --             search_dirs = { vim.fn.expand("%:p") },
    --         })
    --     end, { desc = "Todo (current file)" })
    -- end,

    -- option 2: If using fzf-lua instead of telescope
    -- stylua: ignore
    config = function(_, opts)
        require("todo-comments").setup(opts)
        vim.keymap.set(
            "n",
            "<leader>zo",
            function()
                local dir = vim.fn.expand("%:p:h")
                require("todo-comments.fzf").todo(
                    {
                        cwd = dir,
                        query = vim.fn.expand("%:t"),
                    }
                )
            end,
            { desc = "Todo (current file)" }
        )
    end,
}
