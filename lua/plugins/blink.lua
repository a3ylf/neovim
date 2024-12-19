return {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = "rafamadriz/friendly-snippets",

    version = "v0.*",

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = { 
            preset = "default",
            [ '<Tab>' ] = {'select_next', 'fallback'},
            ['<CR>'] = { 'accept', 'fallback' },
        },
        completion = {
            documentation = {
                auto_show = true,
            },
            ghost_text = { enabled = true },
        },

            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = "mono",
            },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
            -- optionally disable cmdline completions
            -- cmdline = {},
        },

        -- experimental signature help support
        signature = { enabled = true },
    },
    -- allows extending the providers array elsewhere in your config
    -- without having to redefine it
    opts_extend = { "sources.default" },
}
