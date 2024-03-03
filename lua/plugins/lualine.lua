return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
        local lualine = require("lualine")

        local opts = {
            options = {
                icons_enabled = true,
                theme = 'ayu_mirage',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                disabled_filetypes = {
                    statusline = { "neo-tree", "NvimTree", "undotree", "diff" },
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff',
                    {
                        "diagnostics",
                        symbols = {
                            error = 'Err: ',
                            warn =' Warn: ',
                            hint = ' Hint: ',
                            info = ' Info:  ',
                        },
                        always_visible = true,
                        colored = true,
                        diagnostics_color = {
                            error = 'DiagnosticError',
                            warn  = 'DiagnosticWarn',
                            info  = 'DiagnosticInfo',
                            hint  = 'DiagnosticHint',
                        }
                    },
                },
                lualine_c = {},
                lualine_x = {
                    {
                        "filetype",
                        icon_only = true,
                        separator = "",
                        padding = { left = 1, right = 0 }
                    },
                    {
                        "filename",
                        file_status = true,
                        path = 1,
                        symbols = {
                            modified = '{+}',
                            readonly = '{-}',
                            unnamed = '{No Name}',
                            newfile = '{New}',
                        }
                    },
                },
                lualine_y = {},
                lualine_z = { 'location' }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
        }
        lualine.setup(opts)
    end,
}
