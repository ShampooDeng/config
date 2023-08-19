-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = "\\"

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
	{ from = ";",     to = ":" },
	{ from = ">",     to = ">>" },
	{ from = "<",     to = "<<" },
	{ from = "<C-j>", to = "10j" },
	{ from = "<C-k>", to = "10k" },
}

for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end

-- Running current python file
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		-- print("entering python file")
		vim.keymap.set({ 'n', 'i' }, '<F5>', function()
			local file_name = vim.api.nvim_buf_get_name(0)
			vim.cmd(":w")
			return "<cmd>!time python " .. file_name .. "<CR>"
		end, { expr = true })
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
		-- print("entering python file")
		vim.keymap.set({ 'n', 'i' }, '<F5>', function()
			local file_name = vim.api.nvim_buf_get_name(0)
			vim.cmd(":w")
			return "<cmd>!time lua " .. file_name .. "<CR>"
		end, { expr = true })
	end
})
