#!/usr/bin/env bash

echo '*** Installing Fonts ***'

sudo pacman -S noto-fonts-emoji ttf-joypixels ttf-roboto-mono --needed --noconfirm

yay -S ttf-twemoji-color siji-git ttf-unifont nerd-fonts-hack \
  nerd-fonts-fira-code nerd-fonts-jetbrains-mono nerd-fonts-sf-mono \
  nerd-fonts-meslo apple-fonts ttf-windows --needed --noconfirm

sudo fc-cache -f

