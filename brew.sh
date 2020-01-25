#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# So that bundle supports App Store 
brew install mas

# Install from Brewfile
brew bundle install

# Remove outdated versions from the cellar.
brew cleanup

# Accept Xcode license
sudo xcodebuild -license accept
