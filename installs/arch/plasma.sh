#!/bin/bash

echo '*** Installing nVidia drivers ***'

sudo pacman -S plasma-meta \
  kde-system-meta \
  kde-utilities-meta \
  kde-accessibility-meta \
  --needed --noconfirm

sudo systemctl enable sddm

sudo pacman -S firewalld vlc \
  imwheel rclone firefox \
  exa bat sassc intltool \
  --needed --noconfirm

yay -S google-chrome 1password --needed --noconfirm
