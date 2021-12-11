#!/bin/bash

sudo pacman -S firewalld vlc \
  imwheel rclone \
  exa bat sassc intltool \
  --needed --noconfirm

yay -S google-chrome --needed --noconfirm
