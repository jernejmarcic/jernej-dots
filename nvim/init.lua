require("endurance")

vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus" -- Use system clipboard

vim.cmd("colorscheme oxocarbon")

vim.opt.number = true
vim.opt.relativenumber = true -- Optional: enable relative numbers

vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.c",
	command = "0r ~/Templates/template.c",
})
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = { "*.cpp", "*.c++" },
	command = "0r ~/Templates/template.cpp",
})

vim.filetype.add({
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.config/nvim/undo")

-- GitHub Copilot configuration
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true })

-- Set bold text
vim.api.nvim_set_hl(0, "@text.strong", { bold = true })
-- Set italic text
vim.api.nvim_set_hl(0, "@text.emphasis", { italic = true })
-- Set bold and italic text
vim.api.nvim_set_hl(0, "@text.strong.emphasis", { bold = true, italic = true })

--
-- require("conform").setup({
--   formatters_by_ft = {
--     lua = { "stylua" },
--     -- Conform will run multiple formatters sequentially
--     python = { "isort", "black" },
--     -- You can customize some of the format options for the filetype (:help conform.format)
--     rust = { "rustfmt", lsp_format = "fallback" },
--     -- Conform will run the first available formatter
--     javascript = { "prettierd", "prettier", stop_after_first = true },
--   },
-- })
--

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		always_show_tabline = true,
		globalstatus = false,
		refresh = {
			statusline = 100,
			tabline = 100,
			winbar = 100,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
