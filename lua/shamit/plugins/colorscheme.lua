-- return { -- You can easily change to a different colorscheme.
-- 	-- Change the name of the colorscheme plugin below, and then
-- 	-- change the command in the config to whatever the name of that colorscheme is.
-- 	--
-- 	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
-- 	"folke/tokyonight.nvim",
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	config = function()
-- 		---@diagnostic disable-next-line: missing-fields
-- 		require("tokyonight").setup({
-- 			styles = {
-- 				comments = { italic = false }, -- Disable italics in comments
-- 			},
-- 		})
--
-- 		-- Load the colorscheme here.
-- 		-- Like many other themes, this one has different styles, and you could load
-- 		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
-- 		vim.cmd.colorscheme("tokyonight-night")
-- 	end,
-- }
--
--
--
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = false,
				integrations = {
					treesitter = true,
					native_lsp = { enabled = true },
					telescope = true,
					gitsigns = true,
					which_key = true,
				},
			})
			vim.cmd.colorscheme("catppuccin-mocha")

			-- Force JetBrains-style black background
			vim.api.nvim_set_hl(0, "Normal", { bg = "#0e0e10" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0e0e10" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "#0e0e10" })
		end,
	},
}
