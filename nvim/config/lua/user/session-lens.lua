local lens_ok, lens = pcall(require, "session-lens")
if not lens_ok then
	return
end


lens.setup({
  -- path_display = {'shorten'},
  -- see https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/themes.lua#L26
  theme_conf = { border = true },
  previewer = true
})


