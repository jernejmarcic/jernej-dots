return {
	{ "bluz71/vim-moonfly-colors", name = "moonfly2", lazy = false, priority = 1000 },
	{ "sar/extra-darkplus.nvim" },
	{ "nyoom-engineering/oxocarbon.nvim" },
	-- { "brenoprata10/nvim-highlight-colors" },
	--{ "norcalli/nvim-colorizer.lua" },

	{
		"NvChad/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {
			user_default_options = {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				names = false, -- Disable colorizing named colors like "Blue"
				RRGGBBAA = true, -- #RRGGBBAA hex codes
				rgb_fn = true, -- CSS rgb() and rgba() functions
				hsl_fn = true, -- CSS hsl() and hsla() functions
				css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
				mode = "background", -- Set the display mode
			},
			-- Enable colorizer for all file types
			filetypes = { "*" },
		},
	},
}
