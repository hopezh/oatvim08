return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    -- This part is needed to enable highlighting for treesitter
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "css",
                "git_config",
                "gitcommit",
                "gitignore",
                "glsl",
                "html",
                "kdl",
                "json",
                "java",
                "javascript",
                "julia",
                -- "latex",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "python",
                -- "quarto",
                "query",
                "r",
                "regex",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
