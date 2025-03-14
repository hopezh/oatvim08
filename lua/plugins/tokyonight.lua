return {
    "folke/tokyonight.nvim",

    opts = {
        style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light

        -- Enable this to disable setting the background color
        -- ! when enabled, need to provide background_colour="#000000" for nvim-notify
        transparent = false,
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovimi

        styles = {
            -- Style to be applied to different syntax groups
            -- Value is any valid attr-list value for `:help nvim_set_hl`
            comments = { italic = true },
            keywords = { italic = true },
            functions = { bold = true },
            variables = { italic = false },

            -- Background styles. Can be "dark", "transparent" or "normal"
            sidebars = "transparent", -- style for sidebars, see below
            floats = "transparent", -- style for floajing windows
        },

        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = true, -- dims inactive windows
        lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific highlights to use other groups or a hex color
        --- functiogn will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme

        on_highlights = function(highlights, colors)
            -- highlights.MsgArea = { bg = colors.none }

            highlights.CursorLineNr = {
                fg = "#ffff00", -- set cursorline number highlight color
                bg = colors.bg_highlight, -- extend cursorline hl bg color to line number
                bold = true,
            }

            highlights.CursorLine = { bg = colors.bg_highlight }
            -- highlights.CursorLine = { bg = colors.none } -- disable cursorline highlight
        end,
    },
}
