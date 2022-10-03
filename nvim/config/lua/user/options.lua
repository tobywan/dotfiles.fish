local options = {
	compatible = false,
	-- clipboard = "unnamedplus",
	-- cmdheight = 2,
	hidden = true,
	updatetime = 1000, -- faster update times, default 4000
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
	undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir",
	hlsearch = false,
	ignorecase = true,
	incsearch = true,
	ruler = true,
	wildmenu = true,
	autoread = true,
	completeopt = { "menu", "menuone", "noselect" },
	colorcolumn = "120",
	foldmethod = "indent",
	foldnestmax = 3,
	foldminlines = 10,
	foldlevelstart = 999,
	backspace = { "indent", "eol", "start" },
	spell = true,
	spelllang = { "en_us" },
	laststatus = 3,
	cursorline = true,
	list = false,
	colourscheme = tokyonight,
	listchars = "eol:↲,tab:» ,trail:·,extends:<,precedes:>,conceal:┊,nbsp:␣,space:·",
	guicursor = "n-v-c:block,i-ci-ve:ver50,r-cr:hor20,o:hor50,a:blinkwait2000-blinkoff200-blinkon500-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175",
	guifont = "monoid_nerd_font_mono:h14",
	sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal",
	grepprg = "rg --vimgrep --smart-case --follow",
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd([[
	set whichwrap+=<,>,[,],h,l
	set iskeyword+=-
	set formatoptions-=cro
	set expandtab
	set tabstop=2
	set cmdheight=2
	let g:oscyank_term = 'default'
]])
