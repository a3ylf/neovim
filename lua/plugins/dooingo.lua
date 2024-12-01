return {
    "a3ylf/dooing",
    config = function()
        require("dooing").setup({
            -- your custom config here (optional)
            prioritization = true,
            keymaps = {
                toggle_priority = "x"
            },
            icons = {
                pending = "👎",
                done = "👌",
                calendar = "⏰",
            },
            calendar = {
                language = "pt",
            },
        })
    end,
}
