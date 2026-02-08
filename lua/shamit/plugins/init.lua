-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- [[ Load all plugin specs ]]
local plugin_specs = {
	-- Automatically require all lua/shamit/plugins/*.lua except this init.lua
	require("shamit.plugins.autopairs"),
	require("shamit.plugins.blink"),
	require("shamit.plugins.colorscheme"),
	require("shamit.plugins.comment"),
	require("shamit.plugins.conform"),
	require("shamit.plugins.gitsigns"),
	require("shamit.plugins.guess-indent"),
	require("shamit.plugins.mini"),
	require("shamit.plugins.nvim-lspconfig"),
	require("shamit.plugins.telescope"),
	require("shamit.plugins.todo-comments"),
	require("shamit.plugins.treesitter"),
	require("shamit.plugins.which-key"),
	require("shamit.plugins.lazydev")
}
--
-- NOTE: Here is where you install your plugins.
require("lazy").setup(plugin_specs, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
