#!/bin/bash

sudo pacman -S firewalld vlc \
  imwheel rclone firefox \
  exa bat sassc intltool \
  --needed --noconfirm

yay -S google-chrome 1password --needed --noconfirm
