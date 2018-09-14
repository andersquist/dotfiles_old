#!/usr/bin/env bash

# nvm should have been installed by brew...

# We don't care if it exists...
mkdir ~/.nvm &> /dev/null
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export NODE_VERSION=10.9.0

nvm install $NODE_VERSION
nvm use $NODE_VERSION
nvm alias default $NODE_VERSION

npm install -g npm
