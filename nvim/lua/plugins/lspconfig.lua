local function lsp_zero_config()
	-- Config lsp_zero_config
	local lsp = require('lsp-zero').preset({
		manage_nvim_cmp = {
			-- Add extra mappings for goto snippet place holder
			-- and disable <Tab>&<S-Tab> introduced by extra mappings
			-- in Autocompletion.lua
			set_extra_mappings = true,
		}
	})

	lsp.on_attach(function(client, bufnr)
		-- see :help lsp-zero-keybindings
		-- to learn the available actions
		lsp.default_keymaps({buffer = bufnr})
	end)

	-- (Optional) Configure lua language server for neovim
	require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

	lsp.setup()

	-- Override settings of nvim-cmp configed by lsp-zero
	require("plugins.autocompletion").config()

	-- Lsp keybindings:
	-- K
	-- gd
	-- gD
	-- gr
	-- <F2>
	-- <F3>
	-- [d
	-- ]d
	-- Note: More keybindings related to lsp can be found in https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/lsp.md
end


return {
	PLUGIN_PROXY .. "VonHeikemen/lsp-zero.nvim",
	branch = 'v2.x',
	dependencies = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{                                      -- Optional
			'williamboman/mason.nvim',
			build = function()
				pcall(vim.api.nvim_command, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	},
	config = lsp_zero_config
}
