require("starship"):setup()
require("git"):setup()
require("bunny"):setup({
	hops = {
		{ key = "r",          path = "/", },
		{ key = "v",          path = "/var", },
		{ key = "t",          path = "/tmp", },
		{ key = { "h", "h" }, path = "~",              desc = "Home" },
		{ key = { "h", "m" }, path = "~/Music",        desc = "Music" },
		{ key = { "h", "d" }, path = "~/Documents",    desc = "Documents" },
		{ key = { "h", "k" }, path = "~/Desktop",      desc = "Desktop" },
		{ key = { "h", "c" }, path = "~/stow/.config", desc = "My synced config" },
		{ key = "c",          path = "~/.config",      desc = "Config files" },
		{ key = { "l", "s" }, path = "~/.local/share", desc = "Local share" },
		{ key = { "l", "b" }, path = "~/.local/bin",   desc = "Local bin" },
		{ key = { "l", "t" }, path = "~/.local/state", desc = "Local state" },
		-- key and path attributes are required, desc is optional
	},
	desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
	notify = false,       -- Notify after hopping, default is false
	fuzzy_cmd = "fzf",    -- Fuzzy searching command, default is "fzf"
})
