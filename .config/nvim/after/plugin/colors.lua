require("catppuccin").setup({
	integrations = {
		treesitter = true
	},
	color_overrides = {
		all = {
			text = "#ffffff",
		},
	        mocha = {
        	    base = "#1c1c1c",
	            mantle = "#2e2e2e",
        	    crust = "#ffffff",
		},
    	}
})

vim.cmd.colorscheme "catppuccin-mocha"
