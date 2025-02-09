return {
    "akinsho/toggleterm.nvim",

    version = "*",

    -- config = true,

    cmd = "ToggleTerm",

    keys = {
        {
            "<F3>",
            "<cmd>ToggleTerm<cr>",
            desc = "Toggle floating terminal",
        },
    },

    opts = {
        open_mapping = [[<F3>]],

        -- size can be a number or function which is passed the current terminal
        size = function(term)
            if term.direction == "horizontal" then
                return 20
            elseif term.direction == "vertical" then
                return vim.o.columns * 0.5
            end
        end,

        direction = "float",
        -- direction = "horizontal",
        -- direction = "vertical",
        -- direction = "tab",
        shade_filetypes = {},
        ide_numbers = true,
        insert_mappings = true,
        terminal_mappings = true,
        start_in_insert = true,
        close_on_exit = true,

        float_opts = {
            border = "curved",
            -- border = "shadow",
            -- width = 100,
            -- height = 100,
        },
    },
}
