return {
	"folke/drop.nvim",
	opts = {
		theme = "matrix",
		max = 35, -- maximum number of drops on the screen
		interval = 150, -- every (n)ms we update the drops
		screensaver = false, -- show after 5 minutes. Set to false, to disable
		filetypes = { "dashboard", "alpha", "ministarter" }, -- will enable/disable automatically for the following filetypes
		winblend = 100, -- winblend for the drop window
	},
}
