return {
    {
        "echasnovski/mini.nvim",
        version = false,
        config = function()
            require("mini.surround").setup({})
            require("mini.pairs").setup({})
            require("mini.comment").setup({
                mappings = {
                    -- Toggle comment (like `gcip` - comment inner paragraph) for both
                    -- Normal and Visual modes
                    comment = "gc",
                    -- Toggle comment on current line
                    comment_line = "gcc",
                    -- Toggle comment on visual selection
                    comment_visual = "gc",
                    -- Define 'comment' textobject (like `dgc` - delete whole comment block)
                    -- Works also in Visual mode if mapping differs from `comment_visual`
                    textobject = "gc",
                },
            })
            require("mini.indentscope").setup({
                draw = {
                    delay = 0,
                },
            })
            require("mini.operators").setup({
                -- No need to copy this inside `setup()`. Will be used automatically.
                evaluate = {
                    prefix = "g=",
                },
                exchange = {
                    prefix = "gx",
                },
                multiply = {
                    prefix = "gm",
                    func = nil,
                },
                replace = {
                    prefix = "gr",
                    reindent_linewise = true,
                },
                -- Sort text
                sort = {
                    prefix = "gs",
                    func = nil,
                },
            })
        end,
    },
}
