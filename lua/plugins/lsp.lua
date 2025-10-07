return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"folke/lazydev.nvim",
			opts = {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
		config = function()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			local servers = {
				"lua_ls",
			}

			for _, name in ipairs(servers) do
				vim.lsp.config(name, { capabilities = capabilities })
				vim.lsp.enable(name)
			end
		end
	}
}
