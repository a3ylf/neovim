return {
	{
		"andweeb/presence.nvim",
		name = "discord",

		config = function()
			require("presence").setup({
				--file_explorer_text = "BROwsing",
			})
		end,
	},
}

