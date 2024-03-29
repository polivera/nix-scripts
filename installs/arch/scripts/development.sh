#!/bin/bash

echo '*** Development ***'

sudo pacman -S \
  python python-pip pyenv \
  go gdb nodejs jdk-openjdk \
  podman buildah \
  --noconfirm --needed

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Install sdkman
curl -s "https://get.sdkman.io" | bash

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install GO
# bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
# source ~/.gvm/scripts/gvm
# gvm install go1.4 -B
# gvm install go1.17.6
# gvm use go1.17.6

