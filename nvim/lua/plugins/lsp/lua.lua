return {
	require("lspconfig").lua_ls.setup{
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
				},
				diagnostics = {
					globals = {"vim"}
				},
				workspace = {
					checkThirdParty = false,
				},
				completion = {
					enable = true,
					callSnippet = "Disable"
				},
				hint = {
					enable = true
				}
			},
		}
	}
}
