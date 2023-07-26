local plugin = {}

plugin.install = {
	PLUGIN_PROXY .. "hrsh7th/nvim-cmp",
	dependencies = {
		-- PLUGIN_PROXY .. 'neovim/nvim-lspconfig',
		-- PLUGIN_PROXY .. 'hrsh7th/cmp-nvim-lsp',
		-- PLUGIN_PROXY .. 'hrsh7th/cmp-buffer',
		-- PLUGIN_PROXY .. 'hrsh7th/cmp-path',
		"windwp/nvim-autopairs",
	},
}

plugin.config = function ()
	-- This method is used to override lsp-zero settings.
	local cmp = require("cmp")

	cmp.setup({
		mapping = {
			['<C-Space>'] = cmp.mapping.complete(),
			['<CR>'] = cmp.mapping.confirm({ select = true }),
			-- Disable Tab and S-Tab function added by lsp-zero extra mappings
			["<Tab>"] = cmp.mapping(function (fallback)
				fallback()
			end, {"i","s"}),
			["<S-Tab>"] = cmp.mapping(function (fallback)
				fallback()
			end, {"i","s"})
		},
	})

	-- Autopairs integration
	-- If you want insert `(` after select function or method item
	local cmp_autopairs = require('nvim-autopairs.completion.cmp')
	cmp.event:on(
		'confirm_done',
		cmp_autopairs.on_confirm_done()
	)
end

return plugin
