local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
	return
end

npairs.setup({
	ignored_next_char = "[%w%.%s]", -- will ignore alphanumeric and `.` symbol and spaces
	enable_check_bracket_line = false,
    fast_wrap = {},
})
