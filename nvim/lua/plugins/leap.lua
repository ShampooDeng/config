return {
	PLUGIN_PROXY .. "ggandor/leap.nvim",
	config = function()
		require("leap").add_default_mappings()
	end
}
