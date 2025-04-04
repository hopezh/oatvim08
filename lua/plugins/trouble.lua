return {
    "folke/trouble.nvim",

    -- show trouble in a float window
    opts = {
        focus = true,
        win = { type = "float" },
        keys = {
            -- The defaults for these are reversed but when having a floating window I want it to close on <cr>
            o = "jump",
            ["<cr>"] = "jump_close",
        },
    },
    -- source: https://github.com/folke/trouble.nvim/discussions/333#discussioncomment-12619765

    -- opts = {
    --     mode = "document_diagnostics", -- Change the default mode
    -- },

    -- keys = {
    --     {
    --         "<leader>xx",
    --         "<cmd>TroubleToggle document_diagnostics<cr>",
    --         desc = "Document Diagnostics",
    --     },
    --     {
    --         "<leader>xX",
    --         "<cmd>TroubleToggle workspace_diagnostics<cr>",
    --         desc = "Workspace Diagnostics",
    --     },
    -- },
}
