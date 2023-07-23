return {
	"akinsho/bufferline.nvim",
	lazy = false,
	config  = function ()
		vim.opt.termguicolors = true
		require("bufferline").setup{
			options = {
				-- todo
			},
			vim.keymap.set("n","gn",":BufferLineCycleNext<CR>"),
			vim.keymap.set("n","gp",":BufferLineCyclePrev<CR>"),
		}
	end
}

