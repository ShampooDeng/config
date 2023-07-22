return {
	PLUGIN_PROXY .. "hrsh7th/nvim-cmp",
	dependencies = {
		-- PLUGIN_PROXY .. 'neovim/nvim-lspconfig',
		-- PLUGIN_PROXY .. 'hrsh7th/cmp-nvim-lsp',
		-- PLUGIN_PROXY .. 'hrsh7th/cmp-buffer',
		-- PLUGIN_PROXY .. 'hrsh7th/cmp-path',
		"windwp/nvim-autopairs",
	},
	config = function()
		local cmp = require("cmp")

		-- Setting up cmp
		cmp.setup({
			-- snippet = {
			-- 	expand = function(args)
			-- 		require('luasnip').lsp_expand(args.body)
			-- 	end,
			-- },
			-- window = {
				-- completion = cmp.config.window.bordered(),
				-- documentation = cmp.config.window.bordered(),
			-- },
			mapping = {
				['<C-Space>'] = cmp.mapping.complete(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
			},
			-- resources = cmp.config.resources({
			-- 	{ name = "nvim_lsp" },
			-- 	-- { name = "luasnip" },
			-- },{
			-- 	{ name = "buffer" },
			-- })
		})

		-- Autopairs integration
		-- If you want insert `(` after select function or method item
		local cmp_autopairs = require('nvim-autopairs.completion.cmp')
		cmp.event:on(
			'confirm_done',
			cmp_autopairs.on_confirm_done()
		)
		-- -- Config cmp for different filetypes
		-- cmp.setup.filetype("gitcommit", {
		-- 	resources = cmp.config.resources({
		-- 		{ name = "git" },
		-- 	},{
		-- 		{ name = "buffer" },
		-- 	})
		-- })

		-- -- Set up lspconfig.
		-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
		-- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
		-- -- TODO: Sign in my language server here
		-- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
		-- 	capabilities = capabilities
		-- }
	end
}
