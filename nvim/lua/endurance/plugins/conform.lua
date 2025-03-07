return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					fish = { "fish_indent" },
					sh = { "shfmt" },
					javascript = { "prettierd", "prettier" },
					rust = { "rustfmt" },
					c = { "clang_format" },
					cpp = { "clang_format" },
					java = { "google-java-format" },
					asm = { "asmfmt" },
					zig = { "zigfmt" },
					go = { "gofmt", "goimports" },
					php = { "phpcbf" },
					ruby = { "rubocop" },
					kotlin = { "ktlint" },
					swift = { "swiftformat" },
					typescript = { "prettierd", "prettier" },
					json = { "jq" },
					xml = { "xmlformat" },
					yaml = { "yamlfmt" },
					markdown = { "markdownlint" },
					toml = { "taplo" },
					css = { "prettierd", "prettier" },
					scss = { "prettierd", "prettier" },
					html = { "prettierd", "prettier" },
				},
				-- This option tells conform.nvim to format on save.
				format_on_save = {
					timeout_ms = 50,
					lsp_format = "fallback",
				},
			})

			-- Optional: if you want an explicit autocmd for format-on-save
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
		end,
	},
}
