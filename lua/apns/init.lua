require("apns.remap")

print("Booting up")

vim.opt.number = true
vim.opt.relativenumber = true

require("mason").setup({
	ui = {
            border = "rounded",
            icons = {
                package_installed = "👍",
                package_pending = "😴",
                package_uninstalled = "👎",
            },
        }
	    })

require("presence").setup({
	file_explorer_text  = "BROwsing"
})

require('mason-lspconfig').setup({
	ensure_installed = {"lua_ls", "gopls"}
})

require('cmp').setup {
	snippet = {
		expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
	},
	completion = {
                completeopt = 'menu,menuone',
            },
	 window = {
                completion = {
                    scrollbar = false,
                    border = "rounded",
                },
                documentation = {
                    border = "rounded",
                },
            },
	sources = default_cmp_sources,
        mapping = mappings,

}
