return {
	{
		"OXY2DEV/markview.nvim",
		enabled = true,
		config = function()
			require("markview").setup({
				preview = {
					auto_start = false,
					ignore_previews = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.bmp", "*.svg", "*.pdf" },
				},
			})
		end,
	},

	{
		"folke/snacks.nvim",
		dependencies = { "OXY2DEV/markview.nvim" }, -- Ensures it loads after markview
		config = function()
			require("snacks").setup({
				image = {
					enabled = true,
					formats = { "png", "jpg", "jpeg", "gif", "bmp", "webp", "pdf" },
					doc = { enabled = true, inline = true, float = true, max_width = 80, max_height = 40 },
				},
			})
		end,
	},
}
