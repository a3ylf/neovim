vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

-- hovering and seeing info
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

--vim.keymap.set("i", "{","{}<c-c>i", {})
--vim.keymap.set("i", "(","()<c-c>i", {})
