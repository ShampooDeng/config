local mode_nv = {"n", "v"}
local mode_v = {"v"}
local nmappings = {
    {from = ";", to = ":"},
    {from = "..", to = ">>"},
	{from = ",,", to = "<<"},
	{from = ",", to = "<", mode = mode_v},
	{from = ".", to = ">", mode = mode_v},
}

for _, mapping in ipairs(nmappings) do
    vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, {noremap = true})
end
