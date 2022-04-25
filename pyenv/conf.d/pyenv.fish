#!/usr/bin/env fish

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

