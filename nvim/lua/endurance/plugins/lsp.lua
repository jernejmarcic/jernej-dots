-- local lspconfig = require("lspconfig")
-- local mason = require("mason")
-- local mason_lspconfig = require("mason-lspconfig")
--
-- mason.setup()
-- mason_lspconfig.setup({
--   ensure_installed = { "lua_ls", "pyright", "rust_analyzer" }, -- Add LSPs here
-- })
--
-- -- Setup each installed server
-- mason_lspconfig.setup_handlers({
--   function(server_name)
--     lspconfig[server_name].setup({
--       capabilities = require("cmp_nvim_lsp").default_capabilities(),
--     })
--   end,
-- })
--
-- -- local lspconfig = require("lspconfig")
-- -- local mason_lspconfig = require("mason-lspconfig")
-- --
-- -- mason_lspconfig.setup({
-- -- 	ensure_installed = { "jdtls", "lua_ls", "pyright", "rust_analyzer", "gopls" },
-- -- })
-- --
-- -- mason_lspconfig.setup_handlers({
-- -- 	function(server_name)
-- -- 		local opts = {}
-- --
-- -- 		-- Fix Java LSP setup
-- -- 		if server_name == "jdtls" then
-- -- 			opts.cmd = { "jdtls" } -- Correct command for Java LSP
-- -- 			opts.root_dir = lspconfig.util.root_pattern("pom.xml", "gradlew", ".git")
-- -- 		end
-- --
-- -- 		lspconfig[server_name].setup(opts)
-- -- 	end,
-- -- })
-- -- Keymaps for LSP functions
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(event)
-- 		local opts = { buffer = event.buf, silent = true }
-- 		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
-- 		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
-- 		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
-- 		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
-- 		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
-- 		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
-- 	end,
-- })
--
-- return {}

local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()
mason_lspconfig.setup({
	ensure_installed = { "lua_ls", "pyright", "rust_analyzer", "jdtls", "gopls" }, -- Added missing LSPs
})

-- Setup each installed server
mason_lspconfig.setup_handlers({
	function(server_name)
		local opts = {
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		}

		-- Fix Java LSP setup
		if server_name == "jdtls" then
			opts.cmd = { "jdtls" }
			opts.root_dir = lspconfig.util.root_pattern("pom.xml", "gradlew", ".git")
		end

		lspconfig[server_name].setup(opts)
	end,
})

-- Keymaps for LSP functions
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local opts = { buffer = event.buf, silent = true }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
	end,
})

return {}
