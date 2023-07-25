return {
	"kdheepak/lazygit.nvim",
	keys = {
		{"gl", "<cmd>LazyGit<CR>"}
	},
	config = function ()
		vim.keymap.set("n", "gl", "<cmd>LazyGit<CR>", {silent = true})
	end
}
