#!/usr/bin/env fish
switch (uname)
case Darwin
		defaults write com.googlecode.iterm2 "Secure Input" -bool true
		and defaults write  com.apple.terminal SecureKeyboardEntry -bool true
end
