#!/bin/bash

# Install nvm
export NVM_DIR=$XDG_CONFIG_HOME/nvm
export NVM_SYMLINK_CURRENT=true

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts
