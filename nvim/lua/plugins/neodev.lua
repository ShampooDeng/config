return {
	"folke/neodev.nvim",
	opts = {},
	priority = 1000, -- Make sure nedev is loaded BEFORE lspconfig
	config = function ()
		require("neodev").setup({
			library = {
				enable = true,
				runtim = true,
				type = true,
				plugins = false,
			},
		})

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			settings = {
				lua = {
					completion = {
						callSnippet = "Replace"
					}
				}
			}
		})
	end
}
