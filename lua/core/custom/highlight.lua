require("catppuccin").setup({
	custom_highlights = function(cp)
		return {
			-- Comment = { fg = cp.pink },
			-- WinSeperator = { fg = cp.red, bg = cp.red },
			-- VertSplit = { fg = cp.blue },
			FloatBorder = { fg = cp.rosewater },
			NormalNC = { bg = cp.mantle },
			Normal = { bg = cp.base },
			NvimTreeWinSeparator = { fg = cp.red },
			StatusLine = { bg = cp.surface0 },
			StatusLineNC = { bg = cp.surface0 },
		}
	end,
})
