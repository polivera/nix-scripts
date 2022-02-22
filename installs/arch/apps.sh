#!/bin/bash

sudo pacman -S firewalld \
  imwheel rclone firefox \
  exa bat sassc intltool \
  --needed --noconfirm

yay -S google-chrome 1password chrome-gnome-shell-git --needed --noconfirm
