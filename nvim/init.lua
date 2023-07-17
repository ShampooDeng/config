-- Editor settings
local opt = vim.opt

opt.syntax = "on"
opt.number = true
opt.relativenumber = true
-- Tabs behavior
opt.smartindent = true
opt.autoindent = true
opt.shiftwidth = 4
opt.tabstop = 4
-- Search pattern
opt.ignorecase = true
opt.smartcase = true
-- Others
-- TODO: Shared clipboard through nvim instances.
opt.clipboard:append({unnamedplus})
opt.ttimeoutlen = 100


-- Keymappings
local mode_n = {"n"}
local nmappings = {
    {from = ";", to = ":", mode = mode_n},
    {from = "..", to = ">>"},
    {from = ",,", to = "<<"},
}

for _, mapping in ipairs(nmappings) do
    vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, {noremap = true})
end


-- Config lazy.nvim
local plugin_proxy = "https://hub.fgit.ml/" -- Github proxy
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

require("lazy").setup({
    plugin_proxy .. "tpope/vim-surround",
    plugin_proxy .. "tpope/vim-commentary",
    plugin_proxy .. "gcmt/wildfire.vim",
    plugin_proxy .. "sainnhe/everforest",
})


-- Configure colorscheme
if vim.fn.has("termguicolors") then
    opt.termguicolors = true
end
opt.background = "dark"
vim.g.everforest_background = "medium"
vim.g.everforest_better_performance = 1
vim.cmd.colorscheme("everforest")

