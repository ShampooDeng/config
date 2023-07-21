-- Config github proxy with global variabel plugin_proxy
plugin_proxy = ""
-- local plugin_proxy = "https://hub.fgit.ml/" -- Github proxy
if plugin_proxy == nil then
	plugin_proxy = "https://github.com/"
end


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is installed
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    -- "https://github.com/folke/lazy.nvim.git",
    plugin_proxy .. "folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " " 

if vim.g.vscode then
	-- If running in VSCode extension
	require("lazy").setup({
		plugin_proxy .. "tpope/vim-surround",
		plugin_proxy .. "tpope/vim-commentary",
		plugin_proxy .. "gcmt/wildfire.vim",
	})
else
	-- Running in ordinary Neovim
	require("lazy").setup({
		plugin_proxy .. "tpope/vim-surround",
		plugin_proxy .. "tpope/vim-commentary",
		plugin_proxy .. "gcmt/wildfire.vim",
		require("plugins.leap"),
		require("plugins.color_scheme"),
		require("plugins.lualine"),
		require("plugins.wilder"),
		require("plugins.joshuto"),
	})
end
