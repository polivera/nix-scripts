#!/bin/bash
sudo apt install libfuse2

mkdir "$HOME/Downloads"
cd "$HOME/Downloads"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mkdir /opt/nvim
sudo mv nvim.appimage /opt/nvim
cd /usr/bin
sudo ln -s /opt/nvim/nvim.appimage -T /usr/bin/nvim
cd "$HOME"

mkdir -p "${XDG_DATA_HOME:-$HOME/.local/share}"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
