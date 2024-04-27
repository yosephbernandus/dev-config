return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		--opts = {
		--	auto_install = true,
		--},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"ruff_lsp",
					"rust_analyzer",
					"pyright",
					"html",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local on_attach = function(client)
				require("completion").on_attach(client)
			end

			-- local on_attach = require("plugins.configs.lspconfig").on_attach
			-- local util = require("lspconfig/util")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({ capabilities = capabilities })

			lspconfig.ruff_lsp.setup({
				capabilities = capabilities,
			})

			lspconfig.pyright.setup({
				capabilities = capabilities,
				settings = {
					analysis = {
						autoSearchPaths = true,
						diagnosticMode = "openFilesOnly",
						useLibraryCodeForTypes = true,
					},
				},
			})
			lspconfig.rust_analyzer.setup({
				-- on_attach = on_attach,
				-- on_attach = function(client, bufnr)
				--  vim.lsp.inlay_hint.enable(bufnr)
				-- end,
				capabilities = capabilities,
				-- filetypes = { "rust" },
				--       root_dir = util.root_pattern("Cargo.toml"),
				-- settings = {
				--["rust-analyzer"] = {
				--	cargo = {
				--		allFeatures = true,
				--	},
				--	},
				-- },
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
