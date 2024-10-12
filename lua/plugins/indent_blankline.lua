return {
    "lukas-reineke/indent-blankline.nvim",

    event = "LazyFile",

    main = "ibl", -- since v3
    ---@module "ibl"
    ---@type ibl.config

    -- [since v3] use bg color for indentation area
    config = function()
        -- local highlight = {
        --     "CursorColumn",
        --     "Whitespace",
        -- }

        local highlight = {
            "oat_grey",
            "Whitespace",
        }

        local hooks = require("ibl.hooks")
        -- create the highlight groups in the highlight setup hook, so they are reset
        -- every time the colorscheme changes
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "oat_grey", { bg = "#252525" })
        end)

        require("ibl").setup({
            indent = {
                highlight = highlight,
                char = "",
            },
            whitespace = {
                highlight = highlight,
                remove_blankline_trail = false,
            },
            scope = {
                enabled = true,
            },
        })
    end,
}
