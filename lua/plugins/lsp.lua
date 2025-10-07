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
			local capabilites = require('blink.cmp').get_lsp_capabilities()
			require("lspconfig").lua_ls.setup { capabilites = capabilites }
		end
	}
}
