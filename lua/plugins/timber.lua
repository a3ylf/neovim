return {
	"Goose97/timber.nvim",
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	event = "VeryLazy",
	config = function()
		require("timber").setup({
			-- Configuration here, or leave empty to use defaults
			keymaps = {
				-- Set to false to disable the default keymap for specific actions
				-- insert_log_below = false,
				insert_log_below = "glj",
				insert_log_above = "glk",
				insert_plain_log_below = "glo",
				insert_plain_log_above = "gl<S-o>",
				insert_batch_log = "glb",
			},
		})
	end,
}
