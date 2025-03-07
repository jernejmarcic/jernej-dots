return {
	"uga-rosa/cmp-dictionary",
	config = function()
		require("cmp_dictionary").setup({
			dic = {
				-- Specify the path to your dictionary file
				["markdown"] = { "/usr/share/dict/words" },
			},
			-- Enable the dictionary completion only for markdown files
			filetype = { markdown = true },
		})
	end,
}
