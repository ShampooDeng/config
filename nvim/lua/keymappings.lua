local mode_nv = {"n", "v"}
local mode_v = {"v"}
local nmappings = {
    {from = ";", to = ":"},
    {from = ">", to = ">>"},
	{from = "<", to = "<<"},
}

for _, mapping in ipairs(nmappings) do
    vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, {noremap = true})
end
