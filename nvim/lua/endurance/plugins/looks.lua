return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	-- {
	-- 	"echasnovski/mini.animate",
	-- 	version = false, -- Always use latest version
	-- 	config = function()
	-- 		require("mini.animate").setup({
	-- 			scroll = { enable = true, duration = 100 },
	-- 			resize = { enable = true, duration = 150 },
	-- 			cursor = { enable = true, duration = 200 },
	-- 			open = { enable = true, duration = 250 },
	-- 			close = { enable = true, duration = 250 },
	-- 		})
	-- 	end,
	-- }

	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},
}
