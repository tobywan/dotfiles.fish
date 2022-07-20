local ok, tree = pcall(require, "nvim-tree")
if not ok then
	return
end

tree.setup({
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
        interval = 100,
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

require("user.remap").nnoremap("<leader>tt", "<cmd>NvimTreeToggle<CR>")
require("user.remap").nnoremap("<leader>tf", "<cmd>NvimTreeFocus<CR>")
