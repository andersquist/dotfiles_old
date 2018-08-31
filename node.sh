#!/usr/bin/env bash

# nvm should have been installed by brew...

mkdir ~/.nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

nvm install 8.11.4
nvm use 8.11.4
nvm alias default 8.11.4

npm install -g npm
