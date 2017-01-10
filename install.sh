#!/usr/bin/env bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install applications
./brew.sh
./zsh.sh
./macos.sh

# Symlink dot-files
for file in .*; do
	[ -r "$file" ] && [ -f "$file" ] && ln -fs "$(pwd {BASH_SOURCE[0]})/$file" ~/$file;
done

# Post installation
open "http://www.joshfinnie.com/blog/auto-starting-tmux-in-iterm2/"
echo "Set default color schema in iTerm2"
echo "Set default font in iTerm2"
echo "Configure atom"
