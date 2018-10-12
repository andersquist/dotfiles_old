#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew tap caskroom/cask
brew tap caskroom/drivers
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap homebrew/core
brew tap homebrew/services
brew tap johanhaleby/kubetail
brew tap garethr/kubeval

brew install ack
brew install autoconf
brew install automake
brew install awscli
brew install bash
brew install bash-completion2
brew install bash-completion@2
brew install coreutils
brew install dark-mode
brew install findutils
brew install gdbm
brew install gettext
brew install git
brew install giter8
brew install glide
brew install gnu-sed
brew install go
brew install grep
brew install heroku
brew install httpie
brew install icu4c
brew install jq
brew install kops
brew install kubernetes-cli
brew install kubetail
brew install kubeval
brew install lastpass-cli
brew install libevent
brew install libidn
brew install lzo
brew install mas
brew install moreutils
brew install nvm
brew install oniguruma
brew install openssh
brew install openssl
brew install openssl@1.1
brew install openconnect
brew install pcre
brew install pkg-config
brew install python3
brew install pipenv
brew install readline
brew install reattach-to-user-namespace
brew install sbt
brew install scala@2.12
brew install screen
brew install selenium-server-standalone
brew install shellcheck
brew install socat
brew install ssh-copy-id
brew install tcpdump
brew install terraform
brew install the_silver_searcher
brew install tmux
brew install tree
brew install unrar
brew install vim
brew install watch
brew install wget
brew install xz

brew link --force gettext

brew cask install atom
brew cask install backblaze
brew cask install bankid
brew cask install docker
brew cask install dotnet-sdk
brew cask install dropbox
brew cask install font-source-code-pro
brew cask install google-chrome
brew cask install chromedriver
brew cask install iterm2-beta
brew cask install java
brew cask install java8
brew cask install minikube
brew cask install ngrok
brew cask install postman
brew cask install slack
brew cask install spotify
brew cask install vagrant
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install visualvm
brew cask install vlc
brew cask install postgres
brew cask install discord
brew cask install caffeine
brew cask install snagit
brew cask install microsoft-teams
brew cask install microsoft-office
brew cask install jetbrains-toolbox
brew cask install sonos

# mas from Brewfile
brew bundle install

# Accept Xcode license
sudo xcodebuild -license accept

# Remove outdated versions from the cellar.
brew cleanup

