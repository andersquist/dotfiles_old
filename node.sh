#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

nvm install 8.11.4
nvm use 8.11.4
nvm alias default 8.11.4

npm install -g npm
