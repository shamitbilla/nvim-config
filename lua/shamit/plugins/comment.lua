-- comment and uncomment pluggin
return {
	"numToStr/Comment.nvim",
	event = "VeryLazy", -- load only when needed
	config = function()
		require("Comment").setup() -- defaults are fine
	end,
}
