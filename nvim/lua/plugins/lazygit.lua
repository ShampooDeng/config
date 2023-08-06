return {
	"kdheepak/lazygit.nvim",
	keys = {
		{"<Leader>g"}
	},
	config = function ()
		vim.keymap.set("n", "<Leader>g", "<cmd>LazyGit<CR>", {silent = true})
	end
}
