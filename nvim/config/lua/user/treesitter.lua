require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = false,
		disable = { "yaml" },
	},
	ensure_installed = {
		"scheme",
		"javascript",
		"c",
		"embedded_template",
		"cpp",
		"dockerfile",
		"dot",
		"rust",
		"lua",
		"python",
		"go",
		"gomod",
		"gowork",
		"graphql",
		"ruby",
		"perl",
		"bash",
		"fish",
		"java",
		"kotlin",
		"html",
		"json",
		"css",
		"scss",
		"erlang",
		"elixir",
		"eex",
		"heex",
		"org",
		"swift",
		"c_sharp",
		"todotxt",
		"typescript",
		"tsx",
		"scala",
		"slint",
		"haskell",
		"hcl",
		"markdown",
		"toml",
		"vue",
		"jsonc",
		"yaml",
		"ninja",
		"verilog",
		"pascal",
		"regex",
		"php",
		"comment",
		"jsdoc",
		"query",
		"r",
		"latex",
		"bibtex",
		"cmake",
		"vim",
		"help",
		"json5",
		"hjson",
		"http",
		"make",
		"wgsl",
		"m68k",
		"v",
	},
	auto_install = true,
	autopairs = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<M-w>", -- maps in normal mode to init the node/scope selection with Alt-w
			node_incremental = "<M-w>", -- increment to the upper named parent
			node_decremental = "<M-C-w>", -- decrement to the previous node
			scope_incremental = "<M-e>", -- increment to the upper scope (as defined in locals.scm)
		},
	},
	textobjects = {
		enable = true,
		swap = {
			enable = true,
			swap_next = {
				["<leader>a"] = "@parameter.inner",
			},
			swap_previous = {
				["<leader>A"] = "@parameter.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true,

			goto_next_start = {
				["]p"] = "@parameter.inner",
				["]]"] = "@function.outer",
			},
			goto_next_end = {
				["]["] = "@function.outer",
			},
			goto_previous_start = {
				["[p"] = "@parameter.inner",
				["[["] = "@function.outer",
			},
			goto_previous_end = {
				["[]"] = "@function.outer",
			},
		},
		select = {
			enable = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",

				["ac"] = "@conditional.outer",
				["ic"] = "@conditional.inner",

				["aa"] = "@parameter.outer",
				["ia"] = "@parameter.inner",

				["av"] = "@variable.outer",
				["iv"] = "@variable.inner",
			},
		},
	},
})

require("spellsitter").setup()
