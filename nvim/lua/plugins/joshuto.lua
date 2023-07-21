return {
	plugin_proxy .. "theniceboy/joshuto.nvim",
	config = function()
		-- TODO: add keymappings for joshuto
		vim.keymap.set("n", "<C-j><C-o>", "<cmd>Joshuto<cr>")
	end
}
