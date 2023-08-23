local custom = {}

custom["kylechui/nvim-surround"] = {
	lazy = false,
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
		})
	end,
}

custom["chentoast/marks.nvim"] = {
	lazy = false,
	config = function()
		require("marks").setup({
			mappings = {
				set_next = "m,",
				next = "m]",
				preview = "m:",
				set_bookmark0 = "m0",
				prev = false, -- pass false to disable only this default mapping
			},
		})
	end,
}

custom["folke/zen-mode.nvim"] = {
	lazy = false,
	opts = {
		window = {
			backdrop = 0.9,
			width = 123,
		},
	},
}

-- custom["lewis6991/spellsitter.nvim"] = {
-- 	lazy = false,
-- 	config = function()
-- 		require("spellsitter").setup()
-- 	end,
-- 	wants = { "nvim-treesitter" },
-- }
return custom
