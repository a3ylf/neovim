--vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)

vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<leader>y", [["+y]])

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find, {})

-- hovering and seeing info
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

vim.keymap.set("n", "<F3>", vim.lsp.buf.rename, {})

vim.keymap.set("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Git Status" })

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)


vim.keymap.set("n", "<C-w>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-e>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-y>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-i>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)

vim.keymap.set("n", "-", "<CMD>Oil<CR>")
vim.keymap.set("n", "<leader>-", "<CMD>Oil --float<CR>")

vim.keymap.set("n", "<leader>ger", "oif err != nil {\n  fmt.Println(err)\n}") 

vim.keymap.set('n', '<leader>un', vim.cmd.UndotreeToggle)
