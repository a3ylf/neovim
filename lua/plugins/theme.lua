    return {
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      disable_background = true
    },
    config = function(_, opts)
        require("tokyodark").setup(opts) -- calling setup is optional
        vim.cmd [[colorscheme tokyodark]]
    end,
}, -- ITS TOKYODARK AND NOT TOKYONIGHT IM SORRY 
}
