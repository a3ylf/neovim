return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded",
                    icons = {
                        package_installed = "👍",
                        package_pending = "😴",
                        package_uninstalled = "👎",
                    },
                },
            })
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "gopls", "clangd" },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                Lua = {
                    diagnostics = {
                        globals = { "vim", "lua_ls" },
                        disable = {
                            "lowercase-global",
                        },
                    },
                },
            })
            lspconfig.clangd.setup({})
            lspconfig.gopls.setup({})
        end,
    },
}
