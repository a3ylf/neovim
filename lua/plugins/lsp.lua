return {
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    --xd
    {
        "eandrju/cellular-automaton.nvim",
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded",
                    icons = {
                        package_installed = "👍",

                        package_uninstalled = "👎",
                    },
                },
            })
        end,
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "black",
                    "mypy",
                    "pylint",
                    "stylua",
                },
            })
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                automatic_installation = true,
                ensure_installed = { "lua_ls", "gopls", "clangd", "pyright", "ts_ls" },
            })
        end,
    },

    --OutputPanel
    {
        "mhanberg/output-panel.nvim",
        event = "VeryLazy",
        config = function()
            require("output_panel").setup()
        end
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local capabilities = require("blink.cmp").get_lsp_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                Lua = {
                    diagnostics = {
                        globals = { "vim", "lua_ls" },
                        disable = {
                            "lowercase-global",
                        },
                    },
                },
            })

            -- lspconfig.lexical.setup({
            --        cmd = { "/home/apns/.local/share/nvim/mason/bin/lexical", "server" },
            --        root_dir = require("lspconfig.util").root_pattern { "mix.exs" },
            --        server_capabilities = {
            --          completionProvider = vim.NIL,
            --          definitionProvider = true,
            --        },
            --      })

            lspconfig.elixirls.setup({
                cmd = { "/home/apns/.elixir-ls/release/language_server.sh" },
                capabilities = capabilities,
                server_capabilities = {
                    completionProvider = true,
                    definitionProvider = true,
                    documentFormattingProvider = true,
                },
            })

            lspconfig.erlangls.setup({
                capabilities = capabilities,
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.hls.setup({
                capabilities = capabilities,
            })
        end,
    },
}
