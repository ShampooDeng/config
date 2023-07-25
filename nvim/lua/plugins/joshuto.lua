return {
	PLUGIN_PROXY .. "theniceboy/joshuto.nvim",
	keys = {
		{"gj", "<cmd>Joshuto<cr>"},
	},
	config = function()
		vim.keymap.set("n", "gj", "<cmd>Joshuto<cr>", {silent = true})
	end
}
