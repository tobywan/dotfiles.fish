require("lualine").setup({
	options = {
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		theme = "tokyonight",
	},
	sections = {
		lualine_c = {
			{
				"filetype",
				icon_only = false,
				icon = { align = "left" },
			},
			function()
				return require("lsp-status").status()
			end,
			{
				"filename",
				file_status = true,
				path = 1,
			},
		},
		lualine_x = {
			"windows",
		},
		lualine_y = {
			"progress",
		},
		lualine_z = {
			"selectioncount",
			"location",
		},
	},
})
