return {
    "MattesGroeger/vim-bookmarks",

    dependencies = {
        "tom-anders/telescope-vim-bookmarks.nvim",
    },

    keys = {
        {
            "<leader>mi",
            "<cmd>BookmarkAnnotate<cr>",
            desc = "Add bookmark annotation",
        },
    },
}
