require("nvim-tree").setup({
	view = {
		side = "right",
		adaptive_size = true,
	},
	update_focused_file = {
		enable = true,
		--	update_root = true,
		ignore_list = {},
	},
	filesystem_watchers = {
		enable = true,
		debounce_delay = 50,
	},
	sync_root_with_cwd = true,
	renderer = {
		add_trailing = false,
		group_empty = false,
		highlight_git = true,
		full_name = false,
		highlight_opened_files = "all",
		root_folder_modifier = ":~",
		indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				item = "│ ",
				none = "  ",
			},
		},
		symlink_destination = false,
	},
})

require("user.remap").nnoremap("<leader>rt", "<cmd>NvimTreeToggle<CR>")
require("user.remap").nnoremap("<leader>rf", "<cmd>NvimTreeFocus<CR>")
