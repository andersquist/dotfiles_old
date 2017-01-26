#!/usr/bin/env bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Passwordless sudo
echo "$(whoami)            ALL = (ALL) NOPASSWD: ALL" | sudo tee "/etc/sudoers.d/$(whoami)"
# Install applications
./brew.sh
./zsh.sh
./macos.sh axiom

# Symlink dot-files
for file in .*; do
	[ -r "$file" ] && [ -f "$file" ] && ln -fs "$(pwd {BASH_SOURCE[0]})/$file" ~/$file;
done

# Symlink .vim
ln -fs "$(pwd {BASH_SOURCE[0]})/.vim" ~/.vim;

# Post installation
echo "Load default color schema in iTerm2"
echo "Configure atom"

echo "Reboot :)"

Set: Entry, ":New Bookmarks:0:Initial Text", Does Not Exist
