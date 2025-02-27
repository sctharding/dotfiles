return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- Show hidden files permanently
					hide_dotfiles = false, -- Do not hide dotfiles (files starting with .)
					hide_gitignored = false, -- Optional: Show gitignored files as well
				},
			},
		})
	end,
	vim.keymap.set("n", "<leader>ft", "<Cmd>Neotree toggle<CR>"),
}
