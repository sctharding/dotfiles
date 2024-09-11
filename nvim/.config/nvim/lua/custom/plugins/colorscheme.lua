return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		local rosepine = require("rose-pine")
		rosepine.setup({
			variant = "auto",
			dark_variant = "main",
			dim_inactive_windows = false,
			extend_background_behind_borders = true,
			styles = {
				bold = false,
				italic = false,
			},
		})
		vim.cmd("colorscheme rose-pine-moon")
	end,
}
