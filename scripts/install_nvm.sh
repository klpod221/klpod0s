#!/bin/bash

# check if nvm is installed
if command -v nvm &> /dev/null; then
    echo "nvm is already installed..."
else
    # install nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
    # source nvm
    source ~/.zshrc
    # install node
    nvm install --lts
    # set default node version
    nvm alias default lts/*

    # install yarn pm2 and nodemon
    npm install -g yarn pm2 nodemon

    echo "nvm is installed..."
fi
