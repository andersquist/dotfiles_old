#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

for tap in $(cat brew-taps)
do
  brew tap ${tap}
done

brew cask install $(< brew-cask-packages)

brew install $(< brew-packages)

# mas from Brewfile
brew bundle install

# Remove outdated versions from the cellar.
brew cleanup

# Accept Xcode license
sudo xcodebuild -license accept

brew link --force gettext
