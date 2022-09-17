require("lualine").setup({
	options = {
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		theme = "tokyonight",
		component_separators = "",
		section_separators = "",
	},
	sections = {
		lualine_c = {
			{
				"filetype",
				icon_only = false,
				icon = { align = 'left' }
			},
			{
				"filename",
				file_status = true,
				path = 1,
			},
		},
		lualine_x = {
			function()
				return require("lsp-status").status()
			end,
			"encoding",
		},
	},
})
