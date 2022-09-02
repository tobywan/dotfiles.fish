#!/usr/bin/env fish
set -Ux GOPATH $PROJECTS/Go
fish_add_path -a $GOPATH/bin
fish_add_path -a /usr/local/go/bin

if command -qs go
	go install github.com/go-delve/delve/cmd/dlv@latest
end
