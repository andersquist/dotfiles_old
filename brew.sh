#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep --with-default-names
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

brew install socat
brew install tcpdump

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install git
brew install git-lfs
brew install ssh-copy-id
brew install tree
brew install watch
brew install unrar
brew cask install virtualbox
brew cask install vagrant
brew cask install slack
brew cask install java
brew cask install iterm2-beta
brew cask install google-chrome
brew cask install atom
brew cask install flux
brew cask install dropbox
brew cask install bankid
brew cask install spotify
brew cask install shiftit
brew cask install beamer
brew cask install vlc
brew cask install sonos

brew install awscli
brew install sbt
brew cask install packer
brew cask install visualvm

# Remove outdated versions from the cellar.
brew cleanup
