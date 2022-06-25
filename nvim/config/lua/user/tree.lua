local ok, tree = pcall(require, "nvim-tree")
if not ok then
	return
end

tree.setup({
	view = {
		side = "right",
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	update_cwd = true,
	update_to_buf_dir = {
		enable = true,
		auto_open = true,
  },

})

require("user.remap").nnoremap("<leader>tv", "<cmd>NvimTreeToggle<CR>")
