#!/usr/bin/env bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install applications
./brew.sh
./zsh.sh
./macos.sh

# Symlink dot-files
for file in .*; do
	[ -r "$file" ] && [ -f "$file" ] && ln -s "$(pwd {BASH_SOURCE[0]})/$file" ~/$file;
done


# TODO TMUX config iTerm2?
