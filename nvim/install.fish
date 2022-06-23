#!/usr/bin/env fish
abbr -a v 'nvim'

nvim --headless "+PackerSync" "+quit!"

# null-ls formatting for lua
if command -qs cargo
	cargo install stylua
end
