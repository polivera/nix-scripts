#!/bin/bash

echo '*** Installing Xorg ***'

sudo pacman -S \
  intltool \
  xdg-user-dirs \
  xdg-user-dirs-gtk \
  xdg-utils \
  xf86-input-elographics \
  xf86-input-evdev \
  xf86-input-libinput \
  xf86-input-void \
  xf86-input-wacom \
  xfsprogs \
  xorg-mkfontscale \
  xorg-server \
  xorg-twm \
  xorg-xinit \
  xdg-user-dirs-gtk \
  --needed --noconfirm

