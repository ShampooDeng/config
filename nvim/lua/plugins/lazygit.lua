return {
	"kdheepak/lazygit.nvim",
	keys = {
		{"\\g", "<cmd>LazyGit<CR>"}
	},
	config = function ()
		vim.keymap.set("n", "gl", "<cmd>LazyGit<CR>", {silent = true})
	end
}
