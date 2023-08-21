require("catppuccin").setup({
	integrations = {
		treesitter = true,
        mason = true,
        semantic_tokens = true
	},
	color_overrides = {
		all = {
			text = "#ffffff",
        },
        mocha = {
     	    base = "#1e1e1e",
            mantle = "#2e2e2e",
    	    crust = "#ffffff",
        },
    },
    custom_highlights = function (colors)
        return {
            Keyword = { fg = "#FD9720" }
        } 
    end

})

vim.cmd.colorscheme "catppuccin-mocha"
