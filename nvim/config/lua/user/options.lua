local options = {
	compatible = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	hidden = true,
	updatetime = 300, -- faster update times
	mouse = "a",
	inccommand = "split",
	splitbelow = true,
	splitright = true,
	wrap = false,
	textwidth = 0,
	expandtab = true,
	smartindent = true,
	shiftwidth = 2,
	softtabstop = 2,
	tabstop = 2,
	signcolumn = "yes",
	scrolloff = 10,
	sidescrolloff = 10,
	number = true,
	relativenumber = true,
	swapfile = false,
	backup = false,
	undofile = true,
	undodir = os.getenv("HOME") .. "/.config/nvim/undodir",
	hlsearch = false,
	ignorecase = true,
	incsearch = true,
	ruler = true,
	wildmenu = true,
	autoread = true,
	-- syntax = true,
	completeopt = { "menu", "menuone", "noselect", "noinsert" },
	colorcolumn = "120",
	foldmethod = "indent",
	foldnestmax = 3,
	foldminlines = 10,
	foldlevelstart = 999,
	backspace = { "indent", "eol", "start" },
	spell = false,
	spelllang = { "en_us" },
	laststatus = 3,
	list = true,
	listchars = "eol:↲,tab:» ,trail:·,extends:<,precedes:>,conceal:┊,nbsp:␣,space:·",
	-- guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
	guicursor = "n-v-c:block,i-ci-ve:ver50,r-cr:hor20,o:hor50,a:blinkwait2000-blinkoff200-blinkon500-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175",
	guifont = "monoid_nerd_font_mono:h14",

}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end

local no_cursor_move_on_focus = vim.api.nvim_create_augroup('NO_CURSOR_MOVE_ON_FOCUS', {clear = true})
vim.api.nvim_create_autocmd('FocusLost', {
  pattern = '*',
  group = no_cursor_move_on_focus,
  command = 'let g:oldmouse=&mouse | set mouse='
})
vim.api.nvim_create_autocmd('FocusGained', {
  pattern = '*',
  group = no_cursor_move_on_focus,
  command = "if exists('g:oldmouse') | let &mouse=g:oldmouse | unlet g:oldmouse | endif"
})

vim.cmd([[
	set whichwrap+=<,>,[,],h,l
	set iskeyword+=-
	set formatoptions-=cro
	set expandtab
	set tabstop=2
]])
