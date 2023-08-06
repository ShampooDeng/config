-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "

local mode_nv = {"n", "v"}
local mode_v = {"v"}
local mode_i = {"i"}
local nmappings = {
	{from = ";", to = ":"},
	{from = ">", to = ">>"},
	{from = "<", to = "<<"},
}

for _, mapping in ipairs(nmappings) do
    vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, {noremap = true})
end

-- Running current python file
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function(args)
		-- print("entering python file")
		vim.keymap.set('n', '<F5>', function()
			vim.cmd("!python "..args.file)
		end, {})
  end
})

