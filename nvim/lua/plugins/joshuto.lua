return {
	PLUGIN_PROXY .. "theniceboy/joshuto.nvim",
	config = function()
		vim.keymap.set("n", "gj", "<cmd>Joshuto<cr>")
	end
}
