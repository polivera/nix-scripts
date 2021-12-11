#!/bin/bash

sudo pacman -S \
  python python-pip pyenv \
  jdk11-openjdk go gdb \
  --noconfirm --needed

# Allow use docker
sudo usermod -aG docker pablo

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Install stuff from AUR
yay -S postman-bin visual-studio-code-bin jetbrains-toolbox --needed --noconfirm
